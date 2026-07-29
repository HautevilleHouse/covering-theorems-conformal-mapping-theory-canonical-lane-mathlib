import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.ConformalMaps

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure KoebeDistortionPackage where
  univalentFunction : Prop
  distortionBounds : Prop
  coveringRadiusEstimate : Prop

structure KoebeDistortionEvidence (K : KoebeDistortionPackage) where
  univalentFunctionClosed : K.univalentFunction
  distortionBoundsClosed : K.distortionBounds
  coveringRadiusEstimateClosed : K.coveringRadiusEstimate

def KoebeDistortionClosed (K : KoebeDistortionPackage) : Prop :=
  K.univalentFunction ∧ K.distortionBounds ∧ K.coveringRadiusEstimate

theorem koebe_distortion_closed_from_evidence (K : KoebeDistortionPackage)
    (E : KoebeDistortionEvidence K) : KoebeDistortionClosed K := by
  exact And.intro E.univalentFunctionClosed
    (And.intro E.distortionBoundsClosed E.coveringRadiusEstimateClosed)

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse
