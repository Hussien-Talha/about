import SwiftUI


struct FunFactsView: View {
    /*#-code-walkthrough(FunFactsView.funFacts)*/
    var allFunFacts =
    [
        "The first alarm clock only rings at 4 a.m",
        "Nokia’s first product is toilet paper",
        "The ‘fox’ in the Mozilla Firefox logo is a red panda", 
        "Google’s name was the fruit of a spelling mistake",
        "The world’s first computer mouse was wooden, not plastic",
        "There are more than 6800 programming languages that we currently know of",
        "Around 1.8 billion people connect to the internet, only a third of the world’s population",
        "The first ever VCR, which was made in 1956, was the size of a piano",
        "The first 1GB hard disk drive was announced in 1980 which weighed about 550 pounds, and had a price tag of $40,000.",
        ]
    /*#-code-walkthrough(FunFactsView.funFacts)*/
    /*#-code-walkthrough(FunFactsView.stateVariable)*/
    @State private var funFact = ""
    /*#-code-walkthrough(FunFactsView.stateVariable)*/
    
    var body: some View {
        /*#-code-walkthrough(FunFactsView.color)*/
        ZStack {
            VStack {
                /*#-code-walkthrough(FunFactsView.color)*/
                Text("Fun Facts")
                    .font(.largeTitle)
                /*#-code-walkthrough(FunFactsView.textView)*/
                Text(funFact)
                    .font(.title)
                    .frame(maxWidth: 400, minHeight: 300)
                /*#-code-walkthrough(FunFactsView.textView)*/
                
                /*#-code-walkthrough(FunFactsView.button)*/
                Button("Show Random Fact") {
                    funFact = allFunFacts.randomElement() ?? "No Fun."
                }
                /*#-code-walkthrough(FunFactsView.button)*/
                /*#-code-walkthrough(FunFactsView.button.modifiers)*/
                .foregroundColor(.black)
                .shadow(radius: 4)
                .font(.title2)

                /*#-code-walkthrough(FunFactsView.button.modifiers)*/
            }
            .padding()
        }
        
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
