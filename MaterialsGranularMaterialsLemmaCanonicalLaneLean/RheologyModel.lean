import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure RheologyModelPackage where
  yieldCriterion : Prop
  flowRule : Prop
  dilatancyAngle : Prop
  viscosityRelation : Prop

structure RheologyModelEvidence (R : RheologyModelPackage) where
  yieldCriterionClosed : R.yieldCriterion
  flowRuleClosed : R.flowRule
  dilatancyAngleClosed : R.dilatancyAngle
  viscosityRelationClosed : R.viscosityRelation

def RheologyModelClosed (R : RheologyModelPackage) : Prop :=
  R.yieldCriterion ∧ R.flowRule ∧ R.dilatancyAngle ∧ R.viscosityRelation

theorem rheology_model_closed_from_evidence (R : RheologyModelPackage) (E : RheologyModelEvidence R) :
    RheologyModelClosed R := by
  exact And.intro E.yieldCriterionClosed
    (And.intro E.flowRuleClosed
      (And.intro E.dilatancyAngleClosed E.viscosityRelationClosed))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse