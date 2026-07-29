import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsVectorTensorCanonicalLaneLean.VectorTensorBundle

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure ConnectionCurvaturePackage (B : VectorTensorBundle M) where
  connection : Type u
  curvatureTensor : Type v
  torsionFree : Prop
  metricCompatibility : Prop
  curvatureIdentities : Prop
  connectionClosed : Prop
  curvatureIdentitiesTerm : curvatureIdentities
  connectionClosedTerm : connectionClosed

structure ConnectionCurvatureEvidence (C : ConnectionCurvaturePackage B) where
  connectionClosedProof : C.connectionClosed
  curvatureIdentitiesProof : C.curvatureIdentities

def ConnectionCurvatureClosed (C : ConnectionCurvaturePackage B) : Prop :=
  C.connectionClosed ∧ C.curvatureIdentities

theorem connection_curvature_closed_from_evidence (C : ConnectionCurvaturePackage B)
    (E : ConnectionCurvatureEvidence C) : ConnectionCurvatureClosed C :=
  And.intro E.connectionClosedProof E.curvatureIdentitiesProof

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse