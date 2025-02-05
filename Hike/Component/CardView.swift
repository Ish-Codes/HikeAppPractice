//
//  CardView.swift
//  Hike
//
//  Created by Ismael Chavez on 3/20/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                //Mark: - HEADER
                
                VStack (alignment: .leading) {a
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                            LinearGradient(
                                colors: [.orange, .customGrayLight, .customGrayMedium],
                                startPoint: .top,
                                endPoint: .bottom)
                        )
                            Spacer()
                        Button {
                            // Action: Show a sheet
                            print("The button was pressed.")
                        }label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable activities for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                        
                } .padding(.horizontal, 30)
                
                // Mark - MAIN CONTENT
                ZStack {
                    Circle()
                         .fill(
                            LinearGradient(
                                colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmonLight")
                                ],
                                startPoint:
                                .topLeading, endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                    .scaledToFit()
                }
                // MARK: - FOOTER
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
