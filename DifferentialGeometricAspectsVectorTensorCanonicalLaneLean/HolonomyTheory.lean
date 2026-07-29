import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure HolonomyPackage where
  holonomyGroup : Type
  holonomyAlgebra : Type
  parallelTransport : Type
  holonomyInfinitesimal : Prop
  ambroseSingerTheorem : Prop
  holonomyReduction : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyInfinitesimalClosed : H.holonomyInfinitesimal
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  holonomyReductionClosed : H.holonomyReduction

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyInfinitesimal ∧ H.ambroseSingerTheorem ∧ H.holonomyReduction

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) :
    HolonomyClosed H := by
  exact And.intro E.holonomyInfinitesimalClosed (And.intro E.ambroseSingerTheoremClosed E.holonomyReductionClosed)

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse