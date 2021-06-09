# This examples show how to create a simple static html page using argonR
library(argonR)
library(htmltools)
library(magrittr)
library(shiny)

chatosolutions <- argonPage(
  title = "Chato Solutions",
  author =  "Rigoberto Chandomi Vazquez",
  description = "HTML Static Template",
  navbar = argonNavbar(
    id = "main-navbar",
    src = "inst/images/logo_fb.png",
    # left menu*******************************************************************
    argonNavMenu(
      side = "left",
      argonNavItem(
        name = "Home",
        src = "index.html",
        icon = icon("fas fa-home"),
        tooltip = "Home"
      ),
      argonNavItem(
        name = "Blog",
        src = "blog.html",
        icon = icon("fas fa-rss-square"), 
        tooltip = "Blog"
      )
      #   argonNavItem(
      #     name = "Contact",
      #     # src = "https://www.instagram.com/chatosolutions/?hl=es-la",
      #     icon = icon("fas fa-address-book"),
      #     tooltip = "Contact"
      #   )
      # 
    ),
    # right menu
    argonNavMenu(
      side = "right",
      argonNavItem(
        name = "instagram",
        src = "https://www.instagram.com/chatosolutions/?hl=es-la",
        icon = icon("fab fa-instagram"),
        tooltip = "Follow us on Instagram"
      )
    )
  ),
  footer = argonFooter(
    has_card = FALSE,
    argonLead(
      "@Chato Solutions, 2020. Powered by ARGONR"
    )
  ) %>% argonMargin(orientation = "t", value = 20),
  # main content
  argonSection(
    size = "lg",
    status = "success",
    gradient = TRUE,
    separator = TRUE,
    separator_color = "white",
    shape = FALSE,
    cascade = TRUE,
    argonColumn(
      argonRow(
        argonColumn(
          width = 6,
          argonH1(
            display = 1, 
            "Apps for petroleum engineering solutions", 
            #htmltools::span("completed with examples")
          ) %>% argonTextColor(color = "white"),
          #argonLead(
          # "Argon is a great free UI package based on Bootstrap 
          #  4 that includes the most important components and features"
          #) %>% argonTextColor(color = "white")
        ),
        argonColumn(
          width = 6,
          argonImage(
            src = "inst/images/RET.png",
            floating = TRUE
          ) %>% argonPersp(side = "right")
          %>% argonBlur()
        )
      )
    ) %>% argonPadding(orientation = "x", value = 0)
  ),
  argonSection(
    size = "lg",
    status = NULL,
    gradient = FALSE,
    separator = FALSE,
    separator_color = NULL,
    shape = FALSE,
    argonRow(
      argonColumn(
        width = 6,
        argonCard(
          status = "primary",
          width = 12,
          title = "Numerical Methods Tools",
          hover_lift = TRUE,
          shadow = TRUE,
          src = "https://play.google.com/store/apps/details?id=com.chatosolutions.numericalmethodstools&hl=es_MX",
          "Many methods to resolve numerical problems.",
          argonImage(
            floating = TRUE,
            card_mode = TRUE,
            src = "inst/images/NMT.png",
            hover_lift = TRUE
          )
        ) %>% argonTooltip(position = "left", title = "Android App")
      ),
      argonColumn(
        width = 6,
        argonCard(
          status = "primary",
          width = 12,
          title = "Reserveoir Engineering Tools",
          hover_lift = TRUE,
          shadow = TRUE,
          src = "https://play.google.com/store/apps/details?id=com.chatosolutions.ret&hl=es_MX",
          "Calculations for Petroleum Engineering.",
          argonImage(
            floating = TRUE,
            card_mode = TRUE,
            src = "inst/images/RET2.png",
            hover_lift = TRUE
          )
        ) %>% argonTooltip(position = "right", title = "Android App")
      )
    ),
    
  ) %>% argonMargin(orientation = "t", value = -200)
  %>% argonPadding(orientation = "t", value = 0),
  argonSection(
    size = "lg",
    status = "success",
    gradient = TRUE,
    separator = TRUE,
    separator_color = "white",
    shape = FALSE,
    argonContainer(
      size = "lg",
      argonRow(
        argonColumn(
          width = 4,
          argonH1(
            display = 3, 
            "Reservoir Engineering Tools", 
            htmltools::span("Web version")
          ) %>% argonTextColor(color = "white"),
          argonButton(
            name = "Soon!",
            status = "danger",
            size = "lg",
            src = "app.html"
            #toggle_modal = TRUE,
            #modal_id = "modal1"
          )
        ),
        argonColumn(
          width = 8,
          argonModal(
            id = "modal1",
            title = "RET web version",
            status = "danger",
            gradient = TRUE,
            "Wait fot more solutions!",
            br(),
          ),
          argonImage(
            floating = TRUE,
            src = "inst/images/RET_web.png",
            hover_lift = TRUE
          ) %>% argonTooltip(position = "right", title = "Web version") 
          %>% argonBlur(text = "RET", text_color = "black")
        )
      ) 
      
    )
  )
  
)