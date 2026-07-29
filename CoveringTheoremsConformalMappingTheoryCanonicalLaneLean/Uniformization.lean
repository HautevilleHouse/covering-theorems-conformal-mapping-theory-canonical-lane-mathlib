import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.ConformalMaps

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure UniformizationPackage (S : Type) [TopologicalSpace S] where
  simplyConnected : Prop
  biholomorphicToDisks : Prop
  universalCoverConformal : Prop

structure UniformizationEvidence (U : UniformizationPackage S) where
  simplyConnectedClosed : U.simplyConnected
  biholomorphicToDisksClosed : U.biholomorphicToDisks
  universalCoverConformalClosed : U.universalCoverConformal

def UniformizationClosed (U : UniformizationPackage S) : Prop :=
  U.simplyConnected ∧ U.biholomorphicToDisks ∧ U.universalCoverConformal

theorem uniformization_closed_from_evidence (U : UniformizationPackage S)
    (E : UniformizationEvidence U) : UniformizationClosed U := by
  exact And.intro E.simplyConnectedClosed
    (And.intro E.biholomorphicToDisksClosed E.universalCoverConformalClosed)

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse
