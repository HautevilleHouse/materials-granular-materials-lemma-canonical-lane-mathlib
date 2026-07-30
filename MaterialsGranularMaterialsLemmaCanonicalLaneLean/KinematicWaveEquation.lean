import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsGranularMaterialsLemmaCanonicalLaneLean.ContinuumMechanicsPackage

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure KinematicWaveEquationPackage {G : GranularMaterialsPackage}
    (C : ContinuumMechanicsPackage G) where
  depthAveragedFlow : Prop
  waveVelocity : Prop
  erosionDeposition : Prop
  depthAveragedFlowTerm : depthAveragedFlow
  waveVelocityTerm : waveVelocity
  erosionDepositionTerm : erosionDeposition

structure KinematicWaveEquationEvidence {G : GranularMaterialsPackage}
    {C : ContinuumMechanicsPackage G} (K : KinematicWaveEquationPackage C) where
  depthAveragedFlowClosed : K.depthAveragedFlow
  waveVelocityClosed : K.waveVelocity
  erosionDepositionClosed : K.erosionDeposition

def KinematicWaveEquationClosed {G : GranularMaterialsPackage}
    {C : ContinuumMechanicsPackage G} (K : KinematicWaveEquationPackage C) : Prop :=
  K.depthAveragedFlow ∧ K.waveVelocity ∧ K.erosionDeposition

theorem kinematic_wave_equation_closed_from_evidence
    {G : GranularMaterialsPackage} {C : ContinuumMechanicsPackage G}
    (K : KinematicWaveEquationPackage C) (E : KinematicWaveEquationEvidence K) :
    KinematicWaveEquationClosed K := by
  exact And.intro E.depthAveragedFlowClosed
    (And.intro E.waveVelocityClosed E.erosionDepositionClosed)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
