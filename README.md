# ThinkingData Google Tag Manager 변수 템플릿

ThinkingData SDK를 Google Tag Manager(구글 태그 매니저, GTM)에서 쉽게 활용할 수 있도록 도와주는 변수 템플릿입니다.

---

## 주요 기능

- ✅ **ThinkingData SDK 사용자 ID 및 속성 변수 제공**
- ✅ **GTM 변수로 사용자 식별자, 커스텀 속성 등 활용 가능**
- ✅ **간편한 설치 및 커스터마이즈**

---

## 설치 방법

1. Google Tag Manager에서 **템플릿** → **갤러리 검색** → “ThinkingData” 검색 후 추가  
   또는  
   [이 저장소](https://github.com/yourusername/thinkingdata-gtm-template)에서 템플릿 파일(`ThinkingData Analytics.tpl`)을 다운로드하여 직접 업로드

2. **변수 템플릿**을 선택하여 원하는 변수(GTM 변수)로 등록

---

## 설정 방법

1. **ThinkingData SDK**가 웹사이트에 정상적으로 삽입되어 있어야 합니다.
2. 변수 생성 시 **SDK 인스턴스명**(기본값: `ta`)을 입력합니다.  
   (SDK 초기화 시 window 객체에 등록한 이름과 일치해야 합니다.)
3. 필요에 따라 **속성명** 등 추가 파라미터를 입력합니다.

---

## 예시

### 사용자 ID 변수 활용

1. 변수 → 새 변수 → 템플릿 선택 → ThinkingData - User ID
2. (필요시) 인스턴스명 입력
3. 저장 후, 태그/트리거 등에서 해당 변수를 사용

### 사용자 속성 변수 활용

1. 변수 → 새 변수 → 템플릿 선택 → ThinkingData - User Property
2. 속성명(예: `email`, `membership_level`) 입력
3. 저장 후 활용

---

## 자주 묻는 질문(FAQ)

**Q. SDK가 로드되지 않았을 때 값이 어떻게 되나요?**  
A. SDK가 정상적으로 window에 등록되지 않았을 경우 변수 값은 `undefined` 또는 `null`이 반환됩니다.

**Q. 커스텀 속성은 어떻게 추가하나요?**  
A. ThinkingData SDK에서 커스텀 속성을 저장하는 방식에 따라, 템플릿에서 해당 속성명만 입력하면 자동으로 값을 반환합니다.

---

## 지원 및 문의

- 공식 문서: [https://docs.thinkingdata.kr/](https://docs-v2.thinkingdata.kr/?version=latest&lan=ko-KR&code=pre_installation_menu&anchorId=)
- 이슈 등록: [GitHub Issues](https://github.com/wo123kr/thinkingdata-gtm-template/issues)
- 이메일: jinwoo@thinkingdata.kr

---

## 라이선스

MIT License  
자세한 내용은 [LICENSE](LICENSE) 파일을 참고하세요.
