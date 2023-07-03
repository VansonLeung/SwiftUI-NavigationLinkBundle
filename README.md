# SwiftUI-NavigationLinkBundle
A bundle to secretly and cleanly bootstrap navigation links, no more clumsy "NavigationLink"!

Turn ordinary buttons instantly to support NavigationLink, but without deliberately using NavigationLink.

You may take a look inside: ```AppRootNavigationBundle.swift```

Usage:

```swift

    @StateObject var _lbObs = AppRootNavigationViewLinkBundleObs()

...


            Button {
                _lbObs.openAnyView(
                    item: Page2View().anyView,
                    animated: true
                )
            } label: {
                Text("Open page 2")
            }


```
