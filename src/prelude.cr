# Entries to this file should only be ordered if macros are involved -
# macros need to be defined before they are used.
# A first compiler pass gathers all classes and methods, removing the
# requirement to place these in load order.
#
# When adding new files, use alpha-sort when possible. Make sure
# to also add them to `docs_main.cr` if their content need to
# appear in the API docs.

# This list requires ordered statements
require "lib_c"
require "macros"
require "object"
require "comparable"
{% unless flag?(:dpdk_patch) %}
require "exception"
{% end %}
require "iterable"
require "iterator"
require "indexable"
require "string"

# Alpha-sorted list
require "array"
require "atomic"
require "bool"
require "char"
require "char/reader"
require "class"
require "crystal/main"
require "deque"
require "dir"
require "enum"
require "enumerable"
require "env"
require "errno"
require "ext"
require "file"
require "float"
require "gc"
require "hash"
require "int"
require "intrinsics"
require "kernel"
require "math/math"
require "named_tuple"
require "nil"
require "number"
require "pointer"
require "pretty_print"
require "primitives"
require "proc"
require "process"
require "raise"
require "random"
require "range"
require "reference"
require "regex"
require "set"
require "signal"
require "slice"
require "static_array"
require "struct"
require "symbol"
require "time"
require "tuple"
require "value"

{% unless flag?(:fiber_none) %}
require "concurrent"
require "thread"
require "box"
{% end %}

{% unless flag?(:dpdk_patch) %}
require "iconv"
require "io"
require "mutex"
require "reflect"
require "system"
require "unicode"
require "union"
{% end %}
