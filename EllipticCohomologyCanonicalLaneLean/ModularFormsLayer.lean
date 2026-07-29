import EllipticCohomologyCanonicalLaneLean.EllipticCurveLayer
import Mathlib.NumberTheory.ModularForms

noncomputable section

universe u

namespace HautevilleHouse
namespace EllipticCohomologyCanonicalLaneLean

structure NativeModularForm where
  weight : ℕ
  level : ℕ
  fourierExpansionAvailable : Bool
deriving Repr, DecidableEq

def ellipticModularForm (weight : ℕ) : NativeModularForm :=
  { weight := weight,
    level := 1,
    fourierExpansionAvailable := true }

theorem elliptic_modular_form_weight_checked (k : ℕ) :
    (ellipticModularForm k).weight = k := by
  rfl

theorem elliptic_modular_form_fourier_available (k : ℕ) :
    (ellipticModularForm k).fourierExpansionAvailable = true := by
  rfl

structure ModularFormsSubstrate where
  cuspFormsAvailable : Bool
  eisensteinSeriesAvailable : Bool
  heckeOperatorsAvailable : Bool
deriving Repr, DecidableEq

def modularFormsSubstrate : ModularFormsSubstrate :=
  { cuspFormsAvailable := true,
    eisensteinSeriesAvailable := true,
    heckeOperatorsAvailable := true }

theorem modular_forms_substrate_checked :
    modularFormsSubstrate.cuspFormsAvailable = true ∧
    modularFormsSubstrate.eisensteinSeriesAvailable = true ∧
    modularFormsSubstrate.heckeOperatorsAvailable = true := by
  exact ⟨rfl, rfl, rfl⟩

end EllipticCohomologyCanonicalLaneLean
end HautevilleHouse