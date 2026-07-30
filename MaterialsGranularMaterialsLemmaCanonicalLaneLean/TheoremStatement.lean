import HautevilleHouse.MaterialsGranularMaterialsLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure GranularMaterialsAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  granularStructure : Prop
  rheologyModel : Type v
  flowRule : Type w
  closure : Prop
  conclusion : closure

def GranularMaterialsWitnessClosed (O : GranularMaterialsAdmittedObject) : Prop :=
  O.closure

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse