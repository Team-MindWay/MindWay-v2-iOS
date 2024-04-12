import SwiftUI

struct GoalReadingSettingTextField: View {
    @Binding var text: String
    @FocusState var isFocused: Bool
    var title: String
    var placeholder: String
    var errorText: String
    var isError: Bool
    var onSubmit: () -> Void
    
    private var borderColor: Color {
        if isError {
            return .mindway(.system(.system))
        } else {
            return .mindway(.gray(.g1))
        }
    }
    
    public init(
        _ placeholder: String = "",
        text: Binding<String>,
        title: String,
        errorText: String = "",
        isError: Bool = false,
        onSubmit: @escaping () -> Void = {}
    ) {
        self._text = text
        self.placeholder = placeholder
        self.title = title
        self.errorText = errorText
        self.isError = isError
        self.onSubmit = onSubmit
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .mindWayRegularFont(.label)
                .foregroundColor(.mindway(.gray(.g4)))
            
            TextField(placeholder, text: $text)
                .padding(.horizontal, 16)
                .frame(height: 56)
                .onSubmit(onSubmit)
                .focused($isFocused)
                .foregroundColor(.mindway(.black(.black)))
                .background(borderColor)
                .cornerRadius(8)
                .mindWayRegularFont(.m3)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder(borderColor)
                    
                    HStack {
                        Spacer()
                        
                        Text("권")
                            .mindWayRegularFont(.m3)
                            .foregroundColor(.mindway(.gray(.g5)))
                            .padding(.trailing, 16)
                    }
                }
                .onTapGesture {
                    isFocused = true
                }
            
            if isError {
                Text(errorText)
                    .foregroundColor(.mindway(.system(.system)))
                    .mindWayRegularFont(.label)
            }
        }
    }
}
