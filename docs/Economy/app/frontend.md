---
title: 4. Frontend
parent: 저평가 알람앱 개발
---

## Expo
- Android, iOS, and Web apps 를 하나의 코드베이스로 관리
```
# expo 설치
npm install -g expo-cli

# blank typescript 만들기 
npx create-expo-app frontend --template expo-template-blank-typescript

# web 을 위한 package 설치
cd frontend
npx expo install react-dom react-native-web @expo/metro-runtime

# chart 표시를 위한 pakcage 설치 
npx expo install react-native-chart-kit react-native-svg

# 검색창을 위한 package 설치
npm i --save-dev react-native-paper react-native-dropdown-picker
npm i --save-dev install @react-navigation/native-stack
npx expo install @react-navigation/native
npx expo install @react-native-community/datetimepicker



# 시작
npx expo start
```