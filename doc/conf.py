import os
import subprocess

project = 'KiT-RT'
copyright = '2024, Steffen Schotthoefer, Pia Stammer, Jonas Kusch'
author = 'Jonas Kusch, Steffen Schotthöfer, Pia Stammer, Jannick Wolters, Tianbai Xiao'

version = '1.2.0'
release = '1.2.0'


extensions = [
    'breathe',
    'sphinx_rtd_theme'
]

# templates_path = ['_templates']
master_doc = 'index'

# Legacy API stub pages for classes that have been removed, renamed, or folded
# into aggregate pages. Excluding them keeps source-discovery builds from
# publishing stale API references.
exclude_patterns = [
    'optimizers/mloptimizer.rst',
    'problems/checkerboardpn.rst',
    'problems/checkerboardsn.rst',
    'problems/electronrt.rst',
    'problems/icru.rst',
    'problems/linesourcepn.rst',
    'problems/linesourcesn.rst',
    'problems/linesourcesnpseudo1d.rst',
    'problems/linesourcesnpseudo1dphysics.rst',
    'problems/musclebonelung.rst',
    'problems/phantom2d.rst',
    'problems/slabgeohg.rst',
    'problems/waterphantom.rst',
    'solvers/csdsnsolverfp.rst',
    'solvers/csdsnsolvernotrafo.rst',
    'solvers/csdsolvertrafofp.rst',
    'solvers/csdsolvertrafofp2d.rst',
    'solvers/csdsolvertrafofpsh2d.rst',
]

html_theme = 'sphinx_rtd_theme'
html_theme_options = {
    'logo_only': True,
    'display_version': True
}
html_logo = 'images/KiT-RT_logo_small.png'
html_static_path = ['_static']

def setup(app):
    app.add_css_file('theme_overrides.css')

conf_dir = os.path.abspath(os.path.dirname(__file__))
default_doxygen_xml = os.path.abspath(os.path.join(conf_dir, '..', 'build', 'docs', 'doxygen', 'xml'))
doxygen_xml = os.environ.get('KITRT_DOXYGEN_XML', default_doxygen_xml)

breathe_projects = {
    'KiT-RT': doxygen_xml,
}

breathe_default_project = 'KiT-RT'

read_the_docs_build = os.environ.get('READTHEDOCS', None) == 'True'
if read_the_docs_build:
    inputDir = os.path.abspath(os.path.join(conf_dir, '..'))
    outputDir = os.path.abspath(os.path.join(conf_dir, '..', 'build', 'docs', 'doxygen'))
    os.makedirs(outputDir, exist_ok=True)
    with open(os.path.join(conf_dir, 'Doxyfile.in'), 'rt') as fin:
        with open(os.path.join(conf_dir, 'Doxyfile'), 'wt') as fout:
            for line in fin:
                line = line.replace('GENERATE_HTML          = YES', 'GENERATE_HTML          = NO')
                line = line.replace('SEARCH_INCLUDES        = YES', 'SEARCH_INCLUDES        = NO')
                line = line.replace('CLASS_DIAGRAMS         = YES', 'CLASS_DIAGRAMS         = NO')
                line = line.replace('@DOXYGEN_OUTPUT_DIR@', outputDir)
                line = line.replace('@DOXYGEN_INPUT_DIR@', inputDir)
                fout.write(line)
    subprocess.call('doxygen', cwd=conf_dir, shell=True)
