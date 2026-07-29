import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure HardyRamanujanAsymptoticPackage where
  partitionAsymptoticFormula : Prop
  circleMethod : Prop
  saddlePointEstimate : Prop
  errorBound : Prop
  modularFormsConnection : Prop

structure HardyRamanujanAsymptoticEvidence (H : HardyRamanujanAsymptoticPackage) where
  partitionAsymptoticFormulaClosed : H.partitionAsymptoticFormula
  circleMethodClosed : H.circleMethod
  saddlePointEstimateClosed : H.saddlePointEstimate
  errorBoundClosed : H.errorBound
  modularFormsConnectionClosed : H.modularFormsConnection

def HardyRamanujanAsymptoticClosed (H : HardyRamanujanAsymptoticPackage) : Prop :=
  H.partitionAsymptoticFormula ∧ H.circleMethod ∧ H.saddlePointEstimate ∧ H.errorBound ∧ H.modularFormsConnection

theorem hardy_ramanujan_asymptotic_closed_from_evidence
    (H : HardyRamanujanAsymptoticPackage) (E : HardyRamanujanAsymptoticEvidence H) :
    HardyRamanujanAsymptoticClosed H := by
  exact And.intro E.partitionAsymptoticFormulaClosed
    (And.intro E.circleMethodClosed
      (And.intro E.saddlePointEstimateClosed
        (And.intro E.errorBoundClosed E.modularFormsConnectionClosed)))

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse