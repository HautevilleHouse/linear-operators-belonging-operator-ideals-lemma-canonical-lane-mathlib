import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure AdmissibleOperatorCarrier where
  operator : Type u
  idealCondition : Prop
  spectralCondition : Prop
  factorizationCondition : Prop

structure AdmissibleOperatorEvidence (A : AdmissibleOperatorCarrier) where
  idealConditionClosed : A.idealCondition
  spectralConditionClosed : A.spectralCondition
  factorizationConditionClosed : A.factorizationCondition

def AdmissibleOperatorClosed (A : AdmissibleOperatorCarrier) : Prop :=
  A.idealCondition ∧ A.spectralCondition ∧ A.factorizationCondition

theorem admissible_operator_closed_from_evidence (A : AdmissibleOperatorCarrier)
    (E : AdmissibleOperatorEvidence A) : AdmissibleOperatorClosed A := by
  exact And.intro E.idealConditionClosed (And.intro E.spectralConditionClosed E.factorizationConditionClosed)

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse