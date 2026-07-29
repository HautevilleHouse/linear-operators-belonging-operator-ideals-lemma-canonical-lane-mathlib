import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure OperatorIdealAdmittedObject where
  operatorClass : Type
  idealMembershipCondition : Prop
  idealClosureProperty : operatorClass → Prop
  conclusion : ∀ (op : operatorClass), idealClosureProperty op

structure AdmissibleClass where
  object : OperatorIdealAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ (op : A.object.operatorClass), A.object.idealClosureProperty op) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse