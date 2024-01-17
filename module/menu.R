menu <- list(
    Variables = list(
        `Numeric Variables` = list(
            demo = item(
                title = "Demo numeric variables",
                action = function(gui, mod) DemoNumVar$new(gui, mod)
            )
        )
    ),
    # Modules = item("Demo Module Here", function(gui, mod) DemoModule$new(gui, mod = mod))
    Modules = list(
        `Demo Module` = list(
            item("Demo 1", function(gui, mod) DemoModule$new(gui, mod, which = 1L)),
            item("Demo 2", function(gui, mod) DemoModule$new(gui, mod, which = 2L))
        )
    )
)
