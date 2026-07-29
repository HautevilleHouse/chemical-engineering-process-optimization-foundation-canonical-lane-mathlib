import ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean.ReactionEngineering

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure ChemicalKineticsPackage {R : ReactionEngineeringPackage} where
  rateConstant : Prop
  activationEnergy : Prop
  reactionOrder : Prop
  arrheniusLaw : Prop
  massActionLaw : Prop

structure ChemicalKineticsEvidence {R : ReactionEngineeringPackage} (K : ChemicalKineticsPackage R) where
  rateConstantClosed : K.rateConstant
  activationEnergyClosed : K.activationEnergy
  reactionOrderClosed : K.reactionOrder
  arrheniusLawClosed : K.arrheniusLaw
  massActionLawClosed : K.massActionLaw

def ChemicalKineticsClosed {R : ReactionEngineeringPackage} (K : ChemicalKineticsPackage R) : Prop :=
  K.rateConstant ∧ K.activationEnergy ∧ K.reactionOrder ∧ K.arrheniusLaw ∧ K.massActionLaw

theorem chemical_kinetics_closed_from_evidence {R : ReactionEngineeringPackage} (K : ChemicalKineticsPackage R) (E : ChemicalKineticsEvidence K) :
    ChemicalKineticsClosed K := by
  exact And.intro E.rateConstantClosed (And.intro E.activationEnergyClosed (And.intro E.reactionOrderClosed (And.intro E.arrheniusLawClosed E.massActionLawClosed)))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse
