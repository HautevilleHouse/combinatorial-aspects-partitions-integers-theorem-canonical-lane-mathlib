import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIntegerPartitions

structure CongruencePackage where
  ramanujanCongruences : Prop
  kolbergRefinements : Prop
  partitionCongruenceRanks : Prop

structure CongruenceEvidence (C : CongruencePackage) where
  ramanujanCongruencesClosed : C.ramanujanCongruences
  kolbergRefinementsClosed : C.kolbergRefinements
  partitionCongruenceRanksClosed : C.partitionCongruenceRanks

def CongruenceClosed (C : CongruencePackage) : Prop :=
  C.ramanujanCongruences ∧ C.kolbergRefinements ∧ C.partitionCongruenceRanks

theorem congruence_closed_from_evidence (C : CongruencePackage) (E : CongruenceEvidence C) : CongruenceClosed C := by
  exact And.intro E.ramanujanCongruencesClosed (And.intro E.kolbergRefinementsClosed E.partitionCongruenceRanksClosed)

def congruenceBridge (C : CongruencePackage) : Prop :=
  C.ramanujanCongruences

theorem bridge_from_congruence (C : CongruencePackage) : congruenceBridge C := by
  unfold congruenceBridge
  exact C.ramanujanCongruences

def congruenceGate (C : CongruencePackage) : Prop :=
  C.partitionCongruenceRanks

theorem gate_from_congruence (C : CongruencePackage) : congruenceGate C := by
  unfold congruenceGate
  exact C.partitionCongruenceRanks
end CombinatorialIntegerPartitions
end HautevilleHouse