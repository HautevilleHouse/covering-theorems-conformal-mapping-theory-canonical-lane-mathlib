import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

def ConstrainedCoveringTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_covering_endgame (A : AdmissibleClass) :
    ConstrainedCoveringTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse
