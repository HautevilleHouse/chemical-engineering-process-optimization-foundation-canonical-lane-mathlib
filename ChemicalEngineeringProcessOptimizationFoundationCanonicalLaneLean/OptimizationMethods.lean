import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure OptimizationMethodsPackage where
  linearProgramming : Prop
  nonlinearProgramming : Prop
  mixedIntegerProgramming : Prop
  stochasticOptimization : Prop
  processScheduling : Prop

structure OptimizationMethodsEvidence (O : OptimizationMethodsPackage) where
  linearProgrammingClosed : O.linearProgramming
  nonlinearProgrammingClosed : O.nonlinearProgramming
  mixedIntegerProgrammingClosed : O.mixedIntegerProgramming
  stochasticOptimizationClosed : O.stochasticOptimization
  processSchedulingClosed : O.processScheduling

def OptimizationMethodsClosed (O : OptimizationMethodsPackage) : Prop :=
  O.linearProgramming ∧ O.nonlinearProgramming ∧ O.mixedIntegerProgramming ∧
  O.stochasticOptimization ∧ O.processScheduling

theorem optimization_methods_closed_from_evidence (O : OptimizationMethodsPackage)
    (E : OptimizationMethodsEvidence O) : OptimizationMethodsClosed O := by
  exact And.intro E.linearProgrammingClosed
    (And.intro E.nonlinearProgrammingClosed
      (And.intro E.mixedIntegerProgrammingClosed
        (And.intro E.stochasticOptimizationClosed E.processSchedulingClosed)))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse