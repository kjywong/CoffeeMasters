//
//  InfoPage.swift
//  CoffeeMasters
//
//  Created by Kirsten W on 2025-02-04.
//

import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
                config.userContentController.add(WebInterfaceDialogs() , name: "alert")
        let webView = WKWebView(frame: .zero, configuration: config)
        
//        var webView = WKWebView()   //variable that reporesents the webview
        return webView  // The UIKit View
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        let url = URL(string:
                        "https://firtman.github.io/coffeemasters/webapp")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
//    func executeJavaScript(webView: WKWebView) {
//        webView.evaluateJavaScript("alert('hello from Swift')")
//    } //one way to exevute JS code in swift
}

struct InfoPage: View {
    var body: some View {
        WebView()    }  //like a proxy to the UIKit
}

#Preview {
    InfoPage()
}
