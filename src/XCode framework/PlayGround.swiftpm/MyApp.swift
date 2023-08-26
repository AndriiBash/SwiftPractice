import SwiftUI

let screen = UIScreen.main.bounds

@main
struct MyApp: App
{
    var body: some Scene
    {
        WindowGroup
        {
            AuthView()
        }
    }
}
