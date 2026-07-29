import EllipticCohomologyCanonicalLaneLean.AdmissibleClass
import Mathlib.AlgebraicGeometry.EllipticCurve

/-!
# Elliptic Cohomology Layer

This module represents the elliptic cohomology side as formal group data
and elliptic curve structures available in Mathlib.
-/

noncomputable section

universe u

namespace HautevilleHouse
namespace EllipticCohomologyCanonicalLaneLean

open AlgebraicGeometry

structure NativeEllipticCurve where
  base : Scheme.{u}
  curve : EllipticCurve base

def NativeFormalGroup (E : NativeEllipticCurve) : Type u :=
  E.curve.formalGroup

structure EllipticCohomologyData (X : NativeEllipticCurve) where
  formalGroup : NativeFormalGroup X
  cohomologyColor : String

def ellipticCohomologySubstrate : Prop :=
  ∃ (E : NativeEllipticCurve), Nonempty (NativeFormalGroup E)

theorem elliptic_cohomology_substrate_available : ellipticCohomologySubstrate := by
  refine ⟨?_, ?_⟩
  · refine {
      base := Spec (CommRing.of ℚ)
      curve := ?_
    }
    have h : IsUnit ((-27 : ℚ)) := by
      exact isUnit.mk (Units.mk0 (-27) (by norm_num))
    let curve : EllipticCurve (Spec (CommRing.of ℚ)) := {
      a1 := 0
      a2 := 0
      a3 := 0
      a4 := 0
      a6 := 1
      Δ := -27
      hΔ := h
    }
    exact curve
  · exact ⟨E.curve.formalGroup⟩

end EllipticCohomologyCanonicalLaneLean
end HautevilleHouse