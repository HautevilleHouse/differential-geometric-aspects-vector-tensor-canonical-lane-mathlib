import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure VectorBundleStructure where
  baseManifold : Type u
  topology : TopologicalSpace baseManifold
  totalSpace : Type v
  projection : totalSpace → baseManifold
  fiberType : Type w
  smoothStructure : Prop
  localTrivializations : Prop
  transitionFunctionsSmooth : Prop
  tensorProductDefined : Prop
  dualBundleDefined : Prop
  pullbackDefined : Prop

structure VectorBundleEvidence (V : VectorBundleStructure) where
  smoothStructureClosed : V.smoothStructure
  localTrivializationsClosed : V.localTrivializations
  transitionFunctionsSmoothClosed : V.transitionFunctionsSmooth
  tensorProductDefinedClosed : V.tensorProductDefined
  dualBundleDefinedClosed : V.dualBundleDefined
  pullbackDefinedClosed : V.pullbackDefined

def VectorBundleClosed (V : VectorBundleStructure) : Prop :=
  V.smoothStructure ∧ V.localTrivializations ∧ V.transitionFunctionsSmooth ∧
  V.tensorProductDefined ∧ V.dualBundleDefined ∧ V.pullbackDefined

theorem vector_bundle_closed_from_evidence
    (V : VectorBundleStructure) (E : VectorBundleEvidence V) : VectorBundleClosed V := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.localTrivializationsClosed
      (And.intro E.transitionFunctionsSmoothClosed
        (And.intro E.tensorProductDefinedClosed
          (And.intro E.dualBundleDefinedClosed E.pullbackDefinedClosed))))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse