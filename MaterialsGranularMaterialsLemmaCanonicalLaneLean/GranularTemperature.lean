import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularTemperaturePackage where
  fluctuationKineticEnergy : Type u
  granularTemperatureDefined : Prop
  energyDissipationRate : Prop
  conductionLaw : Prop
  boundaryConditionCollisional : Prop

structure GranularTemperatureEvidence (T : GranularTemperaturePackage) where
  granularTemperatureDefinedClosed : T.granularTemperatureDefined
  energyDissipationRateClosed : T.energyDissipationRate
  conductionLawClosed : T.conductionLaw
  boundaryConditionCollisionalClosed : T.boundaryConditionCollisional

def GranularTemperatureClosed (T : GranularTemperaturePackage) : Prop :=
  T.granularTemperatureDefined ∧ T.energyDissipationRate ∧ T.conductionLaw ∧ T.boundaryConditionCollisional

theorem granular_temperature_closed_from_evidence (T : GranularTemperaturePackage)
    (Ev : GranularTemperatureEvidence T) : GranularTemperatureClosed T := by
  exact And.intro Ev.granularTemperatureDefinedClosed
    (And.intro Ev.energyDissipationRateClosed
      (And.intro Ev.conductionLawClosed Ev.boundaryConditionCollisionalClosed))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse