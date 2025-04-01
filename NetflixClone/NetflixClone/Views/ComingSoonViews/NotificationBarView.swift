//
//  NotificationBarView.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 01/04/25.
//

import SwiftUI

struct NotificationBarView: View {
    
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Button {
            showNotificationList = true
        } label: {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                    .bold()
                Spacer()
                Image(systemName: "chevron.right")
            }
            .font(.system(size: 18, weight: .bold))
        }
        .foregroundColor(.white)
        .padding()
    }
}

#Preview {
    ZStack {
        Color.black.edgesIgnoringSafeArea(.all)
        NotificationBarView(showNotificationList: .constant(false))
    }
}
