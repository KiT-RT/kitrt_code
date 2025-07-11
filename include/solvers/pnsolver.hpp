#ifndef PNSOLVER_H
#define PNSOLVER_H

#include "solvers/solverbase.hpp"

class PNSolver : public SolverBase
{
  public:
    /*! @brief PNSolver constructor
     *  @param settings stores all needed information
     */
    PNSolver( Config* settings );

    /*! @brief PNSolver destructor */
    virtual ~PNSolver() {}

  protected:
    unsigned _nSystem;         /*!< @brief total number of equations in the system */
    unsigned _polyDegreeBasis; /*!< @brief maximal degree of the spherical harmonics basis*/

    // System Matrix for x, y and z flux
    //    ==> not needed after computation of A+ and A- ==> maybe safe only temporarly and remove as member?
    SymMatrix _Ax; /*!< @brief  Flux Jacbioan in x direction */
    SymMatrix _Ay; /*!< @brief  Flux Jacbioan in x direction */
    SymMatrix _Az; /*!< @brief  Flux Jacbioan in x direction */

    // Upwinding Matrices
    Matrix _AxPlus;  /*!< @brief Flux Jacbioan in x direction, positive part */
    Matrix _AxMinus; /*!< @brief Flux Jacbioan in x direction, negative part */
    Matrix _AxAbs;   /*!< @brief Flux Jacbioan in x direction, absolute part */
    Matrix _AyPlus;  /*!< @brief Flux Jacbioan in y direction, positive part */
    Matrix _AyMinus; /*!< @brief Flux Jacbioan in y direction, negative part */
    Matrix _AyAbs;   /*!< @brief Flux Jacbioan in y direction, absolute part */
    Matrix _AzPlus;  /*!< @brief Flux Jacbioan in z direction, positive part */
    Matrix _AzMinus; /*!< @brief Flux Jacbioan in z direction, negative part */
    Matrix _AzAbs;   /*!< @brief Flux Jacbioan in z direction, absolute part */

    Vector _scatterMatDiag; /*!< @brief diagonal of the scattering matrix (its a diagonal matrix by construction). Contains eigenvalues of the
                               scattering kernel.  */

    // ---- Member functions ----

    // IO
    void PrepareVolumeOutput() override;
    void WriteVolumeOutput( unsigned idx_iter ) override;

    // Solver
    void FVMUpdate( unsigned idx_iter ) override;
    void FluxUpdate() override;
    void IterPreprocessing( unsigned idx_iter ) override;

    // Helper
    void ComputeScalarFlux() override;

    // Initialization of the Solver
    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double AParam( int l, int k ) const;
    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double BParam( int l, int k ) const;
    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double CParam( int l, int k ) const;
    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double DParam( int l, int k ) const;
    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double EParam( int l, int k ) const;
    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double FParam( int l, int k ) const;

    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double CTilde( int l, int k ) const;
    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double DTilde( int l, int k ) const;
    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double ETilde( int l, int k ) const;
    /*! @brief parameter functions for setting up system matrix
     *  @param l degree , it must hold: 0 <= l <=_nq
     *  @param k order , it must hold: -l <=k <= l
     */
    double FTilde( int l, int k ) const;

    /*! @brief mathematical + index functions. Helper functions for setting up system matrix.
     *  @param k: arbitrary integer
     */
    int Sgn( int k ) const;
    /*! @brief mathematical + index functions. Helper functions for setting up system matrix.
     *  @param k arbitrary integer
     */
    int kPlus( int k ) const;
    /*! @brief mathematical + index functions. Helper functions for setting up system matrix.
     *  @param k arbitrary integer
     */
    int kMinus( int k ) const;

    /*! @brief  computes the global index of the moment corresponding to basis function (l,k)
     *  @param  l degree l, it must hold: 0 <= l <=_nq
     *  @param  k order k, it must hold: -l <=k <= l
     *  @returns  global index
     */
    int GlobalIndex( int l, int k ) const;

    /*! @brief  Checks, if index invariant for global index holds
     *  @returns  True, if invariant holds, else false
     */
    bool CheckIndex( int l, int k ) const;

    /*! @brief Function for computing and setting up system matrices */
    void ComputeSystemMatrices();
    /*! @brief Function for computing and setting up flux matrices for upwinding */
    void ComputeFluxComponents();
    /*! @brief  Function for computing and setting up EV matrix for scattering kernel */
    void ComputeScatterMatrix();
    /*! @brief  Computes Legedre polinomial of oder l at point x */
    double LegendrePoly( double x, int l );

    /*! @brief Sets Entries of FluxMatrices to zero, if they are below double precision,
     *          to prevent floating point inaccuracies later in the solver    */
    void CleanFluxMatrices();

    /*! @brief  Flux update version for Pseudo1D */
    void FluxUpdatePseudo1D();
    /*! @brief  Flux update version for Pseudo2D  */
    void FluxUpdatePseudo2D();
};

#endif    // PNSOLVER_H
