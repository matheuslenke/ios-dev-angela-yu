//
//  DetailView.swift
//  H4X0R News
//
//  Created by Matheus Lenke on 03/06/21.
//

import SwiftUI
struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://google.com")
    }
}


