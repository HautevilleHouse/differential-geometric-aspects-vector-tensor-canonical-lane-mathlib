import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsVectorTensorCanonicalLaneLean.VectorTensorBundle

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure TensorDecompositionPackage (B : VectorTensorBundle M) where
  typeDecomposition : Type u
  irrepDecomposition : Type v
  youngSymmetry : Type w
  decompositionClosed : Prop
  irrepCount : Nat
  decompositionClosedTerm : decompositionClosed

structure TensorDecompositionEvidence (D : TensorDecompositionPackage B) where
  decompositionClosedProof : D.decompositionClosed

def TensorDecompositionClosed (D : TensorDecompositionPackage B) : Prop :=
  D.decompositionClosed

theorem tensor_decomposition_closed_from_evidence (D : TensorDecompositionPackage B)
    (E : TensorDecompositionEvidence D) : TensorDecompositionClosed D :=
  E.decompositionClosedProof

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse