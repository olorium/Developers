//
//  ContentView.swift
//  Developers
//
//  Created by Oleksii Vasyliev on 04.05.2023.
//

import SwiftUI

struct ContentView: View {
	// MARK: - Properties
	let cards = cardData
	// MARK: - Body
    var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack(alignment: .center, spacing: 20) {
				ForEach(cards) { card in
					CardView(card: card)
				}
			}
			.padding(20)
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
