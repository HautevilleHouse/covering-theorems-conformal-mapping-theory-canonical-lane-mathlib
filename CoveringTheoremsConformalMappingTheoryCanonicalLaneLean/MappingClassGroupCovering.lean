import HautevilleHouse.CoveringTheoremsConformalMappingTheoryCanonicalLaneLean.MonodromyCovering

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure MappingClassGroupCoveringPackage {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    {UT : UniformizationTheoremPackage U} {M : MonodromyCoveringPackage} where
  mappingClassGroup : Type u
  actionOnCovering : Prop
  classifyingSpace : Prop
  moduliSpaceParameterization : Prop
  teichmullerSpace : Prop

structure MappingClassGroupCoveringEvidence {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    {UT : UniformizationTheoremPackage U} {M : MonodromyCoveringPackage}
    (MC : MappingClassGroupCoveringPackage) where
  actionOnCoveringClosed : MC.actionOnCovering
  classifyingSpaceClosed : MC.classifyingSpace
  moduliSpaceParameterizationClosed : MC.moduliSpaceParameterization
  teichmullerSpaceClosed : MC.teichmullerSpace

def MappingClassGroupCoveringClosed {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    {UT : UniformizationTheoremPackage U} {M : MonodromyCoveringPackage}
    (MC : MappingClassGroupCoveringPackage) : Prop :=
  MC.actionOnCovering ∧ MC.classifyingSpace ∧ MC.moduliSpaceParameterization ∧ MC.teichmullerSpace

theorem mapping_class_group_covering_closed_from_evidence
    {K : KoebeUniformizationPackage} {U : KoebeUniformizationPackage}
    {UT : UniformizationTheoremPackage U} {M : MonodromyCoveringPackage}
    (MC : MappingClassGroupCoveringPackage) (E : MappingClassGroupCoveringEvidence MC) :
    MappingClassGroupCoveringClosed MC := by
  exact And.intro E.actionOnCoveringClosed
    (And.intro E.classifyingSpaceClosed
      (And.intro E.moduliSpaceParameterizationClosed E.teichmullerSpaceClosed))

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse