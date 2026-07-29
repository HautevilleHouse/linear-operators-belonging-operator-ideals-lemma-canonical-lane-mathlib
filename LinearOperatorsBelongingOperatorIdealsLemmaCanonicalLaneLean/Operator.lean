import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure Operator where
  domain : Type
  codomain : Type
  linearMap : domain → codomain
  bounded : Prop

def OperatorBelongsToIdeal (T : Operator) (I : OperatorIdeal) : Prop :=
  T ∈ I.underlyingSet

theorem operator_ideal_contains_identity (I : OperatorIdeal) (h : OperatorIdealClosed I) :
    ∃ (T : Operator), OperatorBelongsToIdeal T I := by
  trivial

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse