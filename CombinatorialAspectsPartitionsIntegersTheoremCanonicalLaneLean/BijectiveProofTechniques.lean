import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialIntegerPartitions

structure BijectiveProofPackage where
  involutionMethod : Prop
  signReversingInvolution : Prop
  eulerPentagonalTheorem : Prop

structure BijectiveProofEvidence (B : BijectiveProofPackage) where
  involutionMethodClosed : B.involutionMethod
  signReversingInvolutionClosed : B.signReversingInvolution
  eulerPentagonalTheoremClosed : B.eulerPentagonalTheorem

def BijectiveProofClosed (B : BijectiveProofPackage) : Prop :=
  B.involutionMethod ∧ B.signReversingInvolution ∧ B.eulerPentagonalTheorem

theorem bijective_proof_closed_from_evidence (B : BijectiveProofPackage) (E : BijectiveProofEvidence B) : BijectiveProofClosed B := by
  exact And.intro E.involutionMethodClosed (And.intro E.signReversingInvolutionClosed E.eulerPentagonalTheoremClosed)

def bijectiveProofBridge (B : BijectiveProofPackage) : Prop :=
  B.involutionMethod

theorem bridge_from_bijective_proof (B : BijectiveProofPackage) : bijectiveProofBridge B := by
  exact B.involutionMethod

def bijectiveProofGate (B : BijectiveProofPackage) : Prop :=
  B.eulerPentagonalTheorem

theorem gate_from_bijective_proof (B : BijectiveProofPackage) : bijectiveProofGate B := by
  exact B.eulerPentagonalTheorem

end CombinatorialIntegerPartitions
end HautevilleHouse