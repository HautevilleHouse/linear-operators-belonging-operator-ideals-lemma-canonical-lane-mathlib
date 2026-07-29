import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure OperatorIdealPackage where
  idealType : Type u
  membershipCondition : Prop
  compositionStability : Prop
  linearClosure : Prop
  traceClassCondition : Prop

structure OperatorIdealEvidence (I : OperatorIdealPackage) where
  membershipConditionClosed : I.membershipCondition
  compositionStabilityClosed : I.compositionStability
  linearClosureClosed : I.linearClosure
  traceClassConditionClosed : I.traceClassCondition

def OperatorIdealClosed (I : OperatorIdealPackage) : Prop :=
  I.membershipCondition ∧ I.compositionStability ∧ I.linearClosure ∧ I.traceClassCondition

theorem operator_ideal_closed_from_evidence (I : OperatorIdealPackage) (E : OperatorIdealEvidence I) : OperatorIdealClosed I := by
  exact And.intro E.membershipConditionClosed (And.intro E.compositionStabilityClosed (And.intro E.linearClosureClosed E.traceClassConditionClosed))

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse