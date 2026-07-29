import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CoveringTheoremsConformalMappingTheoryCanonicalLaneLean

structure ConformalMap (M N : Type) [TopologicalSpace M] [TopologicalSpace N] where
  toFun : M → N
  conformalAt : ∀ x, toFun x ≠ 0
  orientationPreserving : Bool

structure BeltramiField (U : Type) [TopologicalSpace U] where
  measurable : Prop
  essentialSupNormLtOne : Prop

structure QuasiconformalMap (M N : Type) [TopologicalSpace M] [TopologicalSpace N] where
  toFun : M → N
  dilatationBound : ℝ
  conformalStructurePreserved : Prop

end CoveringTheoremsConformalMappingTheoryCanonicalLaneLean
end HautevilleHouse
