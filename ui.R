shinyUI(pageWithSidebar(
  headerPanel("Identification of Iris Species"),
  sidebarPanel(
    h5('Select Iris Measurements')
    ,
    sliderInput('Sepal.Length', 'Sepal Length',value = 5, min = 4.3, max = 7.9, step = 0.1)
    ,
    sliderInput('Sepal.Width', 'Sepal Width',value = 3, min = 2, max = 4.4, step = 0.1)
    ,
    sliderInput('Petal.Length', 'Petal Length',value = 3, min = 1, max = 6.9, step = 0.1)
    ,
    sliderInput('Petal.Width', 'Petal Width',value = 1, min = 0.1, max = 2.5, step = 0.1)
    ),
  mainPanel(
    h5('Iris Species Identified as:'),
    textOutput('predSpecies'),
    h5('Model takes 5-20 seconds to process, please be patient :)')
  )
))

