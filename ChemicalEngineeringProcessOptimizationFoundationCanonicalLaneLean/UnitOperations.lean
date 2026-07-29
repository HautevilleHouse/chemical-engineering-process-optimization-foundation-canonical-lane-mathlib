import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure UnitOperationsPackage where
  separationProcesses : Prop
  reactorDesign : Prop
  heatExchangeDesign : Prop
  massTransferEquipment : Prop
  processIntegration : Prop

structure UnitOperationsEvidence (U : UnitOperationsPackage) where
  separationProcessesClosed : U.separationProcesses
  reactorDesignClosed : U.reactorDesign
  heatExchangeDesignClosed : U.heatExchangeDesign
  massTransferEquipmentClosed : U.massTransferEquipment
  processIntegrationClosed : U.processIntegration

def UnitOperationsClosed (U : UnitOperationsPackage) : Prop :=
  U.separationProcesses ∧ U.reactorDesign ∧ U.heatExchangeDesign ∧
  U.massTransferEquipment ∧ U.processIntegration

theorem unit_operations_closed_from_evidence (U : UnitOperationsPackage)
    (E : UnitOperationsEvidence U) : UnitOperationsClosed U := by
  exact And.intro E.separationProcessesClosed
    (And.intro E.reactorDesignClosed
      (And.intro E.heatExchangeDesignClosed
        (And.intro E.massTransferEquipmentClosed E.processIntegrationClosed)))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse