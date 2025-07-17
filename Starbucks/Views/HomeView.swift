//
//  HomeView.swift
//  Starbucks
//
//  Created by Miru on 2025/7/11.
//

import SwiftUI

struct HomeView: View {
    var viewModel: HomeViewModel = .init()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    goldenMimosaGroup
                    
                    bottomGroup
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        .safeAreaPadding(.bottom, 48)
    }
    
    // MARK: - goldenMimosaGroup
    private var goldenMimosaGroup: some View {
        ZStack(alignment: .bottom) {
            Image(.goldenMimosa)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            goldenMimosaContents
        }
    }
    
    private var goldenMimosaContents: some View {
        VStack(alignment: .leading) {
            goldenMimosaText
                .padding(.bottom, 9)
            
            seeContents
            
            goldenMimosaProgressBarSection
        }
        .offset(y: 33)
        .safeAreaPadding(.leading, 28)
        .safeAreaPadding(.trailing, 24)
    }
    
    private var goldenMimosaText: some View {
        VStack() {
            Text("골든 미모사 그린 티와 함께\n행복한 새해의 축배를 들어요!")
                .font(.bold24)
                .foregroundStyle(.black03)
        }
    }
    
    private var seeContents: some View {
        HStack(spacing: 4) {
            Spacer()
            
            Text("내용 보기")
                .font(.regular13)
                .foregroundStyle(.gray06)
            
            Image(.goLine)
        }
    }
    
    private var goldenMimosaProgressBarSection: some View {
        HStack(spacing: 36) {
            VStack(alignment: .leading, spacing: 5) {
                Text("11★ until next Reward")
                    .font(.semiBold16)
                    .foregroundStyle(.brown02)
                
                goldenMimosaProgressBar
            }
            .padding(.bottom, 3)
            
            HStack(spacing: 5) {
                Text("1")
                    .font(.semiBold38)
                    .foregroundStyle(.black03)
                
                Text("|")
                    .font(.regular18)
                    .foregroundStyle(.gray03)
                
                Text("12★")
                    .font(.semiBold14)
                    .foregroundStyle(.brown02)
            }
        }
        .padding(.trailing, 17)
    }
    
    private var goldenMimosaProgressBar: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 4)
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.gray07)
                
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: geometry.size.width / 11 * 5)
                    .foregroundStyle(.brown)
            }
        }
        .frame(width: 256, height: 8)
    }
    
    // MARK: - bottomGroup
    private var bottomGroup: some View {
        VStack(alignment: .leading, spacing: 20) {
            bearBanner
            
            coffeeList
            
            bloomingBanner
            
            buddyPassBanner
            
            noticeScrollView
            
            eventSection
            
            breadScrollView
            
            bottomSection
        }
        .safeAreaPadding(.horizontal, 10)
    }
    
    private var bearBanner: some View {
        Image(.bearBanner)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .padding(.top, 33)
    }
    
    // MARK: - coffeeList
    private var coffeeList: some View {
        VStack(alignment: .leading, spacing: 25) {
            coffeeListText
            
            coffeeListScrollView
        }
        .padding(.leading, 10)
    }
    
    private var coffeeListText: some View {
        Text("\(viewModel.nickName)")
            .font(.bold24)
            .foregroundStyle(.brown01)
        + Text("님을 위한 추천 메뉴")
            .font(.bold24)
            .foregroundStyle(.black03)
    }
    
    private var coffeeListScrollView: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 16) {
                ForEach(viewModel.coffeeList) { coffee in
                    NavigationLink {
                        CoffeeDetailView(coffee: coffee.coffeeDetail)
                    } label: {
                        CircleImageCard(item: coffee)
                    }
                }
            }
        }
    }
    
    // MARK: - bloomingBanner
    private var bloomingBanner: some View {
        Image(.bloomingBanner)
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
    
    // MARK: - buddyPassBanner
    private var buddyPassBanner: some View {
        Image(.buddyPassBanner)
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
    
    // MARK: - noticeScrollView
    private var noticeScrollView: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("What's New")
                .font(.bold24)
                .foregroundStyle(.black03)
            
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(viewModel.noticeList) { notice in
                        NoticeCard(notice: notice)
                    }
                }
            }
        }
    }
    
    // MARK: - eventSection
    private var eventSection: some View {
        VStack(spacing: 20) {
            Image(.mugcupBanner)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Image(.onlineStoreBanner)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Image(.deliveryBanner)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
    
    // MARK: - breadScrollView
    private var breadScrollView: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 16) {
                ForEach(viewModel.breadList) { bread in
                    CircleImageCard(item: bread)
                }
            }
        }
    }
    
    // MARK: - bottomSection
    private var bottomSection: some View {
        VStack(spacing: 20) {
            Image(.coldBrewBanner)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Image(.favoriteBanner)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Image(.sizeupBanner)
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

#Preview {
    HomeView()
}
