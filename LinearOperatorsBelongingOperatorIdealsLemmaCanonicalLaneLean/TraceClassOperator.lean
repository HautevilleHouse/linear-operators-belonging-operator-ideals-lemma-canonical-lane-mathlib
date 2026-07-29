import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure TraceClassOperator where
  traceClass : Type u
  traceFunctional : Prop
  traceNorm : Prop
  completeness : Prop

structure TraceClassEvidence (T : TraceClassOperator) where
  traceFunctionalClosed : T.traceFunctional
  traceNormClosed : T.traceNorm
  completenessClosed : T.completeness

def TraceClassClosed (T : TraceClassOperator) : Prop :=
  T.traceFunctional ∧ T.traceNorm ∧ T.completeness

theorem trace_class_closed_from_evidence (T : TraceClassOperator)
    (E : TraceClassEvidence T) : TraceClassClosed T := by
  exact And.intro E.traceFunctionalClosed (And.intro E.traceNormClosed E.completenessClosed)

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse