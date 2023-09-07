//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Đinh Trần Việt Anh on 07/09/2023.
//

import SwiftUI

struct ProfileHost: View {
    @EnvironmentObject var modelData: ModelData
    @Environment(\.editMode) var editMode
    @State private var draftProfile = Profile.default
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack{
                Spacer()
                EditButton()
            }
            if editMode?.wrappedValue == .inactive {
                            ProfileSummary(profile: modelData.profile)
                        } else {
                            Text("Profile Editor")
                        }
            
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
