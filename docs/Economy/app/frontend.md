---
title: 3. Frontend
parent: ETF 가격 지표앱 개발
---

## npm 설치
```
# linux
sudo apt update
sudo apt install nodejs npm

# mac
brew install node
```

## package.json 에 있는 페키지들 설치
```
npm install
```

## React 설치
- [React](https://reactnative.dev/docs/set-up-your-environment)

```
# globally install react-native and react-native-cli
$ npm install -g react-native
$ npm install -g react-native-cli
```

## Project 생성 및 package 설치
```
# Project 생성 및 package 설치
$ npx react-native init StockAlarm
$ cd StockAlarm
```

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

# chart graph 를 위한 pakcage 설치 
npx expo install react-native-chart-kit react-native-svg

# guage bar 를 위한 pakcage 설치 (web, android)
npm install react-gauge-chart 
npm install @shipt/segmented-arc-for-react-native

# dropdown 메뉴를 위한 package 설치
npm i react-native-paper react-native-dropdown-picker @react-navigation/native-stack @react-navigation/native

# 시작
npx expo start
```

## Mac 에 Android 환경 구축 
1. [android official](developer.android.com/studio) 에서 dmg 파일 다운로드 후 설치
2. Android SDK 를 실행하여 SDK 및 Emulator 설치
3. Android SDK 에서 Virtual Device Manage 에서 디바이스 실행
4. Virtual Device 가 새 창으로 켜지고 나서 expo 실행
```
npx expo start --android
```

## Emulator 
- debbuging 환경: cmd+M > Open JS Debugger 

## Code Refactoring
```
npx prettier --write .
```

## Troubleshootings 
```
# package errors
npx react-native doctor
```

- Expo 의 fetch 함수에 전달된 url 앞에 localhost:8000 이 prepend 되는 경우 
    - fetch 의 인자로 들어가는 문자열 앞에 http:// 가 붙어있는지 확인 

```
# 동일 package 가 다른 버전으로 존재하는 경우 다음 에러 발생 
Uncaught Error: Tried to register two views with the same name RNSVGSvgView
```