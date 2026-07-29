import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean.OperatorIdeals
import LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean.LinearOperatorBelonging
import LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean.IdealMembershipLemma

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

def ConstrainedOperatorIdealClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_operator_ideal_endgame (A : AdmissibleClass) :
    ConstrainedOperatorIdealClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse
