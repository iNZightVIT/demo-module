DemoModule <- setRefClass(
    "DemoModule",
    contains = "iNZModule",
    fields = list(
        field1 = "value1",
        field2 = "value2"
    ),
    methods = list(
        initialize = function(gui, which = 1:2) {
            callSuper(gui, name = "Demo Module")

            which <- match.arg(which)
            switch(which,
                mod_one(),
                mod_two()
            )
        },
        mod_one = function() {
            add_body(glabel("This is Demo Module 1"))
            add_body(glabel(demo_helper()))
        },
        mod_two = function() {
            add_body(glabel("This is Demo Module 2"))
        }
    )
)
