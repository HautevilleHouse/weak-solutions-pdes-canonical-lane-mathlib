import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure ParabolicEvolutionPackage where
  timeDependentSpaces : Prop
  galerkinApproximation : Prop
  energyEstimates : Prop
  compactnessArguments : Prop
  existenceOfWeakSolution : Prop

structure ParabolicEvolutionEvidence (P : ParabolicEvolutionPackage) where
  timeDependentSpacesClosed : P.timeDependentSpaces
  galerkinApproximationClosed : P.galerkinApproximation
  energyEstimatesClosed : P.energyEstimates
  compactnessArgumentsClosed : P.compactnessArguments
  existenceOfWeakSolutionClosed : P.existenceOfWeakSolution

def ParabolicEvolutionClosed (P : ParabolicEvolutionPackage) : Prop :=
  P.timeDependentSpaces ∧ P.galerkinApproximation ∧ P.energyEstimates ∧
  P.compactnessArguments ∧ P.existenceOfWeakSolution

theorem parabolic_evolution_closed_from_evidence
    (P : ParabolicEvolutionPackage) (E : ParabolicEvolutionEvidence P) :
    ParabolicEvolutionClosed P := by
  exact And.intro E.timeDependentSpacesClosed
    (And.intro E.galerkinApproximationClosed
      (And.intro E.energyEstimatesClosed
        (And.intro E.compactnessArgumentsClosed E.existenceOfWeakSolutionClosed)))

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse