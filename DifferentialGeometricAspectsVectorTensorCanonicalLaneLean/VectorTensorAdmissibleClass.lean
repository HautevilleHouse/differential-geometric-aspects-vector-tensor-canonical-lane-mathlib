import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure VectorTensorAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  vectorBundle : Type v
  tensorConnection : Type w
  curvatureTensor : Prop
  torsionFree : Prop
  metricCompatible : Prop
  admissible : Prop

structure AdmissibleClass where
  object : VectorTensorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.admissible ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse
