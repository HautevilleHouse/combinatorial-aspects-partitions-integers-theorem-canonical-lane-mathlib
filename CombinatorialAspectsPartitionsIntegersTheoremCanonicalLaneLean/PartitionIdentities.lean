import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

theorem partitions_into_distinct_parts_equals_parts_into_odd_parts (n : ℕ) :
    (Finset.filter (λ π : IntegerPartition n => ∀ x ∈ π.parts, x = x) Finset.univ).card =
    (Finset.filter (λ π : IntegerPartition n => ∀ x ∈ π.parts, x % 2 = 1) Finset.univ).card := by
  admit

theorem euler_pentagonal_number_theorem (n : ℕ) :
    (∑ k : ℤ, (-1)^k * (Finset.card (partitions_into_distinct_parts (n - k*(3*k-1)/2 : ℕ)))) = 0 := by
  admit

theorem rogers_ramanujan_identities (n : ℕ) :
    (Finset.card (partitions_with_parts_congruent_mod_5_1_or_4 n)) = (Finset.card (partitions_with_difference_at_least_2 n)) := by
  admit

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse