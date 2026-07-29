import LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean.OperatorIdealPermanenceProperties

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure OperatorIdealCharacterizationPackage (O : OperatorIdealAdmittedObject) where
  idealClosureMembershipCriterion : (op : O.operatorClass) → Prop
  criterionEquivalence : ∀ (op : O.operatorClass), O.idealClosureProperty op ↔ idealClosureMembershipCriterion op

def OperatorIdealCharacterizationClosed (O : OperatorIdealAdmittedObject) (C : OperatorIdealCharacterizationPackage O) : Prop :=
  ∀ (op : O.operatorClass), O.idealClosureProperty op ↔ C.idealClosureMembershipCriterion op

theorem operator_ideal_characterization_closed (O : OperatorIdealAdmittedObject) (C : OperatorIdealCharacterizationPackage O) :
    OperatorIdealCharacterizationClosed O C := by
  intro op
  exact C.criterionEquivalence op

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse