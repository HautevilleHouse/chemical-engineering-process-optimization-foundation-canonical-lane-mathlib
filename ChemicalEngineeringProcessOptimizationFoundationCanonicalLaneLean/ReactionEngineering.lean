import ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure ReactionEngineeringPackage where
  reactorDesign : Prop
  massTransfer : Prop
  heatTransfer : Prop
  mixingModel : Prop
  scaleUpCriteria : Prop

structure ReactionEngineeringEvidence (R : ReactionEngineeringPackage) where
  reactorDesignClosed : R.reactorDesign
  massTransferClosed : R.massTransfer
  heatTransferClosed : R.heatTransfer
  mixingModelClosed : R.mixingModel
  scaleUpCriteriaClosed : R.scaleUpCriteria

def ReactionEngineeringClosed (R : ReactionEngineeringPackage) : Prop :=
  R.reactorDesign ∧ R.massTransfer ∧ R.heatTransfer ∧ R.mixingModel ∧ R.scaleUpCriteria

theorem reaction_engineering_closed_from_evidence (R : ReactionEngineeringPackage) (E : ReactionEngineeringEvidence R) :
    ReactionEngineeringClosed R := by
  exact And.intro E.reactorDesignClosed (And.intro E.massTransferClosed (And.intro E.heatTransferClosed (And.intro E.mixingModelClosed E.scaleUpCriteriaClosed)))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse
