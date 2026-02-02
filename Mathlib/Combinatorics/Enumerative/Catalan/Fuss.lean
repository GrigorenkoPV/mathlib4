/-
Copyright (c) 2026 Pavel Grigorenko. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Pavel Grigorenko
-/
module

public import Mathlib.Combinatorics.Enumerative.Catalan.Basic

@[expose] public section

def fuss (m p r : ℕ) :=
  match m with
    | 0 => 1
    | m' + 1 =>
      match r with
        | 0 => 0
        | r' + 1 => fuss (m' + 1) p r' + fuss m' p (p + r')

@[simp]
theorem fuss_alt (m p r : ℕ) :
    fuss m p r =  ((m * p + r).choose m) * r / (m * p + r) := by
  sorry


theorem fuss_catalan (n : ℕ) :
    fuss n 2 1 = catalan n := by
  simp [catalan_eq_centralBinom_div, Nat.centralBinom_eq_two_mul_choose]
  sorry

theorem fuss_p0_binom (m r : ℕ) (hr : 0 < r) :
    fuss m 0 r = r.choose m := by
  simp [Nat.mul_div_cancel _ hr]
