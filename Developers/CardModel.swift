//
//  CardModel.swift
//  Developers
//
//  Created by Oleksii Vasyliev on 07.05.2023.
//

import SwiftUI

struct Card: Identifiable {
	var id = UUID()
	var title: String
	var headline: String
	var imageName: String
	var callToAction: String
	var message: String
	var gradientColors: [Color]
}
