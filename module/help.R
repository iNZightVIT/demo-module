# define help for the module

# ... either using a URL to send users:
# url <- "https://somewhere.com/article/about/module"

# ... or a more complex help system
DemoHelp <- setRefClass(
    "DemoHelp",
    inherits = "iNZWindow",
    methods = list(
        initialize = function(gui) {
            ok <- callSuper(gui,
                title = "Demo Module Help",
                width = "med",
                height = "med",
                ok = "Close",
                cancel = NULL,
                action = close,
                show_code = FALSE,
                scroll = FALSE,
                body_direction = "vertical"
            )
            if (!ok) return()
            on.exit(.self$show())

            lbl <- glabel("Demo Help Window")
            font(lbl) <- list(size = 14L, weight = "bold")
            add_body(lbl)


        }
    )
)
