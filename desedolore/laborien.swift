struct SafeAreaInsetsModifier: ViewModifier {
    var insets: EdgeInsets
    
    func body(content: Content) -> some View {
        content.environment(\.safeAreaInsets, insets)
    }
}

extension View {
    func safeAreaInsets(_ insets: EdgeInsets) -> some View {
        self.modifier(SafeAreaInsetsModifier(insets: insets))
    }
}
