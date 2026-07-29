import chemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure ProcessOptimizationPackage where
  objectiveFunction : Prop
  constraintsSatisfied : Prop
  optimumFound : Prop
  processFeasibility : Prop

structure ProcessOptimizationEvidence (P : ProcessOptimizationPackage) where
  objectiveFunctionClosed : P.objectiveFunction
  constraintsSatisfiedClosed : P.constraintsSatisfied
  optimumFoundClosed : P.optimumFound
  processFeasibilityClosed : P.processFeasibility

def ProcessOptimizationClosed (P : ProcessOptimizationPackage) : Prop :=
  P.objectiveFunction ∧ P.constraintsSatisfied ∧ P.optimumFound ∧ P.processFeasibility

theorem process_optimization_closed_from_evidence (P : ProcessOptimizationPackage) (E : ProcessOptimizationEvidence P) : ProcessOptimizationClosed P := by
  exact And.intro E.objectiveFunctionClosed (And.intro E.constraintsSatisfiedClosed (And.intro E.optimumFoundClosed E.processFeasibilityClosed))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse