import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure VectorBundlePackage where
  baseManifold : Type
  totalSpace : Type
  projection : Type
  typicalFiber : Type
  structureGroup : Type
  transitionFunctions : Prop
  localTrivializations : Prop
  smoothStructure : Prop
  connectionOnBundle : Prop
  curvatureOnBundle : Prop

structure VectorBundleEvidence (V : VectorBundlePackage) where
  transitionFunctionsClosed : V.transitionFunctions
  localTrivializationsClosed : V.localTrivializations
  smoothStructureClosed : V.smoothStructure
  connectionOnBundleClosed : V.connectionOnBundle
  curvatureOnBundleClosed : V.curvatureOnBundle

def VectorBundleClosed (V : VectorBundlePackage) : Prop :=
  V.transitionFunctions ∧ V.localTrivializations ∧ V.smoothStructure ∧ V.connectionOnBundle ∧ V.curvatureOnBundle

theorem vector_bundle_closed_from_evidence (V : VectorBundlePackage) (E : VectorBundleEvidence V) :
    VectorBundleClosed V := by
  exact And.intro E.transitionFunctionsClosed (And.intro E.localTrivializationsClosed (And.intro E.smoothStructureClosed (And.intro E.connectionOnBundleClosed E.curvatureOnBundleClosed)))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse