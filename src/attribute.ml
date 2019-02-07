module Decode = BsOakJson.Decode
module Encode = BsOakJson.Encode
module Attribute = BsOakVirtualDom.Virtual_dom.Attribute

type 'a t = 'a Attribute.t

(* internal helpers *)

let string_property key value =
  Attribute.property key (Encode.string value)

let bool_property key value =
  Attribute.property key (Encode.bool value)

let no_javascript_uri s = 
  let re = [%re "/^javascript:/i"] in
  let tester = Js.String.replaceByRe [%re "/\\s/g"] "" s in
  if Js.Re.test tester re then "" else s

let no_javascript_or_html_uri value =
  let re = [%re "/^\\s*(javascript:|data:text\\/html)/i"] in
  if Js.Re.test value re then "" else value

(* primitives *)

let styles pairs =
  pairs
  |> List.map (fun (key, value) -> key ^ ": " ^ value)
  |> String.concat "; " 
  |> Attribute.attribute "style"

let property key value = 
  Attribute.property key value

let attribute key value = 
  Attribute.attribute key value

let map = 
  Attribute.map

(* super common attributes *)

let class' v = 
  string_property "className" v 

let class_list classes =
  classes
  |> List.filter snd
  |> List.map fst
  |> String.concat " "
  |> class'

let id v = 
  string_property "id" v 

let title v = 
  string_property "title" v 

let hidden v = 
  bool_property "hidden" v 

(* inputs *)

let type' v = 
  string_property "type" v

let value v = 
  string_property "value" v

let checked v = 
  bool_property "checked" v

let placeholder v = 
  string_property "placeholder" v

let selected v = 
  bool_property "selected" v

(* input helpers *)

let accept v = 
  string_property "accept" v

let accept_charset v = 
  string_property "acceptCharset" v

let action v = 
  string_property "action" (no_javascript_uri v)

let autocomplete v = 
  string_property "autocomplete" (if v then "on" else "off")

let autofocus v = 
  bool_property "autofocus" v

let disabled v = 
  bool_property "disabled" v

let enctype v = 
  string_property "enctype" v

let list v =
  attribute "list" v

let maxlength v =
  attribute "maxlength" (string_of_int v)

let minlength v =
  attribute "minlength" (string_of_int v)
  
let method' v =
  string_property "method" v
  
let multiple v =
  bool_property "multiple" v

let name v =
  string_property "name" v
   
let novalidate v =
  bool_property "noValidate" v
  
let pattern v =
  string_property "pattern" v
  
let readonly v =
  bool_property "readOnly" v            
    
let required v =
  bool_property "required" v            
    
let size v =
  attribute "size" (string_of_int v)           
    
let for' v =
  string_property "htmlFor" v           

let form v =
  attribute "form" v    
    
(* input ranges *)

let max v =
  string_property "max" v           

let min v =
  string_property "min" v           

let step v =
  string_property "step" v           

(* input text areas *)

let cols v =
  attribute "cols" (string_of_int v)        

let rows v =
  attribute "rows" (string_of_int v)        

let wrap v =
  string_property "wrap" v           

(* links and areas *)

let href v =
  string_property "href" (no_javascript_uri v)

let target v =
  string_property "target" v           

let download v =
  string_property "download" v           

let hreflang v =
  string_property "hreflang" v           

let media v =
  attribute "media" v

let ping v =
  string_property "ping" v           

let rel v =
  attribute "rel" v

(* maps *)

let ismap v =
  bool_property "isMap" v

let usemap v =
  string_property "useMap" v

let shape v =
  string_property "shape" v

let coords v =
  string_property "coords" v

(* embedded content *)

let src v =
  string_property "src" (no_javascript_or_html_uri v)

let height v =
  attribute "height" (string_of_int v)

let width v =
  attribute "width" (string_of_int v)

let alt v =
  string_property "alt" v

(* embedded content - audio and video *)

let autoplay v =
  bool_property "autoplay" v

let controls v =
  bool_property "controls" v

let loop v =
  bool_property "loop" v

let preload v =
  string_property "preload" v

let poster v =
  string_property "poster" v

let default v =
  bool_property "default" v

let kind v =
  string_property "kind" v

let srclang v =
  string_property "srclang" v

(* iframes *)

let sandbox v =
  string_property "sandbox" v

let srcdoc v =
  string_property "srcdoc" v

(* ordered lists *)

let reversed v =
  bool_property "reversed" v

let start v =
  string_property "start" (string_of_int v)

(* tables *)

let align v =
  string_property "align" v

let colspan v =
  attribute "colspan" (string_of_int v)

let rowspan v =
  attribute "rowspan" (string_of_int v)

let headers v =
  string_property "headers" v

let scope v =
  string_property "scope" v

(* less common global attributes *)

let accesskey v =
  string_property "accessKey" v

let contenteditable v =
  bool_property "contentEditable" v

let contextmenu v =
  attribute "contextmenu" v

let dir v =
  string_property "dir" v

let draggable v =
  attribute "draggable" v

let dropzone v =
  string_property "dropzone" v

let itemprop v =
  attribute "itemprop" v

let lang v =
  string_property "lang" v

let spellcheck v =
  bool_property "spellcheck" v

let tabindex v =
  attribute "tabIndex" (string_of_int v)

(* miscellaneous *)

let cite v =
  string_property "cite" v

let datetime v =
  attribute "datetime" v

let pubdate v =
  attribute "pubdate" v

let manifest v =
  attribute "manifest" v

(* events - custom *)

let on event decoder =
  Attribute.on event (Attribute.Normal decoder)

let prevent_default_on event decoder =
  Attribute.on event (Attribute.MayPreventDefault decoder)

let stop_propagation_on event decoder =
  Attribute.on event (Attribute.MayStopPropagation decoder)

let custom event decoder =
  Attribute.on event (Attribute.Custom decoder)

(* events - custom decoders *)

let target_value =
  Decode.at ["target"; "value"] Decode.string

let target_checked =
  Decode.at ["target"; "checked"] Decode.bool

let key_code =
  Decode.field "keyCode" Decode.int

(* events - mouse *)

let on_click msg =
  on "onclick" (Decode.succeed msg)

let on_double_click msg =
  on "dblclick" (Decode.succeed msg)

let on_mouse_down msg =
  on "mousedown" (Decode.succeed msg)

let on_mouse_up msg =
  on "mouseup" (Decode.succeed msg)

let on_mouse_enter msg =
  on "mouseenter" (Decode.succeed msg)

let on_mouse_leave msg =
  on "mouseleave" (Decode.succeed msg)

let on_mouse_over msg =
  on "mouseover" (Decode.succeed msg)

let on_mouse_out msg =
  on "mouseout" (Decode.succeed msg)

(* events - forms *)

let always_stop x =
  (x, true)

let always_prevent_default msg =
  msg, true

let on_input tagger =
  stop_propagation_on "oninput" (Decode.map always_stop (Decode.map tagger target_value))

let on_check tagger =
  on "onchange" (Decode.map tagger target_checked)
  
let on_submit msg =
  prevent_default_on "onsubmit" (Decode.map always_prevent_default (Decode.succeed msg))

let on_file_change tagger =
  let value_to_file_list v = Obj.magic v in
  on "onchange" (Decode.map tagger (Decode.map value_to_file_list (Decode.at ["target"; "files"] Decode.value)))

(* events - focus *)

let on_blur msg =
  on "onblur" (Decode.succeed msg)

let on_focus msg =
  on "onfocus" (Decode.succeed msg)