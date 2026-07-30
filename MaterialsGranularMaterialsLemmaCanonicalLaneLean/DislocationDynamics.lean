import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure DislocationLine where
  burgersVector : Type u
  lineDirection : Prop
  slipPlane : Prop

structure DislocationDynamics (D : DislocationLine) where
  velocityField : Prop
  pinningPoints : Prop
  interactionForce : Prop

structure DislocationEvidence (D : DislocationLine) (Dyn : DislocationDynamics D) where
  burgersClosed : D.slipPlane
  velocityClosed : Dyn.velocityField
  pinningClosed : Dyn.pinningPoints
  interactionClosed : Dyn.interactionForce

def DislocationClosed (D : DislocationLine) (Dyn : DislocationDynamics D) : Prop :=
  D.slipPlane ∧ Dyn.velocityField ∧ Dyn.pinningPoints ∧ Dyn.interactionForce

theorem dislocation_closed_from_evidence (D : DislocationLine) (Dyn : DislocationDynamics D) (E : DislocationEvidence D Dyn) : DislocationClosed D Dyn := by
  exact And.intro E.burgersClosed (And.intro E.velocityClosed (And.intro E.pinningClosed E.interactionClosed))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse
