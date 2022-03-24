DemoModule <- setRefClass(
    "DemoModule",
    contains = "iNZModule",
    fields = list(
        field1 = "character",
        field2 = "character"
    ),
    methods = list(
        initialize = function(gui, which = 1L, ...) {
            callSuper(gui, name = "Demo Module", ...)
            print(ls())

            field1 <<- "value1"
            field2 <<- "value2"

            switch(which,
                mod_one(),
                mod_two()
            )
        },
        mod_one = function() {
            add_body(glabel("This is Demo Module 1"))
            add_body(glabel(e$demo_helper()))
        },
        mod_two = function() {
            add_body(glabel("This is Demo Module 2"))
        }
    )
)
