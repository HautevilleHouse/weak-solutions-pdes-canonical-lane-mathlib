import WeakSolutionsPdesCanonicalLaneLean.CompactnessApproximation

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure EndpointClassificationPackage (W : WeakFormulationPackage) (E : ExistenceUniquenessPackage W) (R : RegularityPackage W E) (C : CompactnessApproximationPackage W E R) where
  solutionClassifiedInSpace : Prop
  endpointMatchesExpected : Prop

def EndpointClassificationClosed (W : WeakFormulationPackage) (E : ExistenceUniquenessPackage W) (R : RegularityPackage W E) (C : CompactnessApproximationPackage W E R) (Epkg : EndpointClassificationPackage W E R C) : Prop :=
  Epkg.solutionClassifiedInSpace ∧ Epkg.endpointMatchesExpected

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse
