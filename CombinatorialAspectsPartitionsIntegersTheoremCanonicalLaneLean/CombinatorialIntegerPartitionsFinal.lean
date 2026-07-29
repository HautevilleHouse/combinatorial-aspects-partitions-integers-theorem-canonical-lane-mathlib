import canonicalLaneMathlib.AdmissibleClass
import CombinatorialIntegerPartitions.PartitionGeneratingFunctions
import CombinatorialIntegerPartitions.RogersRamanujanIdentities
import CombinatorialIntegerPartitions.AsymptoticPartitionFormulas
import CombinatorialIntegerPartitions.CongruencePropertiesPartitions
import CombinatorialIntegerPartitions.BijectiveProofTechniques

namespace HautevilleHouse
namespace CombinatorialIntegerPartitions

def ConstrainedPartitionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_partition_endgame (A : AdmissibleClass) :
  ConstrainedPartitionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialIntegerPartitions
end HautevilleHouse