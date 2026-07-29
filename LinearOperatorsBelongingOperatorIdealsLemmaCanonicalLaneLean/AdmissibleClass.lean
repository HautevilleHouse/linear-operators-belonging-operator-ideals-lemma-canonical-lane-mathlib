import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean.OperatorIdealDefinitions

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : OperatorIdealPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OperatorIdealClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse