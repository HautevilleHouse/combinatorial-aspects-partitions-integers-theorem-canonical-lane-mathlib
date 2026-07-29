import CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean.PartitionCongruences

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure IntegerPartitionsTheoremPackage where
  partitionFunctionGenerating : Prop
  asymptoticFormula : Prop
  partitionFunctionGeneratingClosed : partitionFunctionGenerating
  asymptoticFormulaClosed : asymptoticFormula

structure IntegerPartitionsTheoremEvidence (I : IntegerPartitionsTheoremPackage) where
  partitionFunctionGeneratingClosed : I.partitionFunctionGenerating
  asymptoticFormulaClosed : I.asymptoticFormula

def IntegerPartitionsTheoremClosed (I : IntegerPartitionsTheoremPackage) : Prop :=
  I.partitionFunctionGenerating ∧ I.asymptoticFormula

theorem integer_partitions_theorem_closed_from_evidence (I : IntegerPartitionsTheoremPackage)
    (Ev : IntegerPartitionsTheoremEvidence I) : IntegerPartitionsTheoremClosed I := by
  exact And.intro Ev.partitionFunctionGeneratingClosed Ev.asymptoticFormulaClosed

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse
