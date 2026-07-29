import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure GeneratingFunction where
  series : ℕ → ℤ
  closedForm : Polynomial ℚ
  radiusOfConvergence : ℝ
  functionalEquation : Prop

def partitionGeneratingFunction (n : ℕ) : GeneratingFunction where
  series := λ k => Finset.card (partitions_of_n_into_k_parts n k)
  closedForm := ∏_{i=1}^∞ (1 - q^i)^{-1}
  radiusOfConvergence := 1
  functionalEquation := True

theorem euler_product_formula (q : ℂ) (|q| < 1) :
    ∑_{n=0}^∞ p(n) * q^n = ∏_{k=1}^∞ 1 / (1 - q^k) := by
  admit

theorem jacobi_triple_product (z q : ℂ) (|q| < 1) :
    ∑_{n=-∞}^∞ z^n * q^(n*(n+1)/2) = ∏_{n=1}^∞ (1 - q^(2*n))*(1 + z*q^(2*n-1))*(1 + z^{-1}*q^(2*n-1)) := by
  admit

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse