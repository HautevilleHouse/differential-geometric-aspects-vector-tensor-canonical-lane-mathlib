import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  tangentBundle : Type v
  ellipticOperator : Type w
  analyticIndex : Type x
  topologicalIndex : Type y
  indexFormula : Prop
  chernCharacter : Prop
  toddClass : Prop
  atiyahSingerTheorem : Prop
  diracOperatorDefined : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexFormulaClosed : I.indexFormula
  chernCharacterClosed : I.chernCharacter
  toddClassClosed : I.toddClass
  atiyahSingerTheoremClosed : I.atiyahSingerTheorem
  diracOperatorDefinedClosed : I.diracOperatorDefined

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexFormula ∧ I.chernCharacter ∧ I.toddClass ∧ I.atiyahSingerTheorem ∧ I.diracOperatorDefined

theorem index_theorem_closed_from_evidence
    (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.indexFormulaClosed
    (And.intro E.chernCharacterClosed
      (And.intro E.toddClassClosed
        (And.intro E.atiyahSingerTheoremClosed E.diracOperatorDefinedClosed)))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse
