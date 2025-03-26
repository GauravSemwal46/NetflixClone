//
//  CustomTabSwitcher.swift
//  NetflixClone
//
//  Created by Gaurav Semwal on 26/03/25.
//

import SwiftUI

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        VStack {
            // Custom Tab picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            Button {
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                        }
                    }
                }
            }
            
            // Selected View
            switch currentTab {
            case .episodes:
                Text(currentTab.rawValue)
            case .trailers:
                Text(currentTab.rawValue)
            case .more:
                Text(currentTab.rawValue)
            }
            
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
    }
    
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}
