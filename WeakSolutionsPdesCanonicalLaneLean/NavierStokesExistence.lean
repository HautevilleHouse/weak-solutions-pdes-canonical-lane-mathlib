import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure NavierStokesExistencePackage where
  functionSpacesDefined : Prop
  weakFormulation : Prop
  approximationScheme : Prop
  energyInequality : Prop
  pressureRecovery : Prop

structure NavierStokesExistenceEvidence (N : NavierStokesExistencePackage) where
  functionSpacesDefinedClosed : N.functionSpacesDefined
  weakFormulationClosed : N.weakFormulation
  approximationSchemeClosed : N.approximationScheme
  energyInequalityClosed : N.energyInequality
  pressureRecoveryClosed : N.pressureRecovery

def NavierStokesExistenceClosed (N : NavierStokesExistencePackage) : Prop :=
  N.functionSpacesDefined ∧ N.weakFormulation ∧ N.approximationScheme ∧
  N.energyInequality ∧ N.pressureRecovery

theorem navier_stokes_existence_closed_from_evidence
    (N : NavierStokesExistencePackage) (E : NavierStokesExistenceEvidence N) :
    NavierStokesExistenceClosed N := by
  exact And.intro E.functionSpacesDefinedClosed
    (And.intro E.weakFormulationClosed
      (And.intro E.approximationSchemeClosed
        (And.intro E.energyInequalityClosed E.pressureRecoveryClosed)))

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse