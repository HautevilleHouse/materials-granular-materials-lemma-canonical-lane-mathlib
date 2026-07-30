import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeBasis : Type u
  unitCell : Type v
  bravaisLattice : Prop
  reciprocalLattice : Prop
  crystalSymmetryGroup : Prop
  bravaisLatticeDefined : bravaisLattice
  reciprocalLatticeDefined : reciprocalLattice
  crystalSymmetryGroupDefined : crystalSymmetryGroup

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClosed : C.bravaisLattice
  reciprocalLatticeClosed : C.reciprocalLattice
  crystalSymmetryGroupClosed : C.crystalSymmetryGroup

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLattice ∧ C.reciprocalLattice ∧ C.crystalSymmetryGroup

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClosed (And.intro E.reciprocalLatticeClosed E.crystalSymmetryGroupClosed)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse