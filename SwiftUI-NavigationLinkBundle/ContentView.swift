//
//  ContentView.swift
//  SwiftUI-NavigationLinkBundle
//
//  Created by Leung Yu Wing on 3/7/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                Page1View()
            }
        }
    }
}


struct Page1View: View {
    @StateObject var _lbObs = AppRootNavigationViewLinkBundleObs()
    
    var body: some View {
        VStack {
            
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            
            
            Button {
                _lbObs.openAnyView(
                    item: Page2View().anyView,
                    animated: true
                )
            } label: {
                Text("Open page 2")
            }


        }
        .padding()
        .navigationBarHidden(false)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("NavigationLinkBundle Demo")
        .asDetailsView(linkBundleObs: _lbObs)

    }
}


struct Page2View: View {
    @StateObject var _lbObs = AppRootNavigationViewLinkBundleObs()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, page 2!")

        }
        .padding()
        .navigationBarHidden(false)
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Page 2")
        .asDetailsView(linkBundleObs: _lbObs)

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
