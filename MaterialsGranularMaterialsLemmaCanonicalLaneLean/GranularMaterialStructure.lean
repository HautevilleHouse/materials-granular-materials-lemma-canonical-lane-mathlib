import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularMaterialStructure where
  particleType : Type u
  particleSizeDistribution : Prop
  packingFraction : Prop
  contactForces : Prop
  frictionCoefficient : Prop

structure GranularMaterialEvidence (M : GranularMaterialStructure) where
  particleSizeDistributionClosed : M.particleSizeDistribution
  packingFractionClosed : M.packingFraction
  contactForcesClosed : M.contactForces
  frictionCoefficientClosed : M.frictionCoefficient

def GranularMaterialClosed (M : GranularMaterialStructure) : Prop :=
  M.particleSizeDistribution ∧ M.packingFraction ∧ M.contactForces ∧ M.frictionCoefficient

theorem granular_material_closed_from_evidence (M : GranularMaterialStructure) (E : GranularMaterialEvidence M) :
    GranularMaterialClosed M := by
  exact And.intro E.particleSizeDistributionClosed
    (And.intro E.packingFractionClosed
      (And.intro E.contactForcesClosed E.frictionCoefficientClosed))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse