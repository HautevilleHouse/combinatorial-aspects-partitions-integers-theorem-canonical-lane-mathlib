import combinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean.AsymptoticExpansion

namespace HautevilleHouse
namespace CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean

structure NoncollapsingPackage {G : AsymptoticExpansionPackage} where
  scaleInvariantVolumeBound : Prop
  curvatureScaleControl : Prop
  blowupLimitNoncollapsed : Prop

structure NoncollapsingEvidence {G : AsymptoticExpansionPackage} (N : NoncollapsingPackage G) where
  scaleInvariantVolumeBoundClosed : N.scaleInvariantVolumeBound
  curvatureScaleControlClosed : N.curvatureScaleControl
  blowupLimitNoncollapsedClosed : N.blowupLimitNoncollapsed

def NoncollapsingClosed {G : AsymptoticExpansionPackage} (N : NoncollapsingPackage G) : Prop :=
  N.scaleInvariantVolumeBound ∧ N.curvatureScaleControl ∧ N.blowupLimitNoncollapsed

theorem noncollapsing_closed_from_evidence
    {G : AsymptoticExpansionPackage} (N : NoncollapsingPackage G)
    (E : NoncollapsingEvidence N) : NoncollapsingClosed N := by
  exact And.intro E.scaleInvariantVolumeBoundClosed
    (And.intro E.curvatureScaleControlClosed E.blowupLimitNoncollapsedClosed)

end CombinatorialAspectsPartitionsIntegersTheoremCanonicalLaneLean
end HautevilleHouse