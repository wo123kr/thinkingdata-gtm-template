```markdown
# ThinkingData Analytics GTM Template

Google Tag Manager용 ThinkingData 분석 플랫폼 공식 템플릿입니다.

## 👨‍💻 개발자
**제갈진우** - ThinkingData 데이터 분석가
- Email: jinwoo@thinkingdata.kr

## 🚀 주요 기능
- **이벤트 추적**: 사용자 행동 및 커스텀 이벤트 추적
- **사용자 식별**: 고유 사용자 식별 및 관리
- **사용자 속성**: 사용자 프로필 및 속성 설정
- **실시간 전송**: 실시간 데이터 수집 및 전송

## 📦 설치 방법

### GTM 갤러리에서 설치
1. Google Tag Manager 컨테이너에 접속
2. 좌측 메뉴에서 **"템플릿"** 클릭
3. **"갤러리에서 검색"** 클릭
4. **"ThinkingData Analytics"** 검색
5. **"작업공간에 추가"** 클릭

### 수동 설치
1. 이 저장소에서 `template.tpl` 파일 다운로드
2. GTM에서 **"템플릿" → "새로 만들기"**
3. 우상단 **"더보기" → "가져오기"**
4. `template.tpl` 파일 업로드

## ⚙️ 설정 방법

### 1. 기본 설정
- **App ID**: ThinkingData 프로젝트의 앱 ID
- **Server URL**: 데이터 수집 서버 URL

### 2. 추적 유형 선택
- **이벤트 추적**: 사용자 행동 이벤트 전송
- **사용자 식별**: 사용자 ID 설정
- **사용자 속성**: 사용자 프로필 정보 설정

## 📖 사용 예시

### 이벤트 추적 태그 생성
```
태그 유형: ThinkingData Analytics
추적 유형: 이벤트 추적
App ID: your_app_id
Server URL: https://te-receiver-naver.thinkingdata.kr
```

### 페이지뷰 추적
```
트리거: All Pages
이벤트명: page_view
속성: {
  "page_title": "{{Page Title}}",
  "page_url": "{{Page URL}}"
}
```

## 🔧 고급 설정

### 커스텀 속성 전송
GTM 변수를 활용하여 동적 속성 전송이 가능합니다:

```javascript
// 데이터 레이어 예시
dataLayer.push({
  'event': 'custom_event',
  'event_category': 'engagement',
  'event_action': 'click',
  'custom_property': 'value'
});
```

## 🐛 문제 해결

### 일반적인 문제
1. **데이터가 전송되지 않음**
   - App ID와 Server URL 확인
   - 네트워크 연결 상태 확인
   - 브라우저 콘솔에서 오류 메시지 확인

2. **중복 이벤트 발생**
   - 트리거 설정 재검토
   - 태그 실행 순서 확인

## 📞 지원

### 기술 지원
- **GitHub Issues**: [문제 신고](https://github.com/jegalginwoo/thinkingdata-gtm-template/issues)
- **이메일**: jinwoo.jegal@thinkingdata.cn

### 문서 및 리소스
- **공식 문서**: [ThinkingData Docs](https://docs-v2.thinkingdata.kr/?version=latest&lan=ko-KR&code=installation_menu&anchorId=)
- **Web SDK 가이드**: [설치 가이드](https://docs-v2.thinkingdata.kr/?version=latest&lan=ko-KR&code=javascript_sdk_installation&anchorId=)
- **API 참조**: [API Documentation](https://docs-v2.thinkingdata.kr/?version=latest&lan=ko-KR&code=open_api&anchorId=)

## 🏢 ThinkingData 소개

ThinkingData는 전 세계 기업들이 데이터 기반 의사결정을 내릴 수 있도록 돕는 통합 분석 플랫폼입니다.

- **웹사이트**: [www.thinkingdata.kr](https://www.thinkingdata.kr)
- **한국 지사**: korea@thinkingdata.cn
- **글로벌 고객**: 1000+ 기업

## 📄 라이선스

이 프로젝트는 Apache License 2.0 하에 제공됩니다. 자세한 내용은 [LICENSE](LICENSE) 파일을 참조하세요.

---

**Made with ❤️ by 제갈진우 @ ThinkingData**
```
