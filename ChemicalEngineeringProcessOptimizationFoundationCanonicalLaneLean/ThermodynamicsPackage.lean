import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure ThermodynamicsPackage where
  energyBalance : Prop
  entropyProduction : Prop
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  energyBalanceClosed : T.energyBalance
  entropyProductionClosed : T.entropyProduction
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.energyBalance ∧ T.entropyProduction ∧ T.gibbsFreeEnergy ∧ T.equilibriumConstant

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.energyBalanceClosed (And.intro E.entropyProductionClosed (And.intro E.gibbsFreeEnergyClosed E.equilibriumConstantClosed))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse