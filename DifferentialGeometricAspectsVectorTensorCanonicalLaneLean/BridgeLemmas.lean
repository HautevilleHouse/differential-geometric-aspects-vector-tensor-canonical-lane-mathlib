import DifferentialGeometricAspectsVectorTensorCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VectorTensorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse