import ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean.ChemicalKineticsPackage

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure ThermodynamicsOptimizationPackage {R : ReactionEngineeringPackage} {K : ChemicalKineticsPackage R} where
  gibbsFreeEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  chemicalPotential : Prop
  equilibriumConstant : Prop
  phaseEquilibrium : Prop

structure ThermodynamicsOptimizationEvidence {R : ReactionEngineeringPackage} {K : ChemicalKineticsPackage R} (T : ThermodynamicsOptimizationPackage R K) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  chemicalPotentialClosed : T.chemicalPotential
  equilibriumConstantClosed : T.equilibriumConstant
  phaseEquilibriumClosed : T.phaseEquilibrium

def ThermodynamicsOptimizationClosed {R : ReactionEngineeringPackage} {K : ChemicalKineticsPackage R} (T : ThermodynamicsOptimizationPackage R K) : Prop :=
  T.gibbsFreeEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.chemicalPotential ∧ T.equilibriumConstant ∧ T.phaseEquilibrium

theorem thermodynamics_optimization_closed_from_evidence {R : ReactionEngineeringPackage} {K : ChemicalKineticsPackage R} (T : ThermodynamicsOptimizationPackage R K) (E : ThermodynamicsOptimizationEvidence T) :
    ThermodynamicsOptimizationClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed (And.intro E.enthalpyClosed (And.intro E.entropyClosed (And.intro E.chemicalPotentialClosed (And.intro E.equilibriumConstantClosed E.phaseEquilibriumClosed))))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse
