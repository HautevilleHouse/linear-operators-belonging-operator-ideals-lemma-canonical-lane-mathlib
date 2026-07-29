import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure LinearOperatorPackage (I : OperatorIdealPackage) where
  operatorType : Type u
  domain : Type v
  codomain : Type w
  linearStructure : Prop
  boundedness : Prop
  belongsToIdeal : Prop

structure LinearOperatorBelongingEvidence {I : OperatorIdealPackage}
    (L : LinearOperatorPackage I) where
  linearStructureClosed : L.linearStructure
  boundednessClosed : L.boundedness
  belongsToIdealClosed : L.belongsToIdeal

def LinearOperatorBelongingClosed {I : OperatorIdealPackage}
    (L : LinearOperatorPackage I) : Prop :=
  L.linearStructure ∧ L.boundedness ∧ L.belongsToIdeal

theorem linear_operator_belonging_closed_from_evidence
    {I : OperatorIdealPackage} (L : LinearOperatorPackage I)
    (E : LinearOperatorBelongingEvidence L) :
    LinearOperatorBelongingClosed L := by
  exact And.intro E.linearStructureClosed
    (And.intro E.boundednessClosed E.belongsToIdealClosed)

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse
