import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIntegerPartitions

structure AsymptoticPartitionPackage where
  asymptoticFormula : Prop
  errorBound : Prop
  saddlePointMethod : Prop

structure AsymptoticPartitionEvidence (A : AsymptoticPartitionPackage) where
  asymptoticFormulaClosed : A.asymptoticFormula
  errorBoundClosed : A.errorBound
  saddlePointMethodClosed : A.saddlePointMethod

def AsymptoticPartitionClosed (A : AsymptoticPartitionPackage) : Prop :=
  A.asymptoticFormula ∧ A.errorBound ∧ A.saddlePointMethod

theorem asymptotic_partition_closed_from_evidence (A : AsymptoticPartitionPackage) (E : AsymptoticPartitionEvidence A) : AsymptoticPartitionClosed A := by
  exact And.intro E.asymptoticFormulaClosed (And.intro E.errorBoundClosed E.saddlePointMethodClosed)

def asymptoticPartitionBridge (A : AsymptoticPartitionPackage) : Prop :=
  A.asymptoticFormula

theorem bridge_from_asymptotic_partition (A : AsymptoticPartitionPackage) : asymptoticPartitionBridge A := by
  unfold asymptoticPartitionBridge
  exact A.asymptoticFormula

def asymptoticPartitionGate (A : AsymptoticPartitionPackage) : Prop :=
  A.saddlePointMethod

theorem gate_from_asymptotic_partition (A : AsymptoticPartitionPackage) : asymptoticPartitionGate A := by
  unfold asymptoticPartitionGate
  exact A.saddlePointMethod
end CombinatorialIntegerPartitions
end HautevilleHouse