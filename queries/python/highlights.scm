; Function calls

(call
  function: (identifier) @function)

(call
  function: (identifier) @function.builtin
  (#match? @function.builtin "^(abs|all|any|ascii|bin|bool|breakpoint|bytearray|bytes|callable|chr|classmethod|compile|complex|delattr|dict|dir|divmod|enumerate|eval|exec|filter|float|format|frozenset|getattr|globals|hasattr|hash|help|hex|id|input|int|isinstance|issubclass|iter|len|list|locals|map|max|memoryview|min|next|object|oct|open|ord|pow|print|property|range|repr|reversed|round|set|setattr|slice|sorted|staticmethod|str|sum|super|tuple|type|vars|zip|__import__)$"))

(call
  function: (attribute
    attribute: (identifier) @function.method))

; Function and class definitions

(function_definition
  name: (identifier) @function)

(class_definition
  name: (identifier) @type)

(decorator) @function

(attribute
  attribute: (identifier) @property)

(type
  (identifier) @type)

; Parameters

(parameters
  (identifier) @variable.parameter)

(default_parameter
  name: (identifier) @variable.parameter)

; Naming conventions

((identifier) @constant
  (#match? @constant "^[A-Z][A-Z_]*$"))

((identifier) @constructor
  (#match? @constructor "^[A-Z]"))

(identifier) @variable

; Operators

[
  "-" "-=" "!=" "*" "**" "**=" "*=" "/" "//" "//=" "/=" "&" "&=" "%" "%="
  "^" "^=" "+" "->" "+=" "<" "<<" "<<=" "<=" "<>" "=" ":=" "==" ">" ">="
  ">>" ">>=" "|" "|=" "~" "@="
  "and" "in" "is" "not" "or" "is not" "not in"
] @operator

; Keywords

[
  "as" "assert" "async" "await" "break" "class" "continue" "def" "del"
  "elif" "else" "except" "exec" "finally" "for" "from" "global" "if"
  "import" "lambda" "nonlocal" "pass" "raise" "return" "try" "while"
  "with" "yield"
] @keyword

; Literals

[
  (true)
  (false)
  (none)
] @constant.builtin

[
  (integer)
  (float)
] @number

(comment) @comment

(string) @string

(escape_sequence) @escape

(interpolation
  "{" @punctuation.special
  "}" @punctuation.special) @embedded
