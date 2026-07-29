import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.Uniformization
import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.KoebeDistortion

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure CoveringTheoremCorePackage where
  surface : Type
  topology : TopologicalSpace surface
  hyperbolicMetric : Prop
  coveringMapExists : Prop
  fundamentalGroupExcluded : Prop

structure CoveringTheoremCoreEvidence (C : CoveringTheoremCorePackage) where
  hyperbolicMetricClosed : C.hyperbolicMetric
  coveringMapExistsClosed : C.coveringMapExists
  fundamentalGroupExcludedClosed : C.fundamentalGroupExcluded

def CoveringTheoremCoreClosed (C : CoveringTheoremCorePackage) : Prop :=
  C.hyperbolicMetric ∧ C.coveringMapExists ∧ C.fundamentalGroupExcluded

theorem covering_theorem_core_closed_from_evidence (C : CoveringTheoremCorePackage)
    (E : CoveringTheoremCoreEvidence C) : CoveringTheoremCoreClosed C := by
  exact And.intro E.hyperbolicMetricClosed
    (And.intro E.coveringMapExistsClosed E.fundamentalGroupExcludedClosed)

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse
