import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure OperatorIdealClass where
  operators : Type u
  idealProperty : Prop
  closureUnderMultiplication : Prop
  closureUnderAddition : Prop

structure IdealClosureEvidence (I : OperatorIdealClass) where
  idealPropertyClosed : I.idealProperty
  closureUnderMultiplicationClosed : I.closureUnderMultiplication
  closureUnderAdditionClosed : I.closureUnderAddition

def IdealClosure (I : OperatorIdealClass) : Prop :=
  I.idealProperty ∧ I.closureUnderMultiplication ∧ I.closureUnderAddition

theorem ideal_closure_closed_from_evidence (I : OperatorIdealClass)
    (E : IdealClosureEvidence I) : IdealClosure I := by
  exact And.intro E.idealPropertyClosed (And.intro E.closureUnderMultiplicationClosed E.closureUnderAdditionClosed)

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse