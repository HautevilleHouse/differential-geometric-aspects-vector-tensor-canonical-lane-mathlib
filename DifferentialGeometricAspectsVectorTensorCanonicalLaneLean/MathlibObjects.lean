import DifferentialGeometricAspectsVectorTensorCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VectorTensorSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure VectorTensorAdmittedObject where
  space : VectorTensorSpace
  smoothDifferentialStructure : Prop
  tensorBundleDefined : Prop
  connectionDefined : Prop
  curvatureDefined : Prop
  conclusion : curvatureDefined

structure VectorTensorEndgameState where
  object : VectorTensorAdmittedObject

def VectorTensorWitnessClosed (O : VectorTensorAdmittedObject) : Prop :=
  O.curvatureDefined

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse