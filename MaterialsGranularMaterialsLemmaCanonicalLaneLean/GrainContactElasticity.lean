import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GrainContactElasticityPackage where
  grainGeometry : Type u
  contactStiffness : Type v
  normalStiffnessParam : Prop
  tangentialStiffnessParam : Prop
  hertzMindlinBase : Prop

structure GrainContactElasticityEvidence (E : GrainContactElasticityPackage) where
  normalStiffnessParamClosed : E.normalStiffnessParam
  tangentialStiffnessParamClosed : E.tangentialStiffnessParam
  hertzMindlinBaseClosed : E.hertzMindlinBase

def GrainContactElasticityClosed (E : GrainContactElasticityPackage) : Prop :=
  E.normalStiffnessParam ∧ E.tangentialStiffnessParam ∧ E.hertzMindlinBase

theorem grain_contact_elasticity_closed_from_evidence (E : GrainContactElasticityPackage)
    (Ev : GrainContactElasticityEvidence E) : GrainContactElasticityClosed E := by
  exact And.intro Ev.normalStiffnessParamClosed
    (And.intro Ev.tangentialStiffnessParamClosed Ev.hertzMindlinBaseClosed)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse