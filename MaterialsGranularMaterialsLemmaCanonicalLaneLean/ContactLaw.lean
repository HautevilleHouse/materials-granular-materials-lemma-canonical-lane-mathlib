import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure ContactLawPackage where
  normalForceModel : Prop
  tangentialForceModel : Prop
  cohesionTerm : Prop
  rollingResistance : Prop

structure ContactLawEvidence (L : ContactLawPackage) where
  normalForceModelClosed : L.normalForceModel
  tangentialForceModelClosed : L.tangentialForceModel
  cohesionTermClosed : L.cohesionTerm
  rollingResistanceClosed : L.rollingResistance

def ContactLawClosed (L : ContactLawPackage) : Prop :=
  L.normalForceModel ∧ L.tangentialForceModel ∧ L.cohesionTerm ∧ L.rollingResistance

theorem contact_law_closed_from_evidence (L : ContactLawPackage) (E : ContactLawEvidence L) :
    ContactLawClosed L := by
  exact And.intro E.normalForceModelClosed
    (And.intro E.tangentialForceModelClosed
      (And.intro E.cohesionTermClosed E.rollingResistanceClosed))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse