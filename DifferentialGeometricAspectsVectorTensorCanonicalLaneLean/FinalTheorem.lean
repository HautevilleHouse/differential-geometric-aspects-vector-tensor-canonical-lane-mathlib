import DifferentialGeometricAspectsVectorTensorCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

def ConstrainedVectorTensorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_vector_tensor_endgame (A : AdmissibleClass) :
    ConstrainedVectorTensorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse