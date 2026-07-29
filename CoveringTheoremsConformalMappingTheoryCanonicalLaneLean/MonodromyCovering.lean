import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.UniformizationTheorem

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure MonodromyCoveringPackage {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    {UT : UniformizationTheoremPackage U} where
  coveringSpace : Type u
  topology : TopologicalSpace coveringSpace
  coveringMap : coveringSpace → UT.targetSurface
  monodromyAction : Prop
  deckTransformationGroup : Prop
  normalCoveringProperty : Prop

structure MonodromyCoveringEvidence {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    {UT : UniformizationTheoremPackage U} (M : MonodromyCoveringPackage) where
  monodromyActionClosed : M.monodromyAction
  deckTransformationGroupClosed : M.deckTransformationGroup
  normalCoveringPropertyClosed : M.normalCoveringProperty

def MonodromyCoveringClosed {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    {UT : UniformizationTheoremPackage U} (M : MonodromyCoveringPackage) : Prop :=
  M.monodromyAction ∧ M.deckTransformationGroup ∧ M.normalCoveringProperty

theorem monodromy_covering_closed_from_evidence {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    {UT : UniformizationTheoremPackage U} (M : MonodromyCoveringPackage)
    (E : MonodromyCoveringEvidence M) : MonodromyCoveringClosed M := by
  exact And.intro E.monodromyActionClosed
    (And.intro E.deckTransformationGroupClosed E.normalCoveringPropertyClosed)

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse