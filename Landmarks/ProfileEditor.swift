//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by Đinh Trần Việt Anh on 07/09/2023.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value:  -1 , to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value:  1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List{
            HStack{
                Text("Username").bold()
                Divider()
                TextField("username", text: $profile.username)
                
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notification").bold()
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("Seasonal Photo").bold()
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) {
                        season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)
            }
            DatePicker(selection: $profile.goalDate, in: dateRange,displayedComponents: .date) {
                Text("Goal Date").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
