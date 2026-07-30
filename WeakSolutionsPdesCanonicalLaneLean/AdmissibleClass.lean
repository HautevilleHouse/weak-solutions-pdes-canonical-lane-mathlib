import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure AdmissibleClass where
  object : WeakSolutionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WeakSolutionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse
