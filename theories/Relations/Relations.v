
(* $Id$ *)

Require Export Relation_Definitions.
Require Export Relation_Operators.
Require Export Operators_Properties.

Lemma inverse_image_of_equivalence : (A,B:Set)(f:A->B)
  (r:(relation B))(equivalence B r)->(equivalence A [x,y:A](r (f x) (f y))).
Intros; Split; Elim H; Red; Auto.
Intros; Apply equiv_trans with (f y); Assumption.
Save.

Lemma inverse_image_of_eq : (A,B:Set)(f:A->B)
  (equivalence A [x,y:A](f x)=(f y)).
Split; Red;
[ (* reflexivity *)  Reflexivity
| (* transitivity *) Intros; Transitivity (f y); Assumption
| (* symmetry *) Intros; Symmetry; Assumption
].
Save.
