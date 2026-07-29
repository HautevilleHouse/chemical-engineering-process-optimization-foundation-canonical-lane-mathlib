import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure ProcessOptimizationPackage where
  objectiveFunction : Prop
  constraints : Prop
  optimizationAlgorithm : Prop
  convergenceCriterion : Prop

structure ProcessOptimizationEvidence (P : ProcessOptimizationPackage) where
  objectiveFunctionClosed : P.objectiveFunction
  constraintsClosed : P.constraints
  optimizationAlgorithmClosed : P.optimizationAlgorithm
  convergenceCriterionClosed : P.convergenceCriterion

def ProcessOptimizationClosed (P : ProcessOptimizationPackage) : Prop :=
  P.objectiveFunction ∧ P.constraints ∧ P.optimizationAlgorithm ∧ P.convergenceCriterion

theorem process_optimization_closed_from_evidence (P : ProcessOptimizationPackage) (E : ProcessOptimizationEvidence P) :
    ProcessOptimizationClosed P := by
  exact And.intro E.objectiveFunctionClosed (And.intro E.constraintsClosed (And.intro E.optimizationAlgorithmClosed E.convergenceCriterionClosed))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse