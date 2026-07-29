import chemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure CatalysisPackage where
  catalystActivity : Prop
  selectivity : Prop
  turnoverFrequency : Prop
  deactivationMechanism : Prop
  activeSiteIdentified : Prop

structure CatalysisEvidence (C : CatalysisPackage) where
  catalystActivityClosed : C.catalystActivity
  selectivityClosed : C.selectivity
  turnoverFrequencyClosed : C.turnoverFrequency
  deactivationMechanismClosed : C.deactivationMechanism
  activeSiteIdentifiedClosed : C.activeSiteIdentified

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.catalystActivity ∧ C.selectivity ∧ C.turnoverFrequency ∧ C.deactivationMechanism ∧ C.activeSiteIdentified

theorem catalysis_closed_from_evidence (C : CatalysisPackage) (E : CatalysisEvidence C) : CatalysisClosed C := by
  exact And.intro E.catalystActivityClosed (And.intro E.selectivityClosed (And.intro E.turnoverFrequencyClosed (And.intro E.deactivationMechanismClosed E.activeSiteIdentifiedClosed)))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse