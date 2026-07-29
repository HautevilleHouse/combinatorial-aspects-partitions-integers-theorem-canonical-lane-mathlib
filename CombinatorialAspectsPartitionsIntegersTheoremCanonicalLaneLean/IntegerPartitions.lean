import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure IntegerPartition where
  parts : List ℕ
  sumCondition : parts.sum = n
  nonincreasing : ∀ i j, i ≤ j → parts.get? i ≥ parts.get? j
  n : ℕ

structure ConjugatePartition (π : IntegerPartition) where
  conjugateParts : List ℕ
  conjugateLength : conjugateParts.length = (π.parts.head? 0).getOrElse 0
  conjugateCondition : ∀ i, conjugateParts.get? i = (π.parts.filter (λ p => p ≥ i+1)).length

structure FerrersDiagram (π : IntegerPartition) where
  rows : ℕ → ℕ
  rowsLength : rows 0 = π.n

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse