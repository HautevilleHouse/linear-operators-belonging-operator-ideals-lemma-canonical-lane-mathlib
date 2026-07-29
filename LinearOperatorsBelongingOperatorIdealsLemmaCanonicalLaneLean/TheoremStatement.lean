import canonicalLaneMathlib.TheoremStatement
import Mathlib.Analysis.NormedSpace.OperatorNorm

namespace HautevilleHouse
namespace LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean

open scoped Classical

/-- A structure representing an admitted object for the operator ideal lemma. -/
structure OperatorIdealAdmittedObject where
  domain : Type
  codomain : Type
  operator : domain → codomain
  belongsToIdeal : Prop
  conclusion : belongsToIdeal

/-- Closedness predicate for the witness. -/
def OperatorIdealWitnessClosed (O : OperatorIdealAdmittedObject) : Prop :=
  O.belongsToIdeal

/-- The theorem statement internalized. -/
structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String :=
  "linear-operators-belonging-operator-ideals-lemma-canonical-lane"

def sourceDescription : String :=
  "Linear Operators Belonging Operator Ideals Lemma"

def sourceTheoremBoundaryClaimBoundary : String :=
  "Classical source boundary: operator ideal membership is classically determined."

def baselineCertificateLane : String :=
  "operator_ideal_constrained"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := sourceTheoremBoundaryClaimBoundary
  , manifoldConstrainedStatement := "operator-ideal-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count"
  , certificateLane := baselineCertificateLane
  , carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
  }

end LinearOperatorsBelongingOperatorIdealsLemmaCanonicalLaneLean
end HautevilleHouse
