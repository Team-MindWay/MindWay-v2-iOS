import SwiftUI

struct MindWayTextField: View {
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
            
            TextField(placeholder, text: $text)
                .frame(height: 56)
                .background(borderColor)
                .cornerRadius(8)
                .onSubmit(onSubmit)
                .focused($isFocused)
                .foregroundColor(.mindway(.black(.black)))
                .mindWayRegularFont(.label)
                .padding(.horizontal, 16)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .strokeBorder()
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
