import DifferentialGeometricAspectsVectorTensorCanonicalLaneLean.ConnectionCurvatureTensor

/-!
# Holonomy and Parallel Transport Package
-/

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure HolonomyAndParallelTransportPackage
    (C : ConnectionCurvatureTensorPackage) where
  parallelTransportExists : Prop
  holonomyGroupDefined : Prop
  holonomyAlgebraDefined : Prop
  ambroseSingerTheorem : Prop
  flatConnectionCharacterization : Prop

structure HolonomyAndParallelTransportEvidence
    {C : ConnectionCurvatureTensorPackage}
    (H : HolonomyAndParallelTransportPackage C) where
  parallelTransportExistsClosed : H.parallelTransportExists
  holonomyGroupDefinedClosed : H.holonomyGroupDefined
  holonomyAlgebraDefinedClosed : H.holonomyAlgebraDefined
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem
  flatConnectionCharacterizationClosed : H.flatConnectionCharacterization

def HolonomyAndParallelTransportClosed
    {C : ConnectionCurvatureTensorPackage}
    (H : HolonomyAndParallelTransportPackage C) : Prop :=
  H.parallelTransportExists ∧ H.holonomyGroupDefined ∧ H.holonomyAlgebraDefined ∧
  H.ambroseSingerTheorem ∧ H.flatConnectionCharacterization

theorem holonomy_and_parallel_transport_closed_from_evidence
    {C : ConnectionCurvatureTensorPackage}
    (H : HolonomyAndParallelTransportPackage C)
    (E : HolonomyAndParallelTransportEvidence H) :
    HolonomyAndParallelTransportClosed H := by
  exact And.intro E.parallelTransportExistsClosed
    (And.intro E.holonomyGroupDefinedClosed
      (And.intro E.holonomyAlgebraDefinedClosed
        (And.intro E.ambroseSingerTheoremClosed E.flatConnectionCharacterizationClosed)))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse