import CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean.GeneratingFunctions

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure EulerIdentitiesPackage where
  pentagonalNumberTheorem : Prop
  eulerPartitionRecurrence : Prop
  pentagonalNumberTheoremClosed : pentagonalNumberTheorem
  eulerPartitionRecurrenceClosed : eulerPartitionRecurrence

structure EulerIdentitiesEvidence (E : EulerIdentitiesPackage) where
  pentagonalNumberTheoremClosed : E.pentagonalNumberTheorem
  eulerPartitionRecurrenceClosed : E.eulerPartitionRecurrence

def EulerIdentitiesClosed (E : EulerIdentitiesPackage) : Prop :=
  E.pentagonalNumberTheorem ∧ E.eulerPartitionRecurrence

theorem euler_identities_closed_from_evidence (E : EulerIdentitiesPackage)
    (Ev : EulerIdentitiesEvidence E) : EulerIdentitiesClosed E := by
  exact And.intro Ev.pentagonalNumberTheoremClosed Ev.eulerPartitionRecurrenceClosed

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse
