#ifndef PROBLEMBASE_H
#define PROBLEMBASE_H

#include "common/typedef.hpp"
#include <map>

// Forward Declaration

class Config;
class Mesh;
class QuadratureBase;

class ProblemBase
{
  protected:
    Config* _settings;     /*!< @brief pointer to settings  */
    Mesh* _mesh;           /*!< @brief pointer to mesh  */
    QuadratureBase* _quad; /*!< @brief pointer to quadrature  */

    std::vector<double> _density;       /*!< @brief vector with patient densities */
    std::vector<double> _stoppingPower; /*!< @brief vector with stopping powers*/
    std::map<int, Vector> _ghostCells;  /*!< @brief Vector of ghost cells for boundary conditions */
    virtual void SetGhostCells();       /*!< @brief Sets vector of ghost cells for
                                           boundary conditions */
    VectorVector _dummyProbeMoments;
    std::vector<double> _dummyProbeValsGreenLine;
    ProblemBase() = delete;

    // Quantities of Interest
    double _curScalarOutflow;      /*!< @brief Outflow over whole boundary at current time step */
    double _totalScalarOutflow;    /*!< @brief Outflow over whole boundary integrated until current time step */
    double _curMaxOrdinateOutflow; /*!< @brief Maximum ordinate-wise ouftlow  over boundary over all time steps */
    double _mass;                  /*!< @brief Integrated radiation flux over the whole simulation (i.e. mass of the particles) */
    double _changeRateFlux;        /*!< @brief Integrated change of radiation flux over the whole simulation  */

  public:
    /**
     * @brief GetScatteringXS gives back vector (each energy) of vectors (each
     * grid cell) of scattering cross sections for materials defined by density
     * and energies in vector energy
     * @param energies is the energy the cross section is queried for
     */
    virtual VectorVector GetScatteringXS( const Vector& energies ) = 0;

    /**
     * @brief GetTotalXS gives back vector of vectors of total cross sections for
     *        materials defined by density and energies in vector energy
     * @param energies is the energy the cross section is queried for
     */
    virtual VectorVector GetTotalXS( const Vector& energies ) = 0;

    /**
     * @brief GetTotalXSE gives back vector of total cross sections for
     *        energies in vector energy
     */
    virtual Vector GetTotalXSE( const Vector& /*energies*/ ) { return Vector( 1 ); }

    /**
     * @brief GetScatteringXSE gives back vector (each energy) of scattering cross
     * sections for energies in vector energy
     * @param energies is the energy the cross section is queried for
     * @param angles are the queried angles
     */
    virtual std::vector<Matrix> GetScatteringXSE( const Vector& energies, const Matrix& angles ) {
        return std::vector<Matrix>( energies.size(), Matrix( angles.rows(), angles.columns() ) );
    }

    /**
     * @brief GetScatteringXSE gives back vector (each energy) of scattering cross
     * sections for energies in vector energy
     * @param energies is the energy the cross section is queried for
     * @param angles are the queried angles
     */
    virtual VectorVector GetScatteringXSE( const Vector& energies, const Vector& angles );

    /**
     * @brief GetExternalSource gives back vector of vectors of source terms for
     * each energy, cell and angle
     * @param energies is the energy the cross section is queried for
     */
    virtual std::vector<VectorVector> GetExternalSource( const Vector& energies ) = 0;

    /**
     * @brief GetStoppingPower gives back vector of vectors of stopping powers for
     *        materials defined by density and energies in vector energy
     * @param energies is vector with energies
     */
    virtual Vector GetStoppingPower( const Vector& energies );

    /**
     * @brief GetDensity gives back vector of densities for every spatial cell
     * @param cellMidPoints is vector with cell mid points
     */
    virtual std::vector<double> GetDensity( const VectorVector& cellMidPoints );

    /**
     * @brief Setup the initial condition for the flux psi
     */
    virtual VectorVector SetupIC() = 0;

    /**
     * @brief Returns the Value of the ghost cell with index idx_cell
     */
    virtual const Vector& GetGhostCellValue( int idx_cell, const Vector& cell_sol );

    /**
     * @brief Returns the pointer to ghostcell map
     */
    std::map<int, Vector>& GetGhostCells() { return _ghostCells; };

    /*! @brief Exact analytical solution for the Line Source Test Case. Returns 0
       for all other test cases.
         @return exact solution at x,y,t,scatteringXS
    */
    // Default is set to 0. ~> if no analytical solution is available.
    double virtual GetAnalyticalSolution( double /*x*/, double /*y*/, double /*t*/, double /*scatteringXS*/ ) { return 0.0; }

    /**
     * @brief Physics constructor
     * @param settings stores all needed user information
     * @param mesh for the test case
     */
    ProblemBase( Config* settings, Mesh* mesh, QuadratureBase* quad );
    virtual ~ProblemBase();

    /**
     * @brief Create constructor
     * @param settings stores all needed information
     * @param mesh for the test case
     * @return pointer to ProblemBase
     */
    static ProblemBase* Create( Config* settings, Mesh* mesh, QuadratureBase* quad );

    // ---- Helper Functions to compute quantities of interest ----
    // Getter
    // Test case agnostic
    virtual double GetMass() { return _mass; };
    virtual double GetChangeRateFlux() { return _changeRateFlux; };
    virtual double GetCurrentOutflow() { return _curScalarOutflow; };
    virtual double GetTotalOutflow() { return _totalScalarOutflow; };
    virtual double GetMaxOrdinatewiseOutflow() { return _curMaxOrdinateOutflow; };
    // Test case Specific
    // Lattice
    virtual double GetCurAbsorptionLattice() { return 0.0; };
    virtual double GetTotalAbsorptionLattice() { return 0.0; };
    virtual double GetMaxAbsorptionLattice() { return 0.0; };
    // Symmetric Hohlraum
    virtual double GetCurAbsorptionHohlraumCenter() { return 0.0; };
    virtual double GetCurAbsorptionHohlraumVertical() { return 0.0; };
    virtual double GetCurAbsorptionHohlraumHorizontal() { return 0.0; };
    virtual double GetTotalAbsorptionHohlraumCenter() { return 0.0; };
    virtual double GetTotalAbsorptionHohlraumVertical() { return 0.0; };
    virtual double GetTotalAbsorptionHohlraumHorizontal() { return 0.0; };
    virtual double GetVarAbsorptionHohlraumGreen() { return 0.0; };
    virtual const VectorVector& GetCurrentProbeMoment() const { return _dummyProbeMoments; };
    virtual const std::vector<double>& GetCurrentProbeValuesGreenLine() const { return _dummyProbeValsGreenLine; };
    virtual const std::vector<double>& GetCurrentVarProbeValuesGreenLine() const { return _dummyProbeValsGreenLine; };

    // Computer
    // Test case agnostic
    virtual void ComputeCurrentOutflow( const VectorVector& solution );                  /*!<   @brief Computes Problemspeagnostic Scalar QOI */
    virtual void ComputeMaxOrdinatewiseOutflow( const VectorVector& solution );          /*!<   @brief Computes Problemspeagnostic Scalar QOI */
    void ComputeTotalOutflow( double dT );                                               /*!<   @brief Computes Problemspeagnostic Scalar QOI */
    void ComputeMass( const Vector& scalarFlux );                                        /*!<   @brief Computes Problemspeagnostic Scalar QOI */
    void ComputeChangeRateFlux( const Vector& scalarFlux, const Vector& scalarFluxNew ); /*!<   @brief Computes Problemspeagnostic Scalar QOI */

    // Test case Specific
    // Lattice
    virtual void ComputeTotalAbsorptionLattice( double /* dT */ ){};                  /*!<   @brief Computes Problemspecific Scalar QOI */
    virtual void ComputeCurrentAbsorptionLattice( const Vector& /* scalarFlux */ ){}; /*!<   @brief Computes Problemspecific Scalar QOI */
    virtual void ComputeMaxAbsorptionLattice( const Vector& /* scalarFlux */ ){};     /*!<   @brief Computes Problemspecific Scalar QOI */

    // Symmetric Hohlraum
    virtual void ComputeCurrentAbsorptionHohlraum( const Vector& /* scalarFlux */ ){}; /*!<   @brief Computes Problemspecific Scalar QOI */
    virtual void ComputeTotalAbsorptionHohlraum( double /* dT  */ ){};                 /*!<   @brief Computes Problemspecific Scalar QOI */
    virtual void ComputeCurrentProbeMoment( const VectorVector& /* solution */ ){};    /*!<   @brief Computes Problemspecific Scalar QOI */
    virtual void ComputeVarAbsorptionGreen( const Vector& /* scalarFlux*/ ){};         /*!<   @brief Computes Problemspecific Scalar QOI */
    virtual void ComputeQOIsGreenProbingLine( const Vector& /* scalarFlux*/ ){};       /*!<   @brief Computes Problemspecific Scalar QOI */
};

#endif
