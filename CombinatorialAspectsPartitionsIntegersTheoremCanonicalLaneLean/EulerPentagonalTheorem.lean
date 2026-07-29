import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure EulerPentagonalPackage where
  pentagonalNumberRecurrence : Prop
  generationalInterpretation : Prop
  signPattern : Prop
  pentagonalNumberRecurrenceClosed : pentagonalNumberRecurrence
  generationalInterpretationClosed : generationalInterpretation
  signPatternClosed : signPattern

def EulerPentagonalClosed (E : EulerPentagonalPackage) : Prop :=
  E.pentagonalNumberRecurrence ∧ E.generationalInterpretation ∧ E.signPattern

theorem euler_pentagonal_closed_from_evidence (E : EulerPentagonalPackage) : EulerPentagonalClosed E :=
  And.intro E.pentagonalNumberRecurrenceClosed (And.intro E.generationalInterpretationClosed E.signPatternClosed)

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse
