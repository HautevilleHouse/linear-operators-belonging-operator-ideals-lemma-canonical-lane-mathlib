import LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean.OperatorIdealCharacterization

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

structure OperatorIdealSpectralPropertiesPackage (O : OperatorIdealAdmittedObject) where
  spectrumCondition : (op : O.operatorClass) → Prop
  idealClosureImpliesSpectralCondition : ∀ (op : O.operatorClass), O.idealClosureProperty op → spectrumCondition op
  spectralConditionImpliesIdealClosure : ∀ (op : O.operatorClass), spectrumCondition op → O.idealClosureProperty op

def OperatorIdealSpectralPropertiesClosed (O : OperatorIdealAdmittedObject) (S : OperatorIdealSpectralPropertiesPackage O) : Prop :=
  ∀ (op : O.operatorClass), O.idealClosureProperty op ↔ S.spectrumCondition op

theorem operator_ideal_spectral_properties_closed (O : OperatorIdealAdmittedObject) (S : OperatorIdealSpectralPropertiesPackage O) :
    OperatorIdealSpectralPropertiesClosed O S := by
  intro op
  exact ⟨S.idealClosureImpliesSpectralCondition op, S.spectralConditionImpliesIdealClosure op⟩

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse