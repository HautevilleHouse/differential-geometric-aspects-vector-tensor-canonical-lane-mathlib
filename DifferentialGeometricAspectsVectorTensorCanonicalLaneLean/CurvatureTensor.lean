import VectorTensorAdmissibleClass

/-!
# Curvature Tensor Package
-/

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure CurvatureTensorPackage where
  riemannTensor : Prop
  ricciTensor : Prop
  scalarCurvature : Prop
  bianchiIdentities : Prop
  einsteinCondition : Prop

structure CurvatureTensorEvidence (C : CurvatureTensorPackage) where
  riemannTensorClosed : C.riemannTensor
  ricciTensorClosed : C.ricciTensor
  scalarCurvatureClosed : C.scalarCurvature
  bianchiIdentitiesClosed : C.bianchiIdentities
  einsteinConditionClosed : C.einsteinCondition

def CurvatureTensorClosed (C : CurvatureTensorPackage) : Prop :=
  C.riemannTensor ∧ C.ricciTensor ∧ C.scalarCurvature ∧ C.bianchiIdentities ∧ C.einsteinCondition

theorem curvature_tensor_closed_from_evidence (C : CurvatureTensorPackage) (E : CurvatureTensorEvidence C) :
    CurvatureTensorClosed C := by
  exact And.intro E.riemannTensorClosed
    (And.intro E.ricciTensorClosed
      (And.intro E.scalarCurvatureClosed
        (And.intro E.bianchiIdentitiesClosed E.einsteinConditionClosed)))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse
