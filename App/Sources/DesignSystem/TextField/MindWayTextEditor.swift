import SwiftUI

public struct MindWayTextEditor: View {
    @Binding var text: String
    @FocusState var isFocused: Bool
    var title: String
    var placeholder: String
    var errorText: String
    var textCount: Int
    var maxTextCount: Int
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
        textCount: Int,
        maxTextCount: Int,
        isError: Bool = false,
        onSubmit: @escaping () -> Void = {}
    ) {
        self._text = text
        self.placeholder = placeholder
        self.title = title
        self.errorText = errorText
        self.textCount = textCount
        self.maxTextCount = maxTextCount
        self.isError = isError
        self.onSubmit = onSubmit
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 0) {
                    Text(title)
                        .foregroundColor(.mindway(.gray(.g4)))
                    
                    Spacer()
                    
                    Text("\(textCount)")
                        .foregroundColor(.mindway(.main(.main)))
                    
                    Text("/")
                        .foregroundColor(.mindway(.gray(.g4)))
                    
                    Text("\(maxTextCount)")
                        .foregroundColor(.mindway(.gray(.g4)))
                }
                .mindWayRegularFont(.label)
                
            ZStack(alignment: .topLeading) {
                TextEditor(text: $text)
                    .onSubmit(onSubmit)
                    .mindWayRegularFont(.m3)
                    .focused($isFocused)
                    .colorMultiply(Color.mindway(.gray(.g1)))
                    .frame(height: 264)
                    .padding(.horizontal, 16)
                    .padding(.top, 12)
                    .background(Color.mindway(.gray(.g1)))
                    .lineSpacing(7)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .strokeBorder(borderColor)
                    }
                    .cornerRadius(8)
                    .onTapGesture {
                        isFocused = true
                    }
                
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.mindway(.gray(.g4)))
                        .mindWayRegularFont(.m3)
                        .padding(.top, 21)
                        .padding(.leading, 17)
                }
                
                if isError {
                    Text(errorText)
                        .foregroundColor(.mindway(.system(.system)))
                        .mindWayRegularFont(.label)
                }
            }
        }
    }
}
