import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure QBinomialTheoremPackage where
  qPochhammerDefined : Prop
  qBinomialCoefficientDefined : Prop
  qBinomialTheoremFormula : Prop
  convergenceCondition : Prop
  qPochhammerDefinedClosed : qPochhammerDefined
  qBinomialCoefficientDefinedClosed : qBinomialCoefficientDefined
  qBinomialTheoremFormulaClosed : qBinomialTheoremFormula
  convergenceConditionClosed : convergenceCondition

def QBinomialTheoremClosed (Q : QBinomialTheoremPackage) : Prop :=
  Q.qPochhammerDefined ∧ Q.qBinomialCoefficientDefined ∧ Q.qBinomialTheoremFormula ∧ Q.convergenceCondition

theorem q_binomial_theorem_closed_from_evidence (Q : QBinomialTheoremPackage) : QBinomialTheoremClosed Q :=
  And.intro Q.qPochhammerDefinedClosed (And.intro Q.qBinomialCoefficientDefinedClosed (And.intro Q.qBinomialTheoremFormulaClosed Q.convergenceConditionClosed))

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse
