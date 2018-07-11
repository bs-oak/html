module Decode = BsOakJson.Decode
module Encode = BsOakJson.Encode
module Property = BsOakVirtualDom.Virtual_dom.Property

type 'a t = 'a Property.t

let create =
  Property.create

let string key value = 
  Property.create key (Encode.string value)

let int key value = 
  Property.create key (Encode.int value)

let float key value =
  Property.create key (Encode.float value)

let bool key value = 
  Property.create key (Encode.bool value)

let map = 
  Property.map

let style pairs =
  pairs
  |> List.map (fun (k, v) -> k ^ ": " ^ v)
  |> String.concat "; " 
  |> string "style"

let attribute = 
  string

let class' v = 
  string "className" v 

let class_list classes =
  classes
  |> List.filter snd
  |> List.map fst
  |> String.concat ", "
  |> string "className"

let href v =
  string "href" v

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

let always_prevent_default msg =
  msg, true

let always_stop x =
  (x, true)

let target_value =
  Decode.at ["target"; "value"] Decode.string

let target_checked =
  Decode.at ["target"; "checked"] Decode.bool

let on event decoder =
  Property.on event (Property.Normal decoder)

let prevent_default_on event decoder =
  Property.on event (Property.MayPreventDefault decoder)

let stop_propagation_on event decoder =
  Property.on event (Property.MayStopPropagation decoder)

let on_click msg =
  on "onclick" (Decode.succeed msg)

let on_submit msg =
  prevent_default_on "onsubmit" (Decode.map always_prevent_default (Decode.succeed msg))

let on_input tagger =
  stop_propagation_on "oninput" (Decode.map always_stop (Decode.map tagger target_value))

let on_check tagger =
  on "onchange" (Decode.map tagger target_checked)
  
let on_focus msg =
  on "onfocus" (Decode.succeed msg)

let on_blur msg =
  on "onblur" (Decode.succeed msg)