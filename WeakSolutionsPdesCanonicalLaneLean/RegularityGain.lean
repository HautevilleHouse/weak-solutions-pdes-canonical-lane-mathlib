import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure RegularityGainPackage where
  initialRegularity : Prop
  gainInRegularity : Prop
  bootstrappingArgument : Prop
  finalRegularity : Prop
  boundaryRegular : Prop

structure RegularityGainEvidence (R : RegularityGainPackage) where
  initialRegularityClosed : R.initialRegularity
  gainInRegularityClosed : R.gainInRegularity
  bootstrappingArgumentClosed : R.bootstrappingArgument
  finalRegularityClosed : R.finalRegularity
  boundaryRegularClosed : R.boundaryRegular

def RegularityGainClosed (R : RegularityGainPackage) : Prop :=
  R.initialRegularity ∧ R.gainInRegularity ∧ R.bootstrappingArgument ∧ R.finalRegularity ∧ R.boundaryRegular

theorem regularity_gain_closed_from_evidence
    (R : RegularityGainPackage) (E : RegularityGainEvidence R) :
    RegularityGainClosed R := by
  exact And.intro E.initialRegularityClosed
    (And.intro E.gainInRegularityClosed
      (And.intro E.bootstrappingArgumentClosed
        (And.intro E.finalRegularityClosed E.boundaryRegularClosed)))

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse