//
//  ContentView.swift
//  Practice Log App
//
//  Created by Andy Yu on 2023-07-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "music.note")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Let's get practicing!")
            List{
                Grid{
                    ForEach(0..<10){ i in
                        GridRow{
                            Text("Week "+String(i+1))
                            ForEach(0..<7){i in
                                Text(String(i+1))
                            }
                        }
                        Divider()
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
