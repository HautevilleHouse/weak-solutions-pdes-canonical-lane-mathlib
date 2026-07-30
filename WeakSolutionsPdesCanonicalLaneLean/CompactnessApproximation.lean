import WeakSolutionsPdesCanonicalLaneLean.Regularity

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure CompactnessApproximationPackage (W : WeakFormulationPackage) (E : ExistenceUniquenessPackage W) (R : RegularityPackage W E) where
  galerkinApproximation : Prop
  compactnessArgument : Prop

def CompactnessApproximationClosed (W : WeakFormulationPackage) (E : ExistenceUniquenessPackage W) (R : RegularityPackage W E) (C : CompactnessApproximationPackage W E R) : Prop :=
  C.galerkinApproximation ∧ C.compactnessArgument

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse
