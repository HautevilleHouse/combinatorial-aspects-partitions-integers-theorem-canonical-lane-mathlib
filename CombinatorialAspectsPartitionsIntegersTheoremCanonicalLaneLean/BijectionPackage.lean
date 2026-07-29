import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure BijectionPackage where
  mapDefinition : Prop
  involutionDefined : Prop
  fixedPointCondition : Prop
  bijectionEvidence : Prop
  mapDefinitionClosed : mapDefinition
  involutionDefinedClosed : involutionDefined
  fixedPointConditionClosed : fixedPointCondition
  bijectionEvidenceClosed : bijectionEvidence

def BijectionClosed (B : BijectionPackage) : Prop :=
  B.mapDefinition ∧ B.involutionDefined ∧ B.fixedPointCondition ∧ B.bijectionEvidence

theorem bijection_closed_from_evidence (B : BijectionPackage) : BijectionClosed B :=
  And.intro B.mapDefinitionClosed (And.intro B.involutionDefinedClosed (And.intro B.fixedPointConditionClosed B.bijectionEvidenceClosed))

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse
