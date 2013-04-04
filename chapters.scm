;; PART 0: PREFACE

((part Preface)
 (name "prologue")
 (file "01-prologue")
 (note "Largely complete")
 )

;; PART 1: BASIC CONCEPTS

((part Basic)
 (name "a-guided-tour")
 (file "02-guided-tour")
 (note "Largely complete")
 )
((part Basic)
 (name "variables-and-functions")
 (file "03-variables-and-functions")
 (note "Largely complete")
 )
((part Basic)
 (name "lists-options-and-patterns")
 (file "lists-options-and-patterns")
 (note "yminsky working on this")
 (public true)
 )
((part Basic)
 (name "files-modules-and-programs")
 (file "09-files-modules-and-programs")
 (note "Largely complete (may require revisions)")
 )
((part Basic)
 (name "records")
 (file "05-records")
 (note "Largely complete")
 )
((part Basic)
 (name "variants")
 (file "06-variants")
 (note "Largely complete")
 )
((part Basic)
 (name "error-handling")
 (file "07-error-handling")
 (note "Almost done: one missing section")
 )
((part Basic)
 (name "functors")
 (file "10-functors")
 (note "Largely complete")
 )
((part Basic)
 (name "imperative-programming-1")
 (file "08-imperative-programming")
 (note "First pass by Ron mostly done, working on adding I/O back")
 )
((part Basic)
 (name "object-oriented-programming")
 (file "08a-objects")
 (note "Largely complete")
 )

;; PART 2: PRACTICAL EXAMPLES

((part Practical)
 (name "data-serialization-with-s-expressions")
 (file "12c-sexprs")
 (note "Largely complete")
 )
((part Practical)
 (name "handling-json-data")
 (file "12a-json")
 (note "Largely complete")
 )
((part Practical)
 (name "command-line-parsing")
 (file "command-line-parsing")
 (note "Largely complete")
 )
((part Practical)
 (name "Text processing and Unicode")
 (file "text-processing-and-unicode")
 (note "Not started")t
)
((part Practical)
 (name "xml-streams-and-trees")
 (file "12b-stream-parsing-xml")
 (note "75% done, on Anil's stack")
 )
((part Practical)
 (name "concurrent-programming-with-async")
 (file "12-concurrent-programming-with-async")
 (note "75% done, on Anil's stack")
 (public false)
 )
((part Practical)
 (name "fast-binary-serialization-with-bin_prot")
 (file "12d-binio")
 (note "50% done (Anil)")
 (public false)
 )
((part Advanced)
 (name "first-class-modules")
 (file "10a-fcm")
 (note "75%, blocked on release of ocaml-plugin lib")
 (public false)
 )

;; PART 3: ADVANCED TOPICS

((part Advanced)
 (name "foreign-function-interface")
 (file "14-interfacing-with-C")
 (note "50%, on Anil's stack")
 (public false)
 )
((part Advanced)
 (name "managing-external-memory-with-bigarrays")
 (file "15-bigarrays")
 (note "50% done, on Anil's stack")
 (public false)
 )
((part Advanced)
 (name "inside-the-runtime")
 (file "16a-inside-the-runtime")
 (note "50% done, on Anil's stack")
 (public false)
 )
((part Advanced)
 (name "performance-tuning-and-profiling")
 (file "16b-tuning-and-profiling")
 (note "50% done, on Anil's stack")
 (public false)
 )
((part Advanced)
 (name "packaging-and-build-systems")
 (file "17-packaging-and-build-systems")
 (note "25% done, on Anil's stack")
 (public false)
 )
((part Advanced)
 (name "parsing-with-ocamllex-and-ocamlyacc")
 (file "18-parsing-with-ocamllex-and-ocamlyacc")
 (note "Not started, on Jason's stack?")
 (public false)
 )
((part Advanced)
 (name "object-subtyping-and-inheritance")
 (file "13-advanced-objects")
 (note "Largely complete")
 )
((part Advanced)
 (name "advanced-topics")
 (file "13b-advanced-topics")
 (note "Contains various advanced material from other chapters, 0% complete")
 (public false)
)

;; Part 4: APPENDIX

((part Appendix)
 (name "installation")
 (file "19-installing-ocaml")
 (note "50% done, on Anil's stack")
 )
