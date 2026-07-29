import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure KoebeUniformizationPackage where
  domainType : Type u
  topology : TopologicalSpace domainType
  complexStructure : Prop
  simplyConnected : Prop
  conformalMapToUnitDisk : Prop
  coveringMapConstructible : Prop

structure KoebeUniformizationEvidence (K : KoebeUniformizationPackage) where
  simplyConnectedClosed : K.simplyConnected
  conformalMapToUnitDiskClosed : K.conformalMapToUnitDisk
  coveringMapConstructibleClosed : K.coveringMapConstructible

def KoebeUniformizationClosed (K : KoebeUniformizationPackage) : Prop :=
  K.simplyConnected ∧ K.conformalMapToUnitDisk ∧ K.coveringMapConstructible

theorem koebe_uniformization_closed_from_evidence (K : KoebeUniformizationPackage)
    (E : KoebeUniformizationEvidence K) : KoebeUniformizationClosed K := by
  exact And.intro E.simplyConnectedClosed
    (And.intro E.conformalMapToUnitDiskClosed E.coveringMapConstructibleClosed)

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse