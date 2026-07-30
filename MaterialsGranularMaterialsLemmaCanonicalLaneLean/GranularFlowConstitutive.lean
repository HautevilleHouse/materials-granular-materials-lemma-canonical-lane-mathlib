import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularFlowConstitutivePackage where
  stressTensor : Type u
  strainRateTensor : Type v
  yieldCondition : Prop
  flowRule : Prop
  yieldConditionSatisfied : yieldCondition
  flowRuleSatisfied : flowRule

structure GranularFlowConstitutiveEvidence (G : GranularFlowConstitutivePackage) where
  yieldConditionClosed : G.yieldCondition
  flowRuleClosed : G.flowRule

def GranularFlowConstitutiveClosed (G : GranularFlowConstitutivePackage) : Prop :=
  G.yieldCondition ∧ G.flowRule

theorem granular_flow_constitutive_closed_from_evidence (G : GranularFlowConstitutivePackage) (E : GranularFlowConstitutiveEvidence G) : GranularFlowConstitutiveClosed G := by
  exact And.intro E.yieldConditionClosed E.flowRuleClosed

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse