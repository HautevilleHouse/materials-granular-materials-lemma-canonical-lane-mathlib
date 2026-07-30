import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure PhaseRegion where
  label : String
  stableRange : Prop

structure PhaseDiagram where
  regions : List PhaseRegion
  boundaries : Prop
  coexistenceCurves : Prop

structure PhaseDiagramEvidence (D : PhaseDiagram) where
  regionsClosed : ∀ r ∈ D.regions, r.stableRange
  boundariesClosed : D.boundaries
  curvesClosed : D.coexistenceCurves

def PhaseDiagramClosed (D : PhaseDiagram) : Prop :=
  (∀ r ∈ D.regions, r.stableRange) ∧ D.boundaries ∧ D.coexistenceCurves

theorem phase_diagram_closed_from_evidence (D : PhaseDiagram) (E : PhaseDiagramEvidence D) : PhaseDiagramClosed D := by
  exact And.intro E.regionsClosed (And.intro E.boundariesClosed E.curvesClosed)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
