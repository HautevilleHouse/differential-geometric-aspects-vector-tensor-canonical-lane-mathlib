import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure IndexTheoremPackage where
  diracOperator : Type
  ellipticComplex : Type
  analyticIndex : Prop
  topologicalIndex : Prop
  indexEquality : Prop
  chernCharacter : Prop
  toddClass : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexEqualityClosed : I.indexEquality
  chernCharacterClosed : I.chernCharacter
  toddClassClosed : I.toddClass

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.indexEquality ∧ I.chernCharacter ∧ I.toddClass

theorem index_theorem_closed_from_evidence (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.analyticIndexClosed (And.intro E.topologicalIndexClosed (And.intro E.indexEqualityClosed (And.intro E.chernCharacterClosed E.toddClassClosed)))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse