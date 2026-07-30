import WeakSolutionsPdesCanonicalLaneLean.ExistenceUniqueness

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure RegularityPackage (W : WeakFormulationPackage) (E : ExistenceUniquenessPackage W) where
  interiorRegularity : Prop
  boundaryRegularity : Prop

def RegularityClosed (W : WeakFormulationPackage) (E : ExistenceUniquenessPackage W) (R : RegularityPackage W E) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse
