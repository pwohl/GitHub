shinyUI(navbarPage("Navbar!",
                   tabPanel("BMI",
        pageWithSidebar(
        headerPanel("Body-Mass-Index (BMI) calculator"),
        sidebarPanel(
                h3('Input'),
                p('BMI is considered a helpful index to determine whether a person has a healthy body weight,
          input requirements are very simple, just the weight and height of a person is needed.'),
                h5('To calculate your BMI:'),
                numericInput('weight', 'Input your weight in kg', 0, min = 0, max = 640, step = 0.5),
                numericInput('height', 'Input your height in cm', 0, min = 0, max = 275, step = 0.5),
                p('Maximum input weight: 640 kg (heavier than Jon Brower Minnoch)'),
                p('Maximum input height: 275 cm (taller than Robert Pershing Wadlow)'),
                submitButton('GO!')
        
        ),
        mainPanel(
                h3('Output'),
                h4('Your weight is:'),
                verbatimTextOutput("oweight"),
                h4('You height is:'),
                verbatimTextOutput("oheight"),
                h3('Your BMI is:'),
                verbatimTextOutput("BMIval"),
                p('A BMI between 18.5 and 25 is usually considered healthy, a BMI lower than 18.5 suggests you are underweight, 
                 a BMI above 25 suggests you might be overweight.')))),
                
                tabPanel("Documentation",
                         h3('Documentation'),
                         p('This shiny-app lets you calculate your Body-Mass-Index (BMI) to evaluate whether you have a healthy weight.
                        To calculate your BMI you only need to know your weight in kg and your height in cm, input them in the input side in the fields provided 
                        and the app will do the calculation for you.
                        A BMI between 18.5 and 25 is usually considered healthy.'))))
                         
     
