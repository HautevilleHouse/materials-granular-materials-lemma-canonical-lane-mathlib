import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularFlowContinuumPackage where
  partialDifferentialEquation : Type u
  stressStrainRelation : Type v
  bulkViscosityModel : Prop
  dilatancyAngleDefined : Prop
  criticalStateLine : Prop

structure GranularFlowContinuumEvidence (F : GranularFlowContinuumPackage) where
  bulkViscosityModelClosed : F.bulkViscosityModel
  dilatancyAngleDefinedClosed : F.dilatancyAngleDefined
  criticalStateLineClosed : F.criticalStateLine

def GranularFlowContinuumClosed (F : GranularFlowContinuumPackage) : Prop :=
  F.bulkViscosityModel ∧ F.dilatancyAngleDefined ∧ F.criticalStateLine

theorem granular_flow_continuum_closed_from_evidence (F : GranularFlowContinuumPackage)
    (Ev : GranularFlowContinuumEvidence F) : GranularFlowContinuumClosed F := by
  exact And.intro Ev.bulkViscosityModelClosed
    (And.intro Ev.dilatancyAngleDefinedClosed Ev.criticalStateLineClosed)

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse