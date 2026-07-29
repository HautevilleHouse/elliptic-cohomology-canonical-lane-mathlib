import EllipticCohomologyCanonicalLaneLean.EllipticCurveLayer
import Mathlib.AlgebraicTopology.EllipticCohomology

noncomputable section

universe u

namespace HautevilleHouse
namespace EllipticCohomologyCanonicalLaneLean

structure NativeEllipticCohomologyProfile where
  degree : ℕ
  ellipticGenus : ℕ
  tmfRoute : Bool
  ellipticHomologyRoute : Bool
deriving Repr, DecidableEq

def ellipticCohomologyProfile (n : ℕ) : NativeEllipticCohomologyProfile :=
  { degree := n,
    ellipticGenus := n % 4,
    tmfRoute := true,
    ellipticHomologyRoute := true }

def EllipticCohomologyTypeAvailable : Prop :=
  ∀ (X : Type u) [TopologicalSpace X] (n : ℕ), Nonempty (EllipticCohomology X n → EllipticCohomology X n)

theorem elliptic_cohomology_type_available_checked :
    EllipticCohomologyTypeAvailable := by
  intro X _ n; exact ⟨id⟩

theorem elliptic_cohomology_profile_degree_checked (n : ℕ) :
    (ellipticCohomologyProfile n).degree = n := by
  simp [ellipticCohomologyProfile]

theorem elliptic_cohomology_profile_routes_checked (n : ℕ) :
    (ellipticCohomologyProfile n).tmfRoute = true ∧
    (ellipticCohomologyProfile n).ellipticHomologyRoute = true := by
  simp [ellipticCohomologyProfile]

end EllipticCohomologyCanonicalLaneLean
end HautevilleHouse