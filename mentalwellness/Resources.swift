//
//  Resources.swift
//  mentalwellness
//
//  Created by Joe Zheng on 3/2/26.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        NavigationStack{
            VStack {
                Text("Resources Screen\n To be continued...")
                    .font(.title)
                    .bold()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            NavigationLink("Back to Main Menu", destination: ContentView())
                .buttonStyle(.bordered)
        }
    }
}

#Preview {
    Resources()
}

