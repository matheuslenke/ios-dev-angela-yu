//
//  WebView.swift
//  H4X0R News
//
//  Created by Matheus Lenke on 03/06/21.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }

}
