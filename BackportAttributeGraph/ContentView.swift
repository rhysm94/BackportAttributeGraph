//
//  ContentView.swift
//  BackportAttributeGraph
//
//  Created by Rhys Morgan on 21/07/2022.
//

import SwiftUI
import SwiftUIBackports

struct ContentView: View {
	@State var isPresentingSheet = false
	private let options = [
		"One",
		"Two",
		"Three",
		"Four",
		"Five",
		"Six",
		"Seven",
		"Eight",
		"Nine",
		"Ten"
	]

	@State private var selection: String?

	var body: some View {
		VStack {
			Button("Present Sheet") {
				isPresentingSheet.toggle()
			}
		}
		.padding()
		.sheet(isPresented: $isPresentingSheet) {
			VStack(alignment: .leading) {
				List(options, id: \.self) {
					Text($0)
				}
			}
			.backport
			.presentationDetents([.medium])
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
