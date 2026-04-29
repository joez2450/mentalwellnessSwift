import SwiftUI

struct GameCard<TargetView: View>: View {
    let title: String
    let iconName: String
    let destination: TargetView
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .fill(.ultraThinMaterial)
                .overlay(
                    Image(systemName: iconName)
                        .font(.largeTitle)
                    
                )
                .frame(height: 200)
            
            VStack(spacing: 12) {
                Text(title)
                    .font(.headline)
                NavigationLink(destination: destination) {
                    Text("PLAY")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
            }
            .padding()
            .background(Color.white)
            .shadow(radius: 5)
        }
        .frame(maxWidth: 300)
        .padding(.vertical, 8)
    }
}
