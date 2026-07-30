import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

def ConstrainedGranularClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_granular_endgame (A : AdmissibleClass) : ConstrainedGranularClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse