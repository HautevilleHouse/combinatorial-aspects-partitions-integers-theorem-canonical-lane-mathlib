import combinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PartitionsIntegersSpace where
  carrier : Type
  discreteTopology : TopologicalSpace carrier

structure PartitionsIntegersAdmittedObject where
  space : PartitionsIntegersSpace
  partitionFunction : ℕ → ℕ
  infiniteProduct : Prop
  eulerIdentitiesSatisfied : Prop
  asymptotics : Prop
  conclusion : eulerIdentitiesSatisfied ∧ asymptotics

structure PartitionsIntegersEndgameState where
  object : PartitionsIntegersAdmittedObject

def PartitionsIntegersWitnessClosed (O : PartitionsIntegersAdmittedObject) : Prop :=
  O.eulerIdentitiesSatisfied ∧ O.asymptotics

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse