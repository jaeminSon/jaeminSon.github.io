---
title: 4. 구글 광고 넣기
parent: ETF 가격 지표앱 개발
---

[(참고 블로그)](https://nonmajor-be-developer.tistory.com/entry/React-Native-Expo%EC%97%90-google-AdMob%EC%9D%84-%EB%84%A3%EC%96%B4%EB%B3%B4%EC%9E%90)

- Web 과 Android 는 google 광고 넣는 방식이 다름

## Web 에 광고 넣기
- [google adsense](https://www.google.com/adsense) 에서 website 인증을 받아야함.
- backend 에서 (my-hostname)/ads.txt 을 query 하는 식으로 구현
- 9 일 뒤에, "Google-served ads on screens without publisher-content" 로 거절 당함.
    - "under construction" 때문 인가 싶어 다시 신청함.
- 최종적으로 2번 반려됨.
- [kofi](https://github.com/jaeminSon/ETF-Percentile) 를 사용함.
    - 다음과 같이 iframe 을 별도의 tsx 파일로 저장후, import 하여 사용

```
===========
kofi.tsx
===========
import React from "react";

const KoFiWidget: React.FC = () => {
  return (
    <iframe
      id="kofiframe"
      src="https://ko-fi.com/jaeminson/?hidefeed=true&widget=true&embed=true&preview=true"
      style={{
        border: 'black',
        width: '100%',
        background: 'white'
      }}
      height="712"
      title="jaeminson"
    ></iframe>
  );
};

export default KoFiWidget;

============
screen.tsx
============
import KoFiWidget from "../component/kofi";
<KoFiWidget />
```

## Android 에 광고 넣기
- google ad-mob 에서 ID 발급
    - 회원 가입: [google ad-mob](https://admob.google.com/home/)
    - Apps 탭에서 Add your first app 클릭 후, 광고 유형 선택 후, 최종적으로 ID 발급


- package install

```
npx expo install react-native-google-mobile-ads
```

- app.json 수정 
```
{
  "expo": {
    "plugins": [
      [
        "react-native-google-mobile-ads",
        {
          "androidAppId": "ca-app-pub-xxxxxxxx~xxxxxxxx",
          "iosAppId": "ca-app-pub-xxxxxxxx~xxxxxxxx"
        }
      ]
    ]
  }
}
```

ios 의 경우, 다음과 같이 수정해야한다고 함
```
{
  "expo": {
    "plugins": [
      [
        "expo-build-properties",
        {
          "ios": {
            "useFrameworks": "static"
          }
        }
      ]
    ]
  }
}
```

- 코드

```
import React, {useRef} from 'react';
import {
  BannerAd,
  BannerAdSize,
  TestIds,
  useForeground,
} from 'react-native-google-mobile-ads';

const adUnitId = TestIds.ADAPTIVE_BANNER
const bannerRef = useRef<BannerAd>(null);

<BannerAd
ref={bannerRef}
// 광고 단위 ID
unitId={adUnitId}
// 베너 광고 크기
size={BannerAdSize.ANCHORED_ADAPTIVE_BANNER}
/>
```

- 실행

```
# native code 를 android platform 빌드
npx expo prebuild --platform android
# 앱 설치 후 실행 (Java, JDK 설치 필요)
npx expo run
```

- 주의 사항: Java, JDK, 환경 변수 세팅되어야함
```
# JDK 설치
brew install openjdk@17

# 환경 변수
```

- test id 를 발급받은 값으로 대체