import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularJammingTransitionModel where
  packingFraction : ℝ
  coordinationNumber : ℝ
  jammingPoint : ℝ
  criticalScalingExponent : ℝ
  jammingTransitionCharacterized : Prop
  scalingLawValidated : Prop

structure GranularJammingTransitionEvidence (C : GranularJammingTransitionModel) where
  jammingTransitionCharacterizedClosed : C.jammingTransitionCharacterized
  scalingLawValidatedClosed : C.scalingLawValidated

def GranularJammingTransitionClosed (C : GranularJammingTransitionModel) : Prop :=
  C.jammingTransitionCharacterized ∧ C.scalingLawValidated

theorem granular_jamming_transition_closed_from_evidence (C : GranularJammingTransitionModel) (E : GranularJammingTransitionEvidence C) : GranularJammingTransitionClosed C := by
  exact And.intro E.jammingTransitionCharacterizedClosed E.scalingLawValidatedClosed

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse