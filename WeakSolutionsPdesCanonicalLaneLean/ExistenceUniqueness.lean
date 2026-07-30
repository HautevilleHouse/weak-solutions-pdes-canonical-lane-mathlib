import WeakSolutionsPdesCanonicalLaneLean.WeakFormulation

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure ExistenceUniquenessPackage (W : WeakFormulationPackage) where
  solutionSpace : Type
  existenceProof : Prop
  uniquenessProof : Prop

def ExistenceUniquenessClosed (W : WeakFormulationPackage) (E : ExistenceUniquenessPackage W) : Prop :=
  E.existenceProof ∧ E.uniquenessProof

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse
