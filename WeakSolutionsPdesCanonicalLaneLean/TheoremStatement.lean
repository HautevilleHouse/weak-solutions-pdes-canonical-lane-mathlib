import HautevilleHouse.WeakSolutionsPdesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure WeakSolutionsPdesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WeakSolutionsPdesAdmittedObject where
  space : WeakSolutionsPdesSpace
  weakSolutionExists : Prop
  uniqueness : Prop
  regularity : Prop
  conclusion : weakSolutionExists ∧ uniqueness ∧ regularity

def WeakSolutionsPdesWitnessClosed (O : WeakSolutionsPdesAdmittedObject) : Prop :=
  O.conclusion

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse
