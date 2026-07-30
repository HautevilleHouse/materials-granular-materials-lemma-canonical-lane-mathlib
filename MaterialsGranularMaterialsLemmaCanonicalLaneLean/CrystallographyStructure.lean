import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure BravaisLattice where
  points : Type u
  translationVectors : List (points → points)
  periodicity : Prop

structure CrystalStructure (L : BravaisLattice) where
  basis : L.points → Type v
  symmetryGroup : Prop
  atomicPositions : Prop

structure CrystallographyEvidence (L : BravaisLattice) (C : CrystalStructure L) where
  latticeClosed : L.periodicity
  symmetryClosed : C.symmetryGroup
  positionsClosed : C.atomicPositions

def CrystallographyClosed (L : BravaisLattice) (C : CrystalStructure L) : Prop :=
  L.periodicity ∧ C.symmetryGroup ∧ C.atomicPositions

theorem crystallography_closed_from_evidence (L : BravaisLattice) (C : CrystalStructure L) (E : CrystallographyEvidence L C) : CrystallographyClosed L C := by
  exact And.intro E.latticeClosed (And.intro E.symmetryClosed E.positionsClosed)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
