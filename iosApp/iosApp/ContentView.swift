import SwiftUI
import shared

struct ContentView: View {
    var greeting = Greeting()

    @State var greet: [Hello] = [Hello(string: "Loading...", lang: "pr-br")]

       func load() {
            greeting.getHello() { result, error in
                if let result = result {
                    self.greet = result
                } else if let error = error {
                    greet = [Hello(string: "Error:", lang: "pt-br")]
                }
            }
        }

    var body: some View {
        List{
            ForEach(greet, id: \.self) { value in
                HelloRow.init(hello: value)
            }
        }.onAppear{
            load()
        }
    }
}

struct HelloRow: View{
    var hello: Hello
    
    var body: some View {
            Text("Come and eat at \(hello.string)")
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
