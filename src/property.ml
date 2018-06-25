type 'a t = 'a BsOakVirtualDom.Virtual_dom.Property.t

let create =
  BsOakVirtualDom.Virtual_dom.Property.create

let string key value = 
  BsOakVirtualDom.Virtual_dom.Property.create key (BsOakJson.Encode.string value)

let int key value = 
  BsOakVirtualDom.Virtual_dom.Property.create key (BsOakJson.Encode.int value)

let float key value =
  BsOakVirtualDom.Virtual_dom.Property.create key (BsOakJson.Encode.float value)

let bool key value = 
  BsOakVirtualDom.Virtual_dom.Property.create key (BsOakJson.Encode.bool value)

let map = 
  BsOakVirtualDom.Virtual_dom.Property.map

let style pairs =
  pairs
  |> List.map (fun (k, v) -> k ^ ": " ^ v)
  |> String.concat "; " 
  |> string "style"

let attribute = 
  string

let class' v = 
  string "class" v 

let class_list classes =
  classes
  |> List.filter snd
  |> List.map fst
  |> String.concat ", "
  |> string "class"

let id v = 
  string "id" v 

let title v = 
  string "title" v

let hidden v = 
  bool "hidden" v 

(* Inputs *)

let type' v = 
  string "type" v

let value v = 
  string "value" v

let default_value v = 
  string "defaultValue" v

let checked v = 
  bool "checked" v

let placeholder v = 
  string "placeholder" v

let selected v = 
  bool "selected" v

(* Input Helpers *)

let action v = 
  string "action" v

let disabled v = 
  bool "disabled" v

let method' v = 
  string "method" v

(* Event *)

let on event decoder =
  BsOakVirtualDom.Virtual_dom.Property.on event (BsOakVirtualDom.Virtual_dom.Property.Normal decoder)

let always_prevent_default msg =
  msg, true

let prevent_default_on event decoder =
  BsOakVirtualDom.Virtual_dom.Property.on event (BsOakVirtualDom.Virtual_dom.Property.MayPreventDefault decoder)

let on_click msg =
  on "onclick" (BsOakJson.Decode.succeed msg)

let on_submit msg =
  let module Json = BsOakJson.Decode in
  prevent_default_on "submit" (Json.map always_prevent_default (Json.succeed msg))