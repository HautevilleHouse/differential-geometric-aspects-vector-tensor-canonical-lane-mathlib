import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometricAspectsVectorTensorCanonicalLaneLean.ConnectionCurvature

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure HolonomyPackage (C : ConnectionCurvaturePackage B) where
  holonomyGroup : Type u
  holonomyAlgebra : Type v
  parallelTransport : Type w
  bernsteinGel'fandGel'fand : Prop
  holonomyReduction : Prop
  localHolonomy : Prop
  holonomyClosed : Prop
  holonomyClosedTerm : holonomyClosed

structure HolonomyEvidence (H : HolonomyPackage C) where
  holonomyClosedProof : H.holonomyClosed

def HolonomyClosed (H : HolonomyPackage C) : Prop :=
  H.holonomyClosed

theorem holonomy_closed_from_evidence (H : HolonomyPackage C)
    (E : HolonomyEvidence H) : HolonomyClosed H :=
  E.holonomyClosedProof

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse