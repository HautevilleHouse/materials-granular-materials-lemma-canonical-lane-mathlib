import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure CrackGeometry where
  crackTip : Type u
  stressIntensity : Prop
  propagationCriterion : Prop

structure FractureEvidence (C : CrackGeometry) where
  stressIntensityClosed : C.stressIntensity
  propagationClosed : C.propagationCriterion

def FractureClosed (C : CrackGeometry) : Prop :=
  C.stressIntensity ∧ C.propagationCriterion

theorem fracture_closed_from_evidence (C : CrackGeometry) (E : FractureEvidence C) : FractureClosed C := by
  exact And.intro E.stressIntensityClosed E.propagationClosed

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
