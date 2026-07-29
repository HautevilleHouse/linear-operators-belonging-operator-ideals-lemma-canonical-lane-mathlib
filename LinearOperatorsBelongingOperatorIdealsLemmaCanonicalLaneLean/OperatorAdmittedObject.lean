import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsLemma.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemma

structure OperatorAdmittedObject where
  operatorType : Type
  topology : TopologicalSpace operatorType
  norm : operatorType → ℝ
  belongsToOperatorIdeal : Prop
  conclusion : belongsToOperatorIdeal

def OperatorWitnessClosed (O : OperatorAdmittedObject) : Prop :=
  O.belongsToOperatorIdeal

end LinearOperatorsBelongingOperatorIdealsLemma
end HautevilleHouse
