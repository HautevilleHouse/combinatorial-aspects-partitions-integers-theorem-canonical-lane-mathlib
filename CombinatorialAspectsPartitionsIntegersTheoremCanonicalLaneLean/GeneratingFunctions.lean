import CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure GeneratingFunctionPackage where
  ordinaryGf : ℕ → ℕ
  exponentialGf : ℕ → ℕ
  productFormula : Prop
  compositionFormula : Prop
  productFormulaClosed : productFormula
  compositionFormulaClosed : compositionFormula

structure GeneratingFunctionEvidence (G : GeneratingFunctionPackage) where
  productFormulaClosed : G.productFormula
  compositionFormulaClosed : G.compositionFormula

def GeneratingFunctionClosed (G : GeneratingFunctionPackage) : Prop :=
  G.productFormula ∧ G.compositionFormula

theorem generating_function_closed_from_evidence (G : GeneratingFunctionPackage)
    (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.productFormulaClosed E.compositionFormulaClosed

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse
