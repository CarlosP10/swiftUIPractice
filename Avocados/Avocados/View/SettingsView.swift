//
//  SettingsView.swift
//  Avocados
//
//  Created by Carlos Paredes on 1/12/23.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Settings".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                //MARK: - SECTION #1
                Section {
                    Toggle(isOn: $enableNotification, label: {
                        Text("Enable notification")
                    })
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("Background refresh")
                    })
                } header: {
                    Text("General Settings")
                }

                //MARK: - SECTION #2
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundStyle(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundStyle(Color.gray)
                            Spacer()
                            Text("CP Devs")
                        }
                        HStack {
                            Text("Designer").foregroundStyle(Color.gray)
                            Spacer()
                            Text("CP Devs")
                        }
                        HStack {
                            Text("Website").foregroundStyle(Color.gray)
                            Spacer()
                            Text("www.google.com")
                        }
                        HStack {
                            Text("Version").foregroundStyle(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message").foregroundStyle(Color.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                    
                } header: {
                    Text("Application")
                }

            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
