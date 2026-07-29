import canonicalLaneMathlib.AdmissibleClass
import LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean.IdealMembershipLemma

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure NuclearPersistencePackage where
  operatorType : Type u
  nuclearNorm : Prop
  idealClosureProperty : Prop
  predualDescription : Prop
  approximationProperty : Prop

structure NuclearPersistenceEvidence (N : NuclearPersistencePackage) where
  nuclearNormClosed : N.nuclearNorm
  idealClosurePropertyClosed : N.idealClosureProperty
  predualDescriptionClosed : N.predualDescription
  approximationPropertyClosed : N.approximationProperty

def NuclearPersistenceClosed (N : NuclearPersistencePackage) : Prop :=
  N.nuclearNorm ∧ N.idealClosureProperty ∧ N.predualDescription ∧ N.approximationProperty

theorem nuclear_persistence_closed_from_evidence (N : NuclearPersistencePackage) (E : NuclearPersistenceEvidence N) : NuclearPersistenceClosed N := by
  exact And.intro E.nuclearNormClosed (And.intro E.idealClosurePropertyClosed (And.intro E.predualDescriptionClosed E.approximationPropertyClosed))

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse