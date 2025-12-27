; Outline structure for HTTP files

; Request with @name attribute in preceding comment
; Shows comment as name, with method and URL as context
(section
  (comment) @name
  .
  (request
    (method) @context
    (target_url) @context.extra) @item
  (#match? @name ".*@name"))

; Request without @name attribute (fallback)
; Shows method as name with URL as context
(request
  (method) @name
  (target_url) @context) @item

; Variable declarations
(variable_declaration
  name: (identifier) @name) @item
