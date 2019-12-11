(** [Ordered_set_lang.t] is a sexp-based representation for an ordered list of
    strings, with some set like operations. *)
open! Stdune

open Import

type t

val decode : t Dune_lang.Decoder.t

(** Return the location of the set. [loc standard] returns [None] *)
val loc : t -> Loc.t option

val eval :
     t
  -> parse:(loc:Loc.t -> string -> 'a)
  -> eq:('a -> 'a -> bool)
  -> standard:'a list
  -> 'a list

module Unordered (Key : Ordered_set_lang_intf.Key) :
  Ordered_set_lang_intf.Unordered_eval with type t = t and module Key := Key

val eval_loc :
     t
  -> parse:(loc:Loc.t -> string -> 'a)
  -> eq:('a -> 'a -> bool)
  -> standard:(Loc.t * 'a) list
  -> (Loc.t * 'a) list

val standard : t

(** Replace all occurrences of [:standard] with the empty set. *)
val replace_standard_with_empty : t -> t

val is_standard : t -> bool

val field :
     ?check:unit Dune_lang.Decoder.t
  -> string
  -> t Dune_lang.Decoder.fields_parser

module Unexpanded : sig
  type expanded = t

  type t

  include Dune_lang.Conv.S with type t := t

  val encode : t -> Dune_lang.t list

  val standard : t

  val of_strings : pos:string * int * int * int -> string list -> t

  val field :
       ?check:unit Dune_lang.Decoder.t
    -> string
    -> t Dune_lang.Decoder.fields_parser

  val has_special_forms : t -> bool

  (** List of files needed to expand this set *)
  val files : t -> f:(String_with_vars.t -> Path.t) -> Path.Set.t

  (** Expand [t] using with the given file contents. [file_contents] is a map
      from filenames to their parsed contents. Every [(:include fn)] in [t] is
      replaced by [Map.find files_contents fn]. Every element is converted to a
      string using [f]. *)
  val expand :
       t
    -> dir:Path.t
    -> files_contents:Dune_lang.Ast.t Path.Map.t
    -> f:(String_with_vars.t -> Value.t list)
    -> expanded

  type position =
    | Pos
    | Neg

  (** Fold a function over all strings in a set. The callback receive whether
      the string is in position or negative position, i.e. on the left or right
      of a [\] operator. *)
  val fold_strings :
    t -> init:'a -> f:(position -> String_with_vars.t -> 'a -> 'a) -> 'a
end
with type expanded := t

module Unordered_string :
  Ordered_set_lang_intf.Unordered_eval with type t = t and module Key := String