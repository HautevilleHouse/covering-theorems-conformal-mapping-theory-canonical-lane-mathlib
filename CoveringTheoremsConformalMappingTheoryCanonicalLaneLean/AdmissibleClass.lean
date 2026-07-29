import CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : CoveringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CoveringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse