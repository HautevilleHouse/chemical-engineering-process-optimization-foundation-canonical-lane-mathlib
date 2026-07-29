import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure ReactionKineticsPackage where
  species : Type u
  rateConstants : Type v
  massActionLaw : Prop
  activationEnergy : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  massActionLawClosed : R.massActionLaw
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.massActionLaw ∧ R.activationEnergy ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.massActionLawClosed (And.intro E.activationEnergyClosed E.temperatureDependenceClosed)

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse