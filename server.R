library(UsingR)
library(caret)
model<-train(Species~.,data=iris,method="rf")
predSpecies<-function(predvar) predict(model,predvar)
shinyServer(
  function(input, output) {
    output$predSpecies<-renderPrint({
    predvar<-data.frame(Sepal.Length=input$Sepal.Length,Sepal.Width=input$Sepal.Width,Petal.Length=input$Petal.Length,Petal.Width=input$Petal.Width)
    as.character(predSpecies(predvar))
    })
  }
)
