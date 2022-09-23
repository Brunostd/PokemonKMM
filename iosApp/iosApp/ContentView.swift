import SwiftUI
import shared

struct ContentView: View {
    var greeting = Greeting()

    @State var greet = "Loading..."

       func load() {
            greeting.hello { result, error in
                if let result = result {
                    self.greet = result
                } else if let error = error {
                    greet = "Error: \(error)"
                }
            }
        }

    var body: some View {
        Text(greet).onAppear() {
            load()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
