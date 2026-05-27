#!/usr/bin/env python3
"""Validate the KiT-RT smoke-test output directory."""

from __future__ import annotations

import csv
import math
import sys
from pathlib import Path


def _fail(message: str) -> int:
    print(f"FAIL {message}", file=sys.stderr)
    return 1


def _has_nan_text(path: Path) -> bool:
    return "nan" in path.read_text(errors="ignore").lower()


def _last_numeric_mass(csv_path: Path) -> float | None:
    with csv_path.open(newline="") as handle:
        rows = list(csv.DictReader(handle))
    for row in reversed(rows):
        value = row.get("Mass")
        if value not in (None, ""):
            return float(value)
    return None


def main(argv: list[str] | None = None) -> int:
    argv = sys.argv[1:] if argv is None else argv
    if len(argv) != 1:
        return _fail("usage: python tools/check_smoke_output.py <output-dir>")

    output_dir = Path(argv[0])
    log_dir = output_dir / "logs"
    if not output_dir.is_dir():
        return _fail(f"missing output directory: {output_dir}")
    if not log_dir.is_dir():
        return _fail(f"missing log directory: {log_dir}")

    volume_files = sorted(output_dir.glob("*.vtk")) + sorted(output_dir.glob("*.vtu"))
    if not volume_files:
        return _fail(f"no VTK/VTU output files found in {output_dir}")

    csv_files = sorted(log_dir.glob("*.csv"))
    if not csv_files:
        return _fail(f"no CSV log files found in {log_dir}")

    checked_files = [*volume_files, *csv_files]
    nan_files = [path for path in checked_files if _has_nan_text(path)]
    if nan_files:
        return _fail("NaN marker found in " + ", ".join(str(path) for path in nan_files))

    mass = _last_numeric_mass(csv_files[-1])
    if mass is None or not math.isfinite(mass) or mass < 0.0:
        return _fail(f"invalid Mass in {csv_files[-1]}: {mass}")

    print(f"PASS output_files={len(volume_files)} csv_logs={len(csv_files)} mass={mass:.12g}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
