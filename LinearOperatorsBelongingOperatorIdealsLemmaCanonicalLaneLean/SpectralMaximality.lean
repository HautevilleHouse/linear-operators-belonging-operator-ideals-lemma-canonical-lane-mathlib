import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure SpectralMaximalityClass where
  operatorSpace : Type u
  normIdeal : Prop
  spectralInvariance : Prop
  maximalityCondition : Prop

structure SpectralMaximalityEvidence (S : SpectralMaximalityClass) where
  normIdealClosed : S.normIdeal
  spectralInvarianceClosed : S.spectralInvariance
  maximalityConditionClosed : S.maximalityCondition

def SpectralMaximalityClosed (S : SpectralMaximalityClass) : Prop :=
  S.normIdeal ∧ S.spectralInvariance ∧ S.maximalityCondition

theorem spectral_maximality_closed_from_evidence (S : SpectralMaximalityClass)
    (E : SpectralMaximalityEvidence S) : SpectralMaximalityClosed S := by
  exact And.intro E.normIdealClosed (And.intro E.spectralInvarianceClosed E.maximalityConditionClosed)

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse