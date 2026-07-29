import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure TensorCalculusPackage where
  tensorAlgebra : Type
  covariantDerivative : Type
  lieDerivative : Type
  exteriorDerivative : Type
  contraction : Type
  tensorProductCompatibility : Prop
  leibnizRule : Prop
  commuteCovariantDerivatives : Prop
  commutatorFormula : Prop

structure TensorCalculusEvidence (T : TensorCalculusPackage) where
  tensorProductCompatibilityClosed : T.tensorProductCompatibility
  leibnizRuleClosed : T.leibnizRule
  commuteCovariantDerivativesClosed : T.commuteCovariantDerivatives
  commutatorFormulaClosed : T.commutatorFormula

def TensorCalculusClosed (T : TensorCalculusPackage) : Prop :=
  T.tensorProductCompatibility ∧ T.leibnizRule ∧ T.commuteCovariantDerivatives ∧ T.commutatorFormula

theorem tensor_calculus_closed_from_evidence (T : TensorCalculusPackage) (E : TensorCalculusEvidence T) :
    TensorCalculusClosed T := by
  exact And.intro E.tensorProductCompatibilityClosed (And.intro E.leibnizRuleClosed (And.intro E.commuteCovariantDerivativesClosed E.commutatorFormulaClosed))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse