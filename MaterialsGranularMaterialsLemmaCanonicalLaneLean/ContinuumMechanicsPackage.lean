import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGranularMaterialsLemmaCanonicalLaneLean.GranularMaterialsPackage

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure ContinuumMechanicsPackage (G : GranularMaterialsPackage) where
  momentumBalance : Prop
  energyConservation : Prop
  entropyInequality : Prop
  voellmyRheology : Prop
  momentumBalanceTerm : momentumBalance
  energyConservationTerm : energyConservation
  entropyInequalityTerm : entropyInequality
  voellmyRheologyTerm : voellmyRheology

structure ContinuumMechanicsEvidence {G : GranularMaterialsPackage}
    (C : ContinuumMechanicsPackage G) where
  momentumBalanceClosed : C.momentumBalance
  energyConservationClosed : C.energyConservation
  entropyInequalityClosed : C.entropyInequality
  voellmyRheologyClosed : C.voellmyRheology

def ContinuumMechanicsClosed {G : GranularMaterialsPackage}
    (C : ContinuumMechanicsPackage G) : Prop :=
  C.momentumBalance ∧ C.energyConservation ∧
  C.entropyInequality ∧ C.voellmyRheology

theorem continuum_mechanics_closed_from_evidence
    {G : GranularMaterialsPackage} (C : ContinuumMechanicsPackage G)
    (E : ContinuumMechanicsEvidence C) : ContinuumMechanicsClosed C := by
  exact And.intro E.momentumBalanceClosed
    (And.intro E.energyConservationClosed
      (And.intro E.entropyInequalityClosed E.voellmyRheologyClosed))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
