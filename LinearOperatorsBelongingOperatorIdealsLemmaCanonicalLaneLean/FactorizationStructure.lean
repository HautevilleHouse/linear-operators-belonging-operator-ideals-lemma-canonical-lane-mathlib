import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure FactorizationStructure where
  factorSpace : Type u
  leftFactor : Type v
  rightFactor : Type w
  factorizationProperty : Prop
  uniqueFactorization : Prop

structure FactorizationEvidence (F : FactorizationStructure) where
  factorizationPropertyClosed : F.factorizationProperty
  uniqueFactorizationClosed : F.uniqueFactorization

def FactorizationClosed (F : FactorizationStructure) : Prop :=
  F.factorizationProperty ∧ F.uniqueFactorization

theorem factorization_closed_from_evidence (F : FactorizationStructure)
    (E : FactorizationEvidence F) : FactorizationClosed F := by
  exact And.intro E.factorizationPropertyClosed E.uniqueFactorizationClosed

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse