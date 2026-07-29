import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure PartitionAdmissibleObject where
  n : ℕ
  partition : IntegerPartition n
  identity : Prop
  identityProof : identity

structure AdmissibleClass where
  object : PartitionAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.identity ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse