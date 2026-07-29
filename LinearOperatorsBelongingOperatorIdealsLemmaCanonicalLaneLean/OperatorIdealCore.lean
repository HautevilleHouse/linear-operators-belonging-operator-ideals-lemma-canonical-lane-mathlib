import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemma

structure OperatorIdealPackage where
  operatorType : Type
  norm : Type
  idealMembership : Prop
  closedUnderAddition : Prop
  closedUnderMultiplication : Prop
  closedUnderAdjoint : Prop

structure OperatorIdealEvidence (I : OperatorIdealPackage) where
  idealMembershipClosed : I.idealMembership
  closedUnderAdditionClosed : I.closedUnderAddition
  closedUnderMultiplicationClosed : I.closedUnderMultiplication
  closedUnderAdjointClosed : I.closedUnderAdjoint

def OperatorIdealClosed (I : OperatorIdealPackage) : Prop :=
  I.idealMembership ∧ I.closedUnderAddition ∧ I.closedUnderMultiplication ∧ I.closedUnderAdjoint

theorem operator_ideal_closed_from_evidence
    (I : OperatorIdealPackage) (E : OperatorIdealEvidence I) :
    OperatorIdealClosed I := by
  exact And.intro E.idealMembershipClosed
    (And.intro E.closedUnderAdditionClosed
      (And.intro E.closedUnderMultiplicationClosed E.closedUnderAdjointClosed))

end LinearOperatorsBelongingOperatorIdealsLemma
end HautevilleHouse
