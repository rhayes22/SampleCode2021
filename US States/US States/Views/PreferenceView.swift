//
//  PreferenceView.swift
//  US States
//
//  Created by Hannan, John Joseph on 9/19/21.
//

import SwiftUI

struct PreferenceView: View {
    @EnvironmentObject var manager : StateManager
    @Binding var showingPreferences : Bool
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("Choose Home State")) {

                }
                
                Section(header: Text("List Sections")) {

                }

            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done") {self.showingPreferences.toggle()}
                }
            }
  
        }
        .navigationBarTitle("Preferences")
    }
}

struct PreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceView( showingPreferences: .constant(true))
            .environmentObject(StateManager())
    }
}
