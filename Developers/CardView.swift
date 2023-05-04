//
//  CardView.swift
//  Developers
//
//  Created by Oleksii Vasyliev on 04.05.2023.
//

import SwiftUI

struct CardView: View {
	// MARK: - Properties
	/// Gradient background for the view.
	private var gradient: [Color] = [Color("Color01"), Color("Color02")]
	
	// MARK: - Body
    var body: some View {
		ZStack {
			Image("developer-no1")
			
			VStack {
				Text("SwiftUI")
					.font(.largeTitle)
					.fontWeight(.heavy)
					.foregroundColor(.white)
					.multilineTextAlignment(.center)
				Text("Better apps. Less code.")
					.fontWeight(.light)
					.foregroundColor(.white)
					.italic()
			}
			.offset(y: -218)
			
			Button {
				print("")
			} label: {
				Text("Learn".uppercased())
					.fontWeight(.heavy)
					.foregroundColor(.white)
				Image(systemName: "arrow.right.circle")
					.font(.title)
			}
			.padding(.vertical)
			.padding(.horizontal, 24)
			.foregroundColor(.white)
			.background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
			.clipShape(Capsule())
			.shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
			.offset(y: 210)

		}
		.frame(width: 355, height: 545)
		.background(LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom))
		.cornerRadius(16)
		.shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
			.previewLayout(.sizeThatFits)
    }
}
