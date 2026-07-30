import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularFlowRheologyModel where
  strainRate : Type u
  stressTensor : Type v
  inertialNumber : ℝ
  frictionLaw : ℝ → ℝ
  flowRuleEstablished : Prop
  stressStrainConsistent : Prop

structure GranularFlowRheologyEvidence (C : GranularFlowRheologyModel) where
  flowRuleEstablishedClosed : C.flowRuleEstablished
  stressStrainConsistentClosed : C.stressStrainConsistent

def GranularFlowRheologyClosed (C : GranularFlowRheologyModel) : Prop :=
  C.flowRuleEstablished ∧ C.stressStrainConsistent

theorem granular_flow_rheology_closed_from_evidence (C : GranularFlowRheologyModel) (E : GranularFlowRheologyEvidence C) : GranularFlowRheologyClosed C := by
  exact And.intro E.flowRuleEstablishedClosed E.stressStrainConsistentClosed

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse