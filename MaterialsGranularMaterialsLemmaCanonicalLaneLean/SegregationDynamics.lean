import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure SegregationDynamicsPackage where
  sizeDrivenSegregation : Prop
  densityDrivenSegregation : Prop
  percolationRate : Prop
  mixingOrderParameter : Prop

structure SegregationDynamicsEvidence (S : SegregationDynamicsPackage) where
  sizeDrivenSegregationClosed : S.sizeDrivenSegregation
  densityDrivenSegregationClosed : S.densityDrivenSegregation
  percolationRateClosed : S.percolationRate
  mixingOrderParameterClosed : S.mixingOrderParameter

def SegregationDynamicsClosed (S : SegregationDynamicsPackage) : Prop :=
  S.sizeDrivenSegregation ∧ S.densityDrivenSegregation ∧ S.percolationRate ∧ S.mixingOrderParameter

theorem segregation_dynamics_closed_from_evidence (S : SegregationDynamicsPackage) (E : SegregationDynamicsEvidence S) :
    SegregationDynamicsClosed S := by
  exact And.intro E.sizeDrivenSegregationClosed
    (And.intro E.densityDrivenSegregationClosed
      (And.intro E.percolationRateClosed E.mixingOrderParameterClosed))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse