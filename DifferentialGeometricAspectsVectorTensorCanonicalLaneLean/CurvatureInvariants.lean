import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure RiemannCurvatureTensor where
  manifold : Type u
  tangentBundle : Type v
  riemannTensor : Type w
  ricciTensor : Type x
  scalarCurvature : Type y
  metricCompatible : Prop
  torsionFree : Prop
  riemannSymmetries : Prop
  ricciContraction : Prop
  scalarTrace : Prop

structure RiemannCurvatureEvidence (R : RiemannCurvatureTensor) where
  metricCompatibleClosed : R.metricCompatible
  torsionFreeClosed : R.torsionFree
  riemannSymmetriesClosed : R.riemannSymmetries
  ricciContractionClosed : R.ricciContraction
  scalarTraceClosed : R.scalarTrace

def RiemannCurvatureClosed (R : RiemannCurvatureTensor) : Prop :=
  R.metricCompatible ∧ R.torsionFree ∧ R.riemannSymmetries ∧ R.ricciContraction ∧ R.scalarTrace

theorem riemann_curvature_closed_from_evidence
    (R : RiemannCurvatureTensor) (E : RiemannCurvatureEvidence R) :
    RiemannCurvatureClosed R := by
  exact And.intro E.metricCompatibleClosed
    (And.intro E.torsionFreeClosed
      (And.intro E.riemannSymmetriesClosed
        (And.intro E.ricciContractionClosed E.scalarTraceClosed)))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse
