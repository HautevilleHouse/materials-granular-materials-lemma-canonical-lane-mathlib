import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGranularMaterialsLemmaCanonicalLaneLean.KinematicWaveEquation

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure ShockWaveAnalysisPackage {G : GranularMaterialsPackage}
    {C : ContinuumMechanicsPackage G} (K : KinematicWaveEquationPackage C) where
  boreFormation : Prop
  shockSpeed : Prop
  jumpConditions : Prop
  boreFormationTerm : boreFormation
  shockSpeedTerm : shockSpeed
  jumpConditionsTerm : jumpConditions

structure ShockWaveAnalysisEvidence {G : GranularMaterialsPackage}
    {C : ContinuumMechanicsPackage G} {K : KinematicWaveEquationPackage C}
    (S : ShockWaveAnalysisPackage K) where
  boreFormationClosed : S.boreFormation
  shockSpeedClosed : S.shockSpeed
  jumpConditionsClosed : S.jumpConditions

def ShockWaveAnalysisClosed {G : GranularMaterialsPackage}
    {C : ContinuumMechanicsPackage G} {K : KinematicWaveEquationPackage C}
    (S : ShockWaveAnalysisPackage K) : Prop :=
  S.boreFormation ∧ S.shockSpeed ∧ S.jumpConditions

theorem shock_wave_analysis_closed_from_evidence
    {G : GranularMaterialsPackage} {C : ContinuumMechanicsPackage G}
    {K : KinematicWaveEquationPackage C} (S : ShockWaveAnalysisPackage K)
    (E : ShockWaveAnalysisEvidence S) : ShockWaveAnalysisClosed S := by
  exact And.intro E.boreFormationClosed
    (And.intro E.shockSpeedClosed E.jumpConditionsClosed)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
