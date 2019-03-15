type 'a t = 'a BsOakVirtualDom.Virtual_dom.Node.t

let text = BsOakVirtualDom.Virtual_dom.Node.text
let node = BsOakVirtualDom.Virtual_dom.Node.node
let map = BsOakVirtualDom.Virtual_dom.Node.map

(* Headings *)

let h1 a c = node "h1" a c
let h2 a c = node "h2" a c
let h3 a c = node "h3" a c
let h4 a c = node "h4" a c
let h5 a c = node "h5" a c
let h6 a c = node "h6" a c

(* Grouping Content *)

let div a c = node "div" a c
let p a c = node "p" a c
let hr a c = node "hr" a c
let pre a c = node "pre" a c
let blockquote a c = node "blockquote" a c

(* Text *)

let span a c = node "span" a c
let a a' c = node "a" a' c
let code a c = node "code" a c
let em a c = node "em" a c
let strong a c = node "strong" a c
let i a c = node "i" a c
let b a c = node "b" a c
let u a c = node "u" a c
let sub a c = node "sub" a c
let sup a c = node "sup" a c
let br a c = node "br" a c

(* Lists *)

let ol a c = node "ol" a c
let ul a c = node "ul" a c
let li a c = node "li" a c
let dl a c = node "dl" a c
let dt a c = node "dt" a c
let dd a c = node "dd" a c

(* Embedded Content *)

let img a c = node "img" a c
let iframe a c = node "iframe" a c
let canvas a c = node "canvas" a c
let math a c = node "math" a c

(* Inputs *)

let form a c = node "form" a c
let input a c = node "input" a c
let textarea a c = node "textarea" a c
let button a c = node "button" a c
let select a c = node "select" a c
let option a c = node "option" a c

(* Sections *)

let section a c = node "section" a c
let nav a c = node "nav" a c
let article a c = node "article" a c
let aside a c = node "aside" a c
let header a c = node "header" a c
let footer a c = node "footer" a c
let address a c = node "address" a c
let main a c = node "main" a c

(* Figures *)

let figure a c = node "figure" a c
let figcaption a c = node "figcaption" a c

(* Tables *)

let table a c = node "table" a c
let caption a c = node "caption" a c
let colgroup a c = node "colgroup" a c
let col a c = node "col" a c
let tbody a c = node "tbody" a c
let thead a c = node "thead" a c
let tfoot a c = node "tfoot" a c
let tr a c = node "tr" a c
let td a c = node "td" a c
let th a c = node "th" a c

(* Less Common Elements *)

let fieldset a c = node "fieldset" a c
let legend a c = node "legend" a c
let label a c = node "label" a c
let datalist a c = node "datalist" a c
let optgroup a c = node "optgroup" a c
let output a c = node "output" a c
let progress a c = node "progress" a c
let meter a c = node "meter" a c

(* Audio & Video *)

let audio a c = node "audio" a c
let video a c = node "video" a c
let source a c = node "source" a c
let track a c = node "track" a c

(* Embedded Objects *)

let embed a c = node "embed" a c
let object' a c = node "object" a c
let param a c = node "param" a c

(* Text Edits *)

let ins a c = node "ins" a c
let del a c = node "del" a c

(* Semantic Text *)

let small a c = node "small" a c
let cite a c = node "cite" a c
let dfn a c = node "dfn" a c
let abbr a c = node "abbr" a c
let time a c = node "time" a c
let var a c = node "var" a c
let samp a c = node "samp" a c
let kbd a c = node "kbd" a c
let s a c = node "s" a c
let q a c = node "q" a c

(* Less Common Text Tags *)

let mark a c = node "mark" a c
let ruby a c = node "ruby" a c
let rt a c = node "rt" a c
let rp a c = node "rp" a c
let bdi a c = node "bdi" a c
let bdo a c = node "bdo" a c
let wbr a c = node "wbr" a c

(* Interactive Elements *)

let details a c = node "details" a c
let summary a c = node "summary" a c
let menuitem a c = node "menuitem" a c
let menu a c = node "menu" a c

(* Keyed Nodes *)

let keyed_node = BsOakVirtualDom.Virtual_dom.Node.keyed_node
let keyed_ol a c = keyed_node "ol" a c
let keyed_ul a c = keyed_node "ul" a c