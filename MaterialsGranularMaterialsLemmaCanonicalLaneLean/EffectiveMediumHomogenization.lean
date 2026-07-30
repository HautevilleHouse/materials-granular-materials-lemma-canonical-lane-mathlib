import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure EffectiveMediumHomogenizationModel where
  microScaleStructure : Type u
  effectiveElasticModuli : Type v
  volumeFraction : ℝ
  inclusionShape : Type w
  homogenizationSchemeConvergent : Prop
  macroscopicElasticityConsistent : Prop

structure EffectiveMediumHomogenizationEvidence (C : EffectiveMediumHomogenizationModel) where
  homogenizationSchemeConvergentClosed : C.homogenizationSchemeConvergent
  macroscopicElasticityConsistentClosed : C.macroscopicElasticityConsistent

def EffectiveMediumHomogenizationClosed (C : EffectiveMediumHomogenizationModel) : Prop :=
  C.homogenizationSchemeConvergent ∧ C.macroscopicElasticityConsistent

theorem effective_medium_homogenization_closed_from_evidence (C : EffectiveMediumHomogenizationModel) (E : EffectiveMediumHomogenizationEvidence C) : EffectiveMediumHomogenizationClosed C := by
  exact And.intro E.homogenizationSchemeConvergentClosed E.macroscopicElasticityConsistentClosed

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse