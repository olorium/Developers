//
//  CardView.swift
//  Developers
//
//  Created by Oleksii Vasyliev on 04.05.2023.
//

import SwiftUI

struct CardView: View {
	// MARK: - Properties
	var card: Card
	
	// MARK: - Body
    var body: some View {
		ZStack {
			Image(card.imageName)
			
			VStack {
				Text(card.title)
					.font(.largeTitle)
					.fontWeight(.heavy)
					.foregroundColor(.white)
					.multilineTextAlignment(.center)
				Text(card.headline)
					.fontWeight(.light)
					.foregroundColor(.white)
					.italic()
			}
			.offset(y: -218)
			
			Button {
				print("")
			} label: {
				Text(card.callToAction.uppercased())
					.fontWeight(.heavy)
					.foregroundColor(.white)
				Image(systemName: "arrow.right.circle")
					.font(.title)
			}
			.padding(.vertical)
			.padding(.horizontal, 24)
			.foregroundColor(.white)
			.background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
			.clipShape(Capsule())
			.shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
			.offset(y: 210)

		}
		.frame(width: 355, height: 545)
		.background(LinearGradient(colors: card.gradientColors, startPoint: .top, endPoint: .bottom))
		.cornerRadius(16)
		.shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
		CardView(card: cardData[2])
			.previewLayout(.sizeThatFits)
    }
}
