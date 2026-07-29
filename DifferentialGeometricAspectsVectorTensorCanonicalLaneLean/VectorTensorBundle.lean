import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure VectorTensorBundle (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  vectorBundle : Type v
  tensorRank : Nat
  fiberDimension : Nat
  smoothSections : Type w
  covariantDerivative : Type x
  bundleOperationsClosed : Prop
  bundleOperationsClosedTerm : bundleOperationsClosed

structure VectorTensorBundleEvidence (B : VectorTensorBundle M) where
  bundleOperationsClosedProof : B.bundleOperationsClosed

def VectorTensorBundleClosed (B : VectorTensorBundle M) : Prop :=
  B.bundleOperationsClosed

theorem vector_tensor_bundle_closed_from_evidence (B : VectorTensorBundle M)
    (E : VectorTensorBundleEvidence B) : VectorTensorBundleClosed B :=
  E.bundleOperationsClosedProof

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse