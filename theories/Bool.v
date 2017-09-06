(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

Require Import Ltac2.Init.

Ltac2 andb x y :=
  match x with
  | true => y
  | false => false
  end.
Ltac2 orb x y :=
  match x with
  | true => true
  | false => y
  end.
Ltac2 implb x y :=
  match x with
  | true => y
  | false => true
  end.
Ltac2 negb x :=
  match x with
  | true => false
  | false => true
  end.
Ltac2 xorb x y :=
  match x with
  | true
    => match y with
       | true => false
       | false => true
       end
  | false
    => match y with
       | true => true
       | false => false
       end
  end.
