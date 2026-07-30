import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularTemperatureModel where
  particleVelocityFluctuation : Type u
  granularTemperature : ℝ
  energyEquipartition : Prop
  dissipationRate : ℝ
  temperatureEvolutionValid : Prop
  dissipationConsistent : Prop

structure GranularTemperatureEvidence (C : GranularTemperatureModel) where
  temperatureEvolutionValidClosed : C.temperatureEvolutionValid
  dissipationConsistentClosed : C.dissipationConsistent

def GranularTemperatureClosed (C : GranularTemperatureModel) : Prop :=
  C.temperatureEvolutionValid ∧ C.dissipationConsistent

theorem granular_temperature_closed_from_evidence (C : GranularTemperatureModel) (E : GranularTemperatureEvidence C) : GranularTemperatureClosed C := by
  exact And.intro E.temperatureEvolutionValidClosed E.dissipationConsistentClosed

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse