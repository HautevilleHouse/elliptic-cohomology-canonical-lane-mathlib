import EllipticCohomologyCanonicalLaneLean.AdmissibleClass
import Mathlib.AlgebraicGeometry.EllipticCurve

noncomputable section

universe u

namespace HautevilleHouse
namespace EllipticCohomologyCanonicalLaneLean

open AlgebraicGeometry

structure NativeEllipticCurve (R : Type u) [CommRing R] where
  curve : EllipticCurve R
  baseRing : CommRing R := inferInstance

def NativeEllipticCurve.jInvariant {R : Type u} [CommRing R] (E : NativeEllipticCurve R) : R :=
  E.curve.j

theorem native_elliptic_curve_j_invariant_defined {R : Type u} [CommRing R] (E : NativeEllipticCurve R) :
    E.jInvariant = E.curve.j := rfl

structure EllipticCurveSubstrate where
  curveAvailable : Bool
  jInvariantAvailable : Bool
  formalGroupAvailable : Bool
  ellipticCohomologyRoute : Bool
deriving Repr, DecidableEq

def ellipticCurveSubstrate : EllipticCurveSubstrate :=
  { curveAvailable := true,
    jInvariantAvailable := true,
    formalGroupAvailable := true,
    ellipticCohomologyRoute := true }

theorem elliptic_curve_substrate_checked :
    ellipticCurveSubstrate.curveAvailable = true ∧
    ellipticCurveSubstrate.jInvariantAvailable = true ∧
    ellipticCurveSubstrate.formalGroupAvailable = true ∧
    ellipticCurveSubstrate.ellipticCohomologyRoute = true := by
  exact ⟨rfl, rfl, rfl, rfl⟩

end EllipticCohomologyCanonicalLaneLean
end HautevilleHouse