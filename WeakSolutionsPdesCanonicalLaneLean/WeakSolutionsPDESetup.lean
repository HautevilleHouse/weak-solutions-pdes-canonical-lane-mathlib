import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure WeakSolutionAdmissibleObject where
  functionSpace : Type u
  pdeOperator : Type v
  boundaryCondition : Prop
  weakFormulation : Prop
  existenceClaim : Prop

structure AdmissibleWeakSolutionPackage where
  object : WeakSolutionAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse