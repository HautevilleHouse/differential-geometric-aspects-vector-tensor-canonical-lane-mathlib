import DifferentialGeometricAspectsVectorTensorCanonicalLaneLean.MathlibObjects

/-!
# Connection and Curvature Tensor Package
-/

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure ConnectionCurvatureTensorPackage where
  connection : Type u
  curvature : Type v
  torsion : Type w
  smoothConnection : Prop
  metricCompatible : Prop
  torsionFree : Prop
  riemannCurvatureTensor : Prop
  ricciCurvatureTensor : Prop
  scalarCurvature : Prop
  firstBianchiIdentity : Prop
  secondBianchiIdentity : Prop

structure ConnectionCurvatureTensorEvidence (C : ConnectionCurvatureTensorPackage) where
  smoothConnectionClosed : C.smoothConnection
  metricCompatibleClosed : C.metricCompatible
  torsionFreeClosed : C.torsionFree
  riemannCurvatureTensorClosed : C.riemannCurvatureTensor
  ricciCurvatureTensorClosed : C.ricciCurvatureTensor
  scalarCurvatureClosed : C.scalarCurvature
  firstBianchiIdentityClosed : C.firstBianchiIdentity
  secondBianchiIdentityClosed : C.secondBianchiIdentity

def ConnectionCurvatureTensorClosed (C : ConnectionCurvatureTensorPackage) : Prop :=
  C.smoothConnection ∧ C.metricCompatible ∧ C.torsionFree ∧
  C.riemannCurvatureTensor ∧ C.ricciCurvatureTensor ∧ C.scalarCurvature ∧
  C.firstBianchiIdentity ∧ C.secondBianchiIdentity

theorem connection_curvature_tensor_closed_from_evidence
    (C : ConnectionCurvatureTensorPackage) (E : ConnectionCurvatureTensorEvidence C) :
    ConnectionCurvatureTensorClosed C := by
  exact And.intro E.smoothConnectionClosed
    (And.intro E.metricCompatibleClosed
      (And.intro E.torsionFreeClosed
        (And.intro E.riemannCurvatureTensorClosed
          (And.intro E.ricciCurvatureTensorClosed
            (And.intro E.scalarCurvatureClosed
              (And.intro E.firstBianchiIdentityClosed E.secondBianchiIdentityClosed))))))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse