import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure OperatorIdealPackage where
  idealType : Type u
  membershipCondition : Prop
  idealClosureUnderOperations : Prop
  normIdealProperty : Prop
  traceIdealProperty : Prop

structure OperatorIdealEvidence (I : OperatorIdealPackage) where
  membershipConditionClosed : I.membershipCondition
  idealClosureUnderOperationsClosed : I.idealClosureUnderOperations
  normIdealPropertyClosed : I.normIdealProperty
  traceIdealPropertyClosed : I.traceIdealProperty

def OperatorIdealClosed (I : OperatorIdealPackage) : Prop :=
  I.membershipCondition ∧ I.idealClosureUnderOperations ∧
  I.normIdealProperty ∧ I.traceIdealProperty

theorem operator_ideal_closed_from_evidence (I : OperatorIdealPackage)
    (E : OperatorIdealEvidence I) : OperatorIdealClosed I := by
  exact And.intro E.membershipConditionClosed
    (And.intro E.idealClosureUnderOperationsClosed
      (And.intro E.normIdealPropertyClosed E.traceIdealPropertyClosed))

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse
