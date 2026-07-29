import chemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumComposition : Prop
  reactionQuotient : Prop
  equilibriumConstantCalculated : Prop
  leChatelierPrincipleRespected : Prop

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  equilibriumCompositionClosed : E.equilibriumComposition
  reactionQuotientClosed : E.reactionQuotient
  equilibriumConstantCalculatedClosed : E.equilibriumConstantCalculated
  leChatelierPrincipleRespectedClosed : E.leChatelierPrincipleRespected

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.equilibriumComposition ∧ E.reactionQuotient ∧ E.equilibriumConstantCalculated ∧ E.leChatelierPrincipleRespected

theorem chemical_equilibrium_closed_from_evidence (E : ChemicalEquilibriumPackage) (Ev : ChemicalEquilibriumEvidence E) : ChemicalEquilibriumClosed E := by
  exact And.intro Ev.equilibriumCompositionClosed (And.intro Ev.reactionQuotientClosed (And.intro Ev.equilibriumConstantCalculatedClosed Ev.leChatelierPrincipleRespectedClosed))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse