import canonicalLaneMathlib.AdmissibleClass
import WeakSolutionsPdesCanonicalLaneLean.BridgeLemmas
import WeakSolutionsPdesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

def ConstrainedWeakSolutionsPdesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_weak_solutions_pdes_endgame (A : AdmissibleClass) : ConstrainedWeakSolutionsPdesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse