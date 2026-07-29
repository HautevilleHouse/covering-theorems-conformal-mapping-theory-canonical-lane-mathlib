import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.KoebeUniformization

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure UniformizationTheoremPackage {K : KoebeUniformizationPackage} (U : KoebeUniformizationPackage) where
  targetSurface : Type u
  topology : TopologicalSpace targetSurface
  riemannSurfaceStructure : Prop
  simplyConnectedUniversalCover : Prop
  uniformizingMapToThreeModels : Prop
  coveringProjectionConstructed : Prop

structure UniformizationTheoremEvidence {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    (UT : UniformizationTheoremPackage U) where
  simplyConnectedUniversalCoverClosed : UT.simplyConnectedUniversalCover
  uniformizingMapToThreeModelsClosed : UT.uniformizingMapToThreeModels
  coveringProjectionConstructedClosed : UT.coveringProjectionConstructed

def UniformizationTheoremClosed {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    (UT : UniformizationTheoremPackage U) : Prop :=
  UT.simplyConnectedUniversalCover ∧ UT.uniformizingMapToThreeModels ∧ UT.coveringProjectionConstructed

theorem uniformization_theorem_closed_from_evidence {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    (UT : UniformizationTheoremPackage U) (E : UniformizationTheoremEvidence UT) :
    UniformizationTheoremClosed UT := by
  exact And.intro E.simplyConnectedUniversalCoverClosed
    (And.intro E.uniformizingMapToThreeModelsClosed E.coveringProjectionConstructedClosed)

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse