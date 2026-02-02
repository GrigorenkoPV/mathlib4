/-
Copyright (c) 2026 Pavel Grigorenko. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Pavel Grigorenko
-/
module

public import Mathlib.Combinatorics.Enumerative.Catalan.Basic

@[expose] public section

theorem ZhiWeiSun (m x n : ℕ) (hx : x > 1) (hm : m > 1) : catalan n ≠ x ^ m := by
  sorry
