import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGranularMaterialsLemmaCanonicalLaneLean.ShockWaveAnalysis

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure StabilityAnalysisPackage {G : GranularMaterialsPackage}
    {C : ContinuumMechanicsPackage G} {K : KinematicWaveEquationPackage C}
    (S : ShockWaveAnalysisPackage K) where
  linearStability : Prop
  nonlinearStability : Prop
  criticalShearRate : Prop
  linearStabilityTerm : linearStability
  nonlinearStabilityTerm : nonlinearStability
  criticalShearRateTerm : criticalShearRate

structure StabilityAnalysisEvidence {G : GranularMaterialsPackage}
    {C : ContinuumMechanicsPackage G} {K : KinematicWaveEquationPackage C}
    {S : ShockWaveAnalysisPackage K} (T : StabilityAnalysisPackage S) where
  linearStabilityClosed : T.linearStability
  nonlinearStabilityClosed : T.nonlinearStability
  criticalShearRateClosed : T.criticalShearRate

def StabilityAnalysisClosed {G : GranularMaterialsPackage}
    {C : ContinuumMechanicsPackage G} {K : KinematicWaveEquationPackage C}
    {S : ShockWaveAnalysisPackage K} (T : StabilityAnalysisPackage S) : Prop :=
  T.linearStability ∧ T.nonlinearStability ∧ T.criticalShearRate

theorem stability_analysis_closed_from_evidence
    {G : GranularMaterialsPackage} {C : ContinuumMechanicsPackage G}
    {K : KinematicWaveEquationPackage C} {S : ShockWaveAnalysisPackage K}
    (T : StabilityAnalysisPackage S) (E : StabilityAnalysisEvidence T) :
    StabilityAnalysisClosed T := by
  exact And.intro E.linearStabilityClosed
    (And.intro E.nonlinearStabilityClosed E.criticalShearRateClosed)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
