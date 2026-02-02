/-
Copyright (c) 2026 Pavel Grigorenko. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Pavel Grigorenko
-/
module

public import Mathlib.Combinatorics.Enumerative.Catalan.Basic
public import Mathlib.LinearAlgebra.Matrix.Defs
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

@[expose] public section

@[simp]
def catalan_matrix (n : ℕ) : Matrix (Fin n) (Fin n) ℤ :=
  fun i j => Nat.choose (i + j + 1) (2 * j)

theorem TonyFoster (n : ℕ) : catalan n = (catalan_matrix n).det := by
  sorry
