DemoModule <- setRefClass(
    "DemoModule",
    contains = "iNZModule",
    fields = list(
        field1 = "character",
        field2 = "character"
    ),
    methods = list(
        initialize = function(gui, which = 1L, ...) {
            callSuper(gui, ...)

            field1 <<- "value1"
            field2 <<- "value2"

            switch(which,
                mod_one(),
                mod_two()
            )
        },
        mod_one = function() {
            add_body(glabel("This is Demo Module 1"))
            add_body(glabel(mod$demo_helper()))
            add_body(glabel(mod$mod_version()))
        },
        mod_two = function() {
            add_body(glabel("This is Demo Module 2"))
        }
    )
)

DemoNumVar <- setRefClass(
    "DemoNumVar",
    contains = "iNZWindow",
    fields = list(
        value = "numeric"
    ),
    methods = list(
        initialize = function(gui, ...) {
            ok <- callSuper(gui,
                title = "Demo Number",
                width = "med",
                height = "small",
                ok = "Close",
                cancel = NULL,
                action = close,
                show_code = FALSE,
                scroll = FALSE,
                body_direction = "vertical"
            )
            if (!ok) return()
            on.exit(.self$show())

            initFields(value = 0L)

            val_slider <- gslider(0, 10, value = value,
                handler = function(h, ...) value <<- svalue(h$obj))
            add_body(val_slider)


        }
    )
)
