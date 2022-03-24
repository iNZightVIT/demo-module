menu <- list(
    Variables = list(
        Numeric = item(
            title = "Demo numeric variables",
            action = function(gui) DemoNumVar$new(gui)
        )
    ),
    Modules = list(
        Demo = list(
            item("Demo 1", function(gui) DemoModule$new(gui, which = 1L)),
            item("Demo 1", function(gui) DemoModule$new(gui, which = 1L))
        )
    )
)
