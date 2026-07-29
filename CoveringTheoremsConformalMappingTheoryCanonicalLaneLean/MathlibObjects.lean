import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure RiemannSurface where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : Prop

structure CoveringAdmittedObject where
  surface : RiemannSurface
  simplyConnected : Prop
  hyperbolicMetric : Prop
  conclusion : simplyConnected ∧ hyperbolicMetric

structure CoveringEndgameState where
  object : CoveringAdmittedObject

def CoveringWitnessClosed (O : CoveringAdmittedObject) : Prop :=
  O.simplyConnected ∧ O.hyperbolicMetric

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse
