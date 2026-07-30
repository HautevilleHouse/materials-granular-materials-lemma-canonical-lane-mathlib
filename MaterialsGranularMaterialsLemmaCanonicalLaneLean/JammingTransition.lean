import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure JammingTransitionPackage where
  packingFractionThreshold : Prop
  coordinationNumber : Prop
  stressAnisotropy : Prop
  shearModulus : Prop

structure JammingTransitionEvidence (J : JammingTransitionPackage) where
  packingFractionThresholdClosed : J.packingFractionThreshold
  coordinationNumberClosed : J.coordinationNumber
  stressAnisotropyClosed : J.stressAnisotropy
  shearModulusClosed : J.shearModulus

def JammingTransitionClosed (J : JammingTransitionPackage) : Prop :=
  J.packingFractionThreshold ∧ J.coordinationNumber ∧ J.stressAnisotropy ∧ J.shearModulus

theorem jamming_transition_closed_from_evidence (J : JammingTransitionPackage) (E : JammingTransitionEvidence J) :
    JammingTransitionClosed J := by
  exact And.intro E.packingFractionThresholdClosed
    (And.intro E.coordinationNumberClosed
      (And.intro E.stressAnisotropyClosed E.shearModulusClosed))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse