//
//  DetailView.swift
//  H4XOR News
//
//  Created by 이재영 on 1/23/25.
//

import SwiftUI
import WebKit


struct DetailView: View {
    
    let url: String?
    
    
    var body: some View {
        WebView(url: url ?? "")
    }
    
}


struct WebView: UIViewRepresentable {
    
    let url: String
    
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeUrl = URL(string: url) else { return }
        let request = URLRequest(url: safeUrl)
        uiView.load(request)
    }
    
}


#Preview {
    DetailView(url: "https://google.com")
}
