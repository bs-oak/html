module Property = Html_property

type 'a t = 'a  BsOakVirtualDom.Virtual_dom.Node.t

let text =  BsOakVirtualDom.Virtual_dom.Node.text
let node =  BsOakVirtualDom.Virtual_dom.Node.node
let map =  BsOakVirtualDom.Virtual_dom.Node.map


(* Headings *)

let h1 p c = node "h1" p c
let h2 p c = node "h2" p c
let h3 p c = node "h3" p c
let h4 p c = node "h4" p c
let h5 p c = node "h5" p c
let h6 p c = node "h6" p c

(* Grouping Content *)

let div p c = node "div" p c
let p p c = node "p" p c
let hr p c = node "hr" p c
let pre p c = node "pre" p c
let blockquote p c = node "blockquote" p c

(* Text *)

let span p c = node "span" p c
let a p c = node "a" p c
let code p c = node "code" p c
let em p c = node "em" p c
let strong p c = node "strong" p c
let i p c = node "i" p c
let b p c = node "b" p c
let u p c = node "u" p c
let sub p c = node "sub" p c
let sup p c = node "sup" p c
let br p c = node "br" p c

(* Lists *)

let ol p c = node "ol" p c
let ul p c = node "ul" p c
let li p c = node "li" p c
let dl p c = node "dl" p c
let dt p c = node "dt" p c
let dd p c = node "dd" p c

(* Embedded Content *)

let img p c = node "img" p c
let iframe p c = node "iframe" p c
let canvas p c = node "canvas" p c
let math p c = node "math" p c

(* Inputs *)

let form p c = node "form" p c
let input p c = node "input" p c
let textarea p c = node "textarea" p c
let button p c = node "button" p c
let select p c = node "select" p c
let option p c = node "option" p c

(* Sections *)

let section p c = node "section" p c
let nav p c = node "nav" p c
let article p c = node "article" p c
let aside p c = node "aside" p c
let header p c = node "header" p c
let footer p c = node "footer" p c
let address p c = node "address" p c
let main p c = node "main" p c
let body p c = node "body" p c

(* Figures *)

let figure p c = node "figure" p c
let figcaption p c = node "figcaption" p c

(* Tables *)

let table p c = node "table" p c
let caption p c = node "caption" p c
let colgroup p c = node "colgroup" p c
let col p c = node "col" p c
let tbody p c = node "tbody" p c
let thead p c = node "thead" p c
let tfoot p c = node "tfoot" p c
let tr p c = node "tr" p c
let td p c = node "td" p c
let th p c = node "th" p c

(* Less Common Elements *)

let fieldset p c = node "fieldset" p c
let legend p c = node "legend" p c
let label p c = node "label" p c
let datalist p c = node "datalist" p c
let optgroup p c = node "optgroup" p c
let keygen p c = node "keygen" p c
let output p c = node "output" p c
let progress p c = node "progress" p c
let meter p c = node "meter" p c

(* Audio & Video *)

let audio p c = node "audio" p c
let video p c = node "video" p c
let source p c = node "source" p c
let track p c = node "track" p c

(* Embedded Objects *)

let embed p c = node "embed" p c
let object' p c = node "object" p c
let param p c = node "param" p c

(* Text Edits *)

let ins p c = node "ins" p c
let del p c = node "del" p c

(* Semantic Text *)

let small p c = node "small" p c
let cite p c = node "cite" p c
let dfn p c = node "dfn" p c
let abbr p c = node "abbr" p c
let time p c = node "time" p c
let var p c = node "var" p c
let samp p c = node "samp" p c
let kbd p c = node "kbd" p c
let s p c = node "s" p c
let q p c = node "q" p c

(* Less Common Text Tags *)

let mark p c = node "mark" p c
let ruby p c = node "ruby" p c
let rt p c = node "rt" p c
let rp p c = node "rp" p c
let bdi p c = node "bdi" p c
let bdo p c = node "bdo" p c
let wbr p c = node "wbr" p c

(* Interactive Elements *)

let details p c = node "details" p c
let summary p c = node "summary" p c
let menuitem p c = node "menuitem" p c
let menu p c = node "menu" p c