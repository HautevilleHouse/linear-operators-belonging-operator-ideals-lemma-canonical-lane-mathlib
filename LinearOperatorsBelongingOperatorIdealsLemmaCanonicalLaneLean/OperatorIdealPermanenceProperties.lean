import LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean.OperatorIdealAdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure OperatorIdealPermanencePackage (O : OperatorIdealAdmittedObject) where
  sumPermanence : ∀ (op1 op2 : O.operatorClass), O.idealClosureProperty op1 → O.idealClosureProperty op2 → O.idealClosureProperty (op1 + op2)
  compositionPermanence : ∀ (op1 op2 : O.operatorClass), O.idealClosureProperty op1 → O.idealClosureProperty op2 → O.idealClosureProperty (op1 ∘ op2)
  adjointPermanence : ∀ (op : O.operatorClass), O.idealClosureProperty op → O.idealClosureProperty (adjoint op)

def OperatorIdealPermanenceClosed (O : OperatorIdealAdmittedObject) (P : OperatorIdealPermanencePackage O) : Prop :=
  (∀ op1 op2, P.sumPermanence op1 op2) ∧ (∀ op1 op2, P.compositionPermanence op1 op2) ∧ (∀ op, P.adjointPermanence op)

theorem operator_ideal_permanence_closed (O : OperatorIdealAdmittedObject) (P : OperatorIdealPermanencePackage O) :
    OperatorIdealPermanenceClosed O P := by
  exact And.intro (λ op1 op2 => P.sumPermanence op1 op2) (And.intro (λ op1 op2 => P.compositionPermanence op1 op2) (λ op => P.adjointPermanence op))

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse