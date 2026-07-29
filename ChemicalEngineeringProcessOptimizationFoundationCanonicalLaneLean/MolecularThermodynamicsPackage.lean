import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure MolecularThermodynamicsPackage where
  intermolecularForces : Prop
  equationOfState : Prop
  activityCoefficients : Prop
  phaseEquilibrium : Prop

structure MolecularThermodynamicsEvidence (M : MolecularThermodynamicsPackage) where
  intermolecularForcesClosed : M.intermolecularForces
  equationOfStateClosed : M.equationOfState
  activityCoefficientsClosed : M.activityCoefficients
  phaseEquilibriumClosed : M.phaseEquilibrium

def MolecularThermodynamicsClosed (M : MolecularThermodynamicsPackage) : Prop :=
  M.intermolecularForces ∧ M.equationOfState ∧ M.activityCoefficients ∧ M.phaseEquilibrium

theorem molecular_thermodynamics_closed_from_evidence (M : MolecularThermodynamicsPackage) (E : MolecularThermodynamicsEvidence M) : MolecularThermodynamicsClosed M := by
  exact And.intro E.intermolecularForcesClosed (And.intro E.equationOfStateClosed (And.intro E.activityCoefficientsClosed E.phaseEquilibriumClosed))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse