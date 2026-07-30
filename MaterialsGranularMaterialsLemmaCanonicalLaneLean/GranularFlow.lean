import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularMaterial where
  particleSizeDistribution : Prop
  frictionCoefficient : Prop
  cohesion : Prop

structure FlowRegime where
  denseFlow : Prop
  diluteFlow : Prop
  transitionCriteria : Prop

structure GranularFlowEvidence (M : GranularMaterial) (F : FlowRegime) where
  sizeClosed : M.particleSizeDistribution
  frictionClosed : M.frictionCoefficient
  cohesionClosed : M.cohesion
  denseClosed : F.denseFlow
  diluteClosed : F.diluteFlow
  transitionClosed : F.transitionCriteria

def GranularFlowClosed (M : GranularMaterial) (F : FlowRegime) : Prop :=
  M.particleSizeDistribution ∧ M.frictionCoefficient ∧ M.cohesion ∧
  F.denseFlow ∧ F.diluteFlow ∧ F.transitionCriteria

theorem granular_flow_closed_from_evidence (M : GranularMaterial) (F : FlowRegime) (E : GranularFlowEvidence M F) : GranularFlowClosed M F := by
  exact And.intro E.sizeClosed (And.intro E.frictionClosed (And.intro E.cohesionClosed (And.intro E.denseClosed (And.intro E.diluteClosed E.transitionClosed))))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
