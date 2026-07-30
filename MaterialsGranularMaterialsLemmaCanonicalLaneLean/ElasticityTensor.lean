import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure ElasticityTensor where
  fourthOrderSymmetry : Prop
  positiveDefiniteness : Prop
  stressStrainRelation : Prop

structure ElasticityEvidence (E : ElasticityTensor) where
  symmetryClosed : E.fourthOrderSymmetry
  positivityClosed : E.positiveDefiniteness
  relationClosed : E.stressStrainRelation

def ElasticityClosed (E : ElasticityTensor) : Prop :=
  E.fourthOrderSymmetry ∧ E.positiveDefiniteness ∧ E.stressStrainRelation

theorem elasticity_closed_from_evidence (E : ElasticityTensor) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.symmetryClosed (And.intro Ev.positivityClosed Ev.relationClosed)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
