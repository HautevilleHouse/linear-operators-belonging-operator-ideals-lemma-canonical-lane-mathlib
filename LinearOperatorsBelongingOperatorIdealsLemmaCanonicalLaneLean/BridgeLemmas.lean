import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OperatorIdealClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse