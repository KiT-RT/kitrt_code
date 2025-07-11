#ifndef IO_H
#define IO_H

#include "common/globalconstants.hpp"
#include "common/typedef.hpp"
#include <string>
#include <vector>
// Forward Declarations
class Config;
class Mesh;

/*! @brief Function to export solver Volume output to VTK file.
 *  @param fileName Filename of output file
 *  @param outputFields numerical output of the solver. Dimensions: (OutputGroupSize, OutputFieldSize, NumberMeshCells)
 *  @param outputFieldNames names of the outputfields. Dimensions: (OutputGroupSize, OutputFieldSize)
 *  @param mesh Mesh with cells (the mesh used for the computation)
 */
void ExportVTK( const std::string fileName,
                const std::vector<std::vector<std::vector<double>>>& outputFields,
                const std::vector<std::vector<std::string>>& outputFieldNames,
                const Mesh* mesh );

Mesh* LoadSU2MeshFromFile( const Config* settings );

void LoadConnectivityFromFile( const std::string outputFile,
                               std::vector<std::vector<unsigned>>& cellNeighbors,
                               std::vector<std::vector<Vector>>& cellInterfaceMidPoints,
                               std::vector<std::vector<Vector>>& cellNormals,
                               std::vector<BOUNDARY_TYPE>& cellBoundaryTypes,
                               unsigned nCells,
                               unsigned nNodesPerCell,
                               unsigned nDim );

void WriteConnecitivityToFile( const std::string outputFile,
                               const std::vector<std::vector<unsigned>>& cellNeighbors,
                               const std::vector<std::vector<Vector>>& cellInterfaceMidPoints,
                               const std::vector<std::vector<Vector>>& cellNormals,
                               const std::vector<BOUNDARY_TYPE>& cellBoundaryTypes,
                               unsigned nCells,
                               unsigned nDim );

std::string ParseArguments( int argc, char* argv[] );

void PrintLogHeader( std::string inputFile );

void WriteRestartSolution( const std::string& baseOutputFile,
                           const std::vector<double>& solution,
                           const std::vector<double>& scalarFlux,
                           int rank,
                           int idx_iter,
                           double totalAbsorptionHohlraumCenter,
                           double totalAbsorptionHohlraumVertical,
                           double totalAbsorptionHohlraumHorizontal,
                           double totalAbsorption );

int LoadRestartSolution( const std::string& baseInputFile,
                         std::vector<double>& solution,
                         std::vector<double>& scalarFlux,
                         int rank,
                         unsigned long nCells,
                         double& totalAbsorptionHohlraumCenter,
                         double& totalAbsorptionHohlraumVertical,
                         double& totalAbsorptionHohlraumHorizontal,
                         double& totalAbsorption );

// Matrix createSU2MeshFromImage( std::string imageName, std::string SU2Filename ); Deprecated

#endif    // IO_H
