import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricAspectsVectorTensorCanonicalLaneLean

structure LeviCivitaConnection where
  manifold : Type u
  tangentBundle : Type v
  connectionForm : Type w
  curvatureForm : Type x
  torsionFree : Prop
  metricCompatible : Prop
  holonomyGroup : Prop
  parallelTransport : Prop
  riemannTensorDerived : Prop

structure ConnectionEvidence (C : LeviCivitaConnection) where
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible
  holonomyGroupClosed : C.holonomyGroup
  parallelTransportClosed : C.parallelTransport
  riemannTensorDerivedClosed : C.riemannTensorDerived

def ConnectionClosed (C : LeviCivitaConnection) : Prop :=
  C.torsionFree ∧ C.metricCompatible ∧ C.holonomyGroup ∧ C.parallelTransport ∧ C.riemannTensorDerived

theorem connection_closed_from_evidence
    (C : LeviCivitaConnection) (E : ConnectionEvidence C) :
    ConnectionClosed C := by
  exact And.intro E.torsionFreeClosed
    (And.intro E.metricCompatibleClosed
      (And.intro E.holonomyGroupClosed
        (And.intro E.parallelTransportClosed E.riemannTensorDerivedClosed)))

end DifferentialGeometricAspectsVectorTensorCanonicalLaneLean
end HautevilleHouse
