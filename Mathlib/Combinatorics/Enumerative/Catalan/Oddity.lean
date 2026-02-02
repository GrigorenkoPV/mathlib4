/-
Copyright (c) 2026 Pavel Grigorenko. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Pavel Grigorenko
-/
module

public import Mathlib.Combinatorics.Enumerative.Catalan.Basic
public import Mathlib.Data.Nat.ModEq

@[expose] public section

theorem catalan_odd_iff (n : ℕ) : Odd (catalan n) ↔ ∃ a, n = 2 ^ a - 1 := by
  constructor
  · sorry
  · intro ⟨a, ha⟩
    rw [catalan_eq_centralBinom_div, Nat.centralBinom, Nat.two_mul,
      Nat.choose_eq_asc_factorial_div_factorial, Nat.ascFactorial_eq_factorial_mul_choose]
    have hx : (a b : Nat) -> a * b = b * a := by sorry
    rw [hx _ _, Nat.mul_div_cancel]
    · rw [Nat.choose_eq_asc_factorial_div_factorial, Nat.ascFactorial_eq_div,
        Nat.div_div_eq_div_mul, hx, ←Nat.factorial_succ, Odd]
      sorry
    · exact Nat.factorial_pos n

-- Lin proves for every odd Catalan number C_n, we have C_n == 1 (mod 4)
theorem catalan_neq_3_mod_4 (n : ℕ) : ¬ (catalan n ≡ 3 [MOD 4]) := by
  induction n using Nat.case_strong_induction_on with
  | hz => simp [Nat.ModEq]
  | hi k hk => sorry
