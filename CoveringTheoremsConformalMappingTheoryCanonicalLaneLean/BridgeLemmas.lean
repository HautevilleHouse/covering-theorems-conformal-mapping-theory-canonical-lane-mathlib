import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.CoveringTheoremCore

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CoveringTheoremCoreClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse
