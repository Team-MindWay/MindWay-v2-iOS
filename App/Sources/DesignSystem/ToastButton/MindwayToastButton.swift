import SwiftUI

public struct MindwayToastButton: View {
    var text: String
    @Binding var popupStatus: Bool
    @Binding var applicationStatus: Bool
    
    public init(
        text: String,
        popupStatus: Binding<Bool>,
        applicationStatus: Binding<Bool>
    ) {
        self.text = text
        _popupStatus = popupStatus
        _applicationStatus = applicationStatus
    }
    
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.white)
                .frame(height: 60)
                .shadow(color: .black.opacity(0.12), radius: 10, x: 0, y: 0)
                .padding(.horizontal, 24)
                
            
            HStack(spacing: 0) {
                Image(applicationStatus ? "MindWayCheckGreen" : "MindWayCheckRed")
                    .padding(.trailing, 8)
                
                Text(text)
                    .mindWayRegularFont(.m3)
                
                Spacer()
            }
            .padding(.leading, 40)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                popupStatus = false
            }
        }
    }
}
