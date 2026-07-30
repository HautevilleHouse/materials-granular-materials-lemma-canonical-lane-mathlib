import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularMaterialsPackage where
  particleAssembly : Type u
  densityDistribution : Type v
  contactForces : Type w
  strainField : Type x
  stressField : Type y
  shearStrength : Type z
  packingFraction : Prop
  sizeDistribution : Prop
  constitutiveRelation : Prop
  shearStrengthClosed : Prop
  packingFractionTerm : packingFraction
  sizeDistributionTerm : sizeDistribution
  constitutiveRelationTerm : constitutiveRelation
  shearStrengthClosedTerm : shearStrengthClosed

structure GranularMaterialsEvidence (G : GranularMaterialsPackage) where
  packingFractionClosed : G.packingFraction
  sizeDistributionClosed : G.sizeDistribution
  constitutiveRelationClosed : G.constitutiveRelation
  shearStrengthClosedClosed : G.shearStrengthClosed

def GranularMaterialsClosed (G : GranularMaterialsPackage) : Prop :=
  G.packingFraction ∧ G.sizeDistribution ∧
  G.constitutiveRelation ∧ G.shearStrengthClosed

theorem granular_materials_closed_from_evidence
    (G : GranularMaterialsPackage) (E : GranularMaterialsEvidence G) :
    GranularMaterialsClosed G := by
  exact And.intro E.packingFractionClosed
    (And.intro E.sizeDistributionClosed
      (And.intro E.constitutiveRelationClosed
        E.shearStrengthClosedClosed))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
