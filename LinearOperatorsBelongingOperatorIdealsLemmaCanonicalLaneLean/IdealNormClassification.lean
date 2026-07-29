import LinearOperatorsBelongingOperatorIdealsLemma.OperatorIdealCore

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemma

structure IdealNormClassification {I : OperatorIdealPackage} (E : OperatorIdealEvidence I) where
  schattenClass : Prop
  traceClass : Prop
  hilbertSchmidtClass : Prop
  compactClass : Prop
  schattenClassClosed : schattenClass
  traceClassClosed : traceClass
  hilbertSchmidtClassClosed : hilbertSchmidtClass
  compactClassClosed : compactClass

structure IdealNormEvidence {I : OperatorIdealPackage} {E : OperatorIdealEvidence I}
    (C : IdealNormClassification E) where
  schattenInclusion : C.schattenClass → C.traceClass
  traceInclusion : C.traceClass → C.hilbertSchmidtClass
  hilbertSchmidtInclusion : C.hilbertSchmidtClass → C.compactClass

def IdealNormClassificationClosed {I : OperatorIdealPackage} {E : OperatorIdealEvidence I}
    (C : IdealNormClassification E) : Prop :=
  C.schattenClass ∧ C.traceClass ∧ C.hilbertSchmidtClass ∧ C.compactClass

theorem ideal_norm_classification_closed_from_evidence
    {I : OperatorIdealPackage} {E : OperatorIdealEvidence I}
    (C : IdealNormClassification E) (Ev : IdealNormEvidence C) :
    IdealNormClassificationClosed C := by
  exact And.intro C.schattenClassClosed
    (And.intro C.traceClassClosed
      (And.intro C.hilbertSchmidtClassClosed C.compactClassClosed))

end LinearOperatorsBelongingOperatorIdealsLemma
end HautevilleHouse
