import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundary : Type u
  gibbsFreeEnergy : Type v
  phaseStability : Prop
  leverRule : Prop
  phaseStabilityHolds : phaseStability
  leverRuleHolds : leverRule

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseStabilityClosed : P.phaseStability
  leverRuleClosed : P.leverRule

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseStability ∧ P.leverRule

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseStabilityClosed E.leverRuleClosed

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse