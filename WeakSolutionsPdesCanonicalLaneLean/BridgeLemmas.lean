import WeakSolutionsPdesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WeakSolutionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse
