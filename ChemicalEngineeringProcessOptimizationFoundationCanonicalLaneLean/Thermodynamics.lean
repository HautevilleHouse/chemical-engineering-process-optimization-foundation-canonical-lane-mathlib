import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

structure ThermodynamicsPackage where
  enthalpyEntropyGibbs : Type u
  phaseEquilibriumModel : Prop
  thermodynamicConsistency : Prop
  idealGasLaw : Prop
  activityCoefficientModel : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  enthalpyEntropyGibbsClosed : T.enthalpyEntropyGibbs
  phaseEquilibriumModelClosed : T.phaseEquilibriumModel
  thermodynamicConsistencyClosed : T.thermodynamicConsistency
  idealGasLawClosed : T.idealGasLaw
  activityCoefficientModelClosed : T.activityCoefficientModel

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.enthalpyEntropyGibbs ∧ T.phaseEquilibriumModel ∧ T.thermodynamicConsistency ∧
  T.idealGasLaw ∧ T.activityCoefficientModel

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.enthalpyEntropyGibbsClosed
    (And.intro E.phaseEquilibriumModelClosed
      (And.intro E.thermodynamicConsistencyClosed
        (And.intro E.idealGasLawClosed E.activityCoefficientModelClosed)))

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse