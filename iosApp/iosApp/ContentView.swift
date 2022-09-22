import SwiftUI
import shared

struct ContentView: View {
	let greet = Greeting().greeting()
	let world = Greeting().hello()

	var body: some View {
		VStack{
		Text(greet)
		Text(world)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}