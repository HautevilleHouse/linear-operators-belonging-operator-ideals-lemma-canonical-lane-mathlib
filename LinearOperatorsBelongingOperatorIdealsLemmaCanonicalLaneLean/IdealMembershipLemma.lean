import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure IdealMembershipLemmaPackage (I : OperatorIdealPackage)
    (L : LinearOperatorPackage I) where
  lemmaStatement : Prop
  closednessUnderComposition : Prop
  stabilityUnderInversion : Prop
  spectralMapping : Prop

structure IdealMembershipLemmaEvidence {I : OperatorIdealPackage}
    {L : LinearOperatorPackage I} (M : IdealMembershipLemmaPackage I L) where
  lemmaStatementClosed : M.lemmaStatement
  closednessUnderCompositionClosed : M.closednessUnderComposition
  stabilityUnderInversionClosed : M.stabilityUnderInversion
  spectralMappingClosed : M.spectralMapping

def IdealMembershipLemmaClosed {I : OperatorIdealPackage}
    {L : LinearOperatorPackage I} (M : IdealMembershipLemmaPackage I L) : Prop :=
  M.lemmaStatement ∧ M.closednessUnderComposition ∧
  M.stabilityUnderInversion ∧ M.spectralMapping

theorem ideal_membership_lemma_closed_from_evidence
    {I : OperatorIdealPackage} {L : LinearOperatorPackage I}
    (M : IdealMembershipLemmaPackage I L)
    (E : IdealMembershipLemmaEvidence M) :
    IdealMembershipLemmaClosed M := by
  exact And.intro E.lemmaStatementClosed
    (And.intro E.closednessUnderCompositionClosed
      (And.intro E.stabilityUnderInversionClosed E.spectralMappingClosed))

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse
