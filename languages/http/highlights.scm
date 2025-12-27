; Highlight HTTP methods
(method) @function.method

; Highlight HTTP comments
(comment) @comment

; Highlight URLs
(target_url) @string.url

; Highlight HTTP headers
(header name: (header_entity) @property)
(header value: (value) @string)

; Highlight HTTP status codes and status texts
(status_code) @constant.numeric
(status_text) @constant.language

; Highlight HTTP versions
(http_version) @keyword

; Highlight variable declarations (@foo=bar)
(variable_declaration
  name: (identifier) @variable)
(variable_declaration
  value: (value) @string)


; Highlight variable usage ({{foo}})
(variable
  name: (identifier) @variable.special)


; Highlight different types of request bodies
(json_body) @string.special
(xml_body) @string.special
(graphql_body) @string.special
(external_body) @string.special
(multipart_form_data) @string.special
(raw_body) @string.special

; Highlight scripts
(pre_request_script) @embedded
(res_handler_script) @embedded
(script) @embedded
