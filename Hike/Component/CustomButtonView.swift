//
//  CustomButtonView.swift
//  Hike
//
//  Created by Ismael Chavez on 3/21/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [
                    .white,
                        .customGreenLight,
                        .customGreenMedium],
                                     startPoint: .top,
                                     endPoint: .bottom)
                )
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .orange,
                    .customGrayLight,
                    .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                        lineWidth: 4)
           Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .orange,
                            .colorGrayLight,
                            .colorGrayMedium,
                            ],
                        startPoint: .top,
                        endPoint: .bottom) )
        } //: ZStack
        .frame(width: 58, height: 58)
    }
}


    struct CustomButtonView_previews: PreviewProvider {
        static var previews: some View {
            CustomButtonView()
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
    
