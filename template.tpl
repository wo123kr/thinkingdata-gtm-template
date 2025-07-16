___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "thinkingdata_analytics",
  "version": 1,
  "securityGroups": [],
  "displayName": "ThinkingData Analytics",
  "categories": ["ANALYTICS"],
  "brand": {
    "id": "thinkingdata",
    "displayName": "ThinkingData",
    "thumbnail": ""
  },
  "description": "ThinkingData Analytics tracking template for Google Tag Manager",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "appId",
    "displayName": "App ID",
    "simpleValueType": true,
    "help": "ThinkingData 프로젝트의 고유 식별자입니다. \nTE 시스템에 접속해 프로젝트 관리 페이지에서 확인할 수 있습니다.",
    "notSetText": "필수"
  },
  {
    "type": "TEXT",
    "name": "serverUrl",
    "displayName": "서버 URL",
    "simpleValueType": true,
    "help": "ThinkingData 데이터 수집 서버 URL입니다. \nHTTPS 프로토콜을 사용해야합니다. \n예시 : https://te-receiver-naver.thinkingdata.kr",
    "notSetText": "필수"
  },
  {
    "type": "SELECT",
    "name": "actionType",
    "displayName": "동작 유형",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "initialize",
        "displayValue": "SDK 초기화"
      },
      {
        "value": "track",
        "displayValue": "이벤트 추적"
      },
      {
        "value": "login",
        "displayValue": "사용자 로그인"
      },
      {
        "value": "logout",
        "displayValue": "사용자 로그아웃"
      },
      {
        "value": "setSuperProperties",
        "displayValue": "공통 이벤트 속성"
      }
    ],
    "simpleValueType": true,
    "help": "실행할 ThinkingData 동작을 선택하세요:\n• initialize: SDK 초기화 (페이지 로드 시 한 번만 실행)\n• track: 이벤트 추적 (사용자 행동 기록)\n• login: 사용자 로그인 ID 설정\n• logout: 사용자 로그아웃 처리\n• setSuperProperties: 모든 이벤트에 포함될 공통 속성 설정."
  },
  {
    "type": "SELECT",
    "name": "userPropertyMethod",
    "displayName": "유저 속성 작업 방식",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "user_set",
        "displayValue": "속성 설정/덮어쓰기"
      },
      {
        "value": "user_set_once",
        "displayValue": "한 번만 설정"
      },
      {
        "value": "user_add",
        "displayValue": "숫자 속성 누적"
      },
      {
        "value": "user_append",
        "displayValue": "배열에 값 추가"
      },
      {
        "value": "user_uniq_append",
        "displayValue": "배열에 고유값 추가"
      },
      {
        "value": "user_unset",
        "displayValue": "속성 삭제"
      },
      {
        "value": "user_delete",
        "displayValue": "유저 데이터 삭제"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "user_set",
    "help": "유저 속성을 어떤 방식으로 처리할지 선택합니다.",
    "enablingConditions": [
      {
        "paramName": "enableUserProperties",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "confirmUserDelete",
    "checkboxText": "유저 삭제 확인",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enableUserProperties",
        "paramValue": true,
        "type": "EQUALS"
      },
      {
        "paramName": "userPropertyMethod",
        "paramValue": "user_delete",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "eventName",
    "displayName": "이벤트 이름",
    "simpleValueType": true,
    "help": "추적할 이벤트의 이름입니다. \n영문자로 시작하고, 영문자, 숫자, 밑줄(_)만 사용 가능합니다. \n예시: button_click, page_view, purchase_complete",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "track",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "PARAM_TABLE",
    "name": "eventProperties",
    "displayName": "이벤트 속성",
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "key",
          "displayName": "속성 키",
          "simpleValueType": true,
          "help": "속성의 이름 (영문 권장) 예 : product_name"
        },
        "isUnique": false
      },
      {
        "param": {
          "type": "TEXT",
          "name": "value",
          "displayName": "속성 값",
          "simpleValueType": true,
          "help": "속성의 값 (문자열, 숫자, 불린) 예: iphone, 1299, true"
        },
        "isUnique": false
      }
    ],
    "help": "이벤트와 함께 전송할 속성들입니다. \n키(Key): 속성명 (영문자로 시작, 영문자/숫자/밑줄만 사용) \n값(Value): 속성값 (문자열, 숫자, 불린값 지원) \n\n예시: \n키: product_name, 값: iPhone 15 \n키: price, 값: 999 \n키: is_premium, 값: true",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "track",
        "type": "EQUALS"
      },
      {
        "paramName": "actionType",
        "paramValue": "setSuperProperties",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "enableUserProperties",
    "checkboxText": "유저 속성 설정",
    "simpleValueType": true,
    "defaultValue": false,
    "help": "유저 속성 설정을 활성화 합니다."
  },
  {
    "type": "TEXT",
    "name": "accountId",
    "displayName": "계정 ID",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "login",
        "type": "EQUALS"
      }
    ],
    "help": "사용자의 고유 계정 식별자입니다. \n로그인한 사용자를 구분하기 위해 사용됩니다. \n예시: user_12345, john@example.com"
  },
  {
    "type": "TEXT",
    "name": "distinctId",
    "displayName": "Distinct ID",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "track",
        "type": "EQUALS"
      }
    ],
    "help": "특정 이벤트에 대하 사용자 식별자를 설정합니다. \n설정하지 않으면 SDK에서 자동 생성한 ID를 사용합니다.\n일반적으로 비워두는 것을 권장합니다. (내부에 이미 distinctId 수집을 하시는 경우에 사용)"
  },
  {
    "type": "CHECKBOX",
    "name": "enableDebug",
    "checkboxText": "Enable Debug",
    "simpleValueType": true,
    "help": "디버그 모드를 활성화합니다. \n활성화 시 브라우저 콘솔에서 ThinkingData 로그를 확인할 수 있습니다. \n라이브 환경에서는 비활성화를 권장합니다."
  },
  {
    "type": "CHECKBOX",
    "name": "enableBatch",
    "checkboxText": "Enable Batch",
    "simpleValueType": true,
    "help": "배치 전송 모드를 활성화합니다. \n활성화 시 데이터를 로컬에 캐시한 후 일괄 전송하여 성능을 향상시킵니다. \n일반적으로 활성화를 권장합니다.",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "initialize",
        "type": "EQUALS"
      }
    ],
    "defaultValue": true
  },
  {
    "type": "CHECKBOX",
    "name": "autoTrackPageShow",
    "checkboxText": "Auto Track Page Show",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "initialize",
        "type": "EQUALS"
      }
    ],
    "help": "페이지 표시 시 자동으로 ta_page_show 이벤트를 전송합니다.",
    "defaultValue": true
  },
  {
    "type": "CHECKBOX",
    "name": "autoTrackPageHide",
    "checkboxText": "Auto Track Page Hide",
    "simpleValueType": true,
    "help": "페이지 숨김 시 자동으로 ta_page_hide 이벤트를 전송합니다.",
    "enablingConditions": [
      {
        "paramName": "actionType",
        "paramValue": "initialize",
        "type": "EQUALS"
      }
    ],
    "defaultValue": true
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "userproperties",
    "displayName": "유저 속성",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "속성명",
        "name": "name",
        "type": "TEXT"
      },
      {
        "defaultValue": "",
        "displayName": "속성값",
        "name": "value",
        "type": "TEXT"
      }
    ],
    "help": "설정할 유저 속성들을 입력합니다.",
    "enablingConditions": [
      {
        "paramName": "enableUserProperties",
        "paramValue": "ture",
        "type": "EQUALS"
      },
      {
        "paramName": "userPropertyMethod",
        "paramValue": "user_set",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "userPropertiesAdd",
    "displayName": "(유저 속성) 숫자 속성 누적",
    "simpleTableColumns": [
      {
        "defaultValue": "user_name",
        "displayName": "속성명",
        "name": "name",
        "type": "TEXT",
        "valueHint": "홍길동"
      },
      {
        "defaultValue": "",
        "displayName": "속성값",
        "name": "value",
        "type": "TEXT"
      }
    ],
    "help": "기존 숫자 속성에 더할 값들을 입력합니다. 숫자 형태의 값만 입력 가능합니다.",
    "enablingConditions": [
      {
        "paramName": "enableUserProperties",
        "paramValue": true,
        "type": "EQUALS"
      },
      {
        "paramName": "userPropertyMethod",
        "paramValue": "user_add",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "userPropertiesAppend",
    "displayName": "(유저 속성) 배열 속성 추가",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "속성명",
        "name": "name",
        "type": "TEXT"
      },
      {
        "defaultValue": "",
        "displayName": "추가할 값들",
        "name": "values",
        "type": "TEXT"
      }
    ],
    "help": "배열 속성에 추가할 값들을 입력합니다. 여러 값은 쉼표(,)로 구분하여 입력하세요",
    "enablingConditions": [
      {
        "paramName": "enableUserProperties",
        "paramValue": true,
        "type": "EQUALS"
      },
      {
        "paramName": "userPropertyMethod",
        "paramValue": "user_append",
        "type": "EQUALS"
      },
      {
        "paramName": "userPropertyMethod",
        "paramValue": "user_uniq_append",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "userPropertiesUnset",
    "displayName": "(유저 속성) 삭제할 속성명들",
    "simpleValueType": true,
    "help": "삭제할 속성명들을 쉼표로 구분하여 입력하세요. 입력한 속성들이 유저 프로필에서 완전히 제거됩니다. (예: old_prop1, temp_data, unused_filed)",
    "enablingConditions": [
      {
        "paramName": "enableUserProperties",
        "paramValue": true,
        "type": "EQUALS"
      },
      {
        "paramName": "userPropertyMethod",
        "paramValue": "user_unset",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "userPropertiesObject",
    "displayName": "(유저 속성) 유저 속성 객체_고급",
    "simpleValueType": true,
    "help": "Json 형태로 속성을 직접 입력할 수 있습니다. 위의 테이블 입력 대신 사용 가능 합니다. (예: {\"name\":\"홍길동\",\"age\":30,\"tags\":[\"vip\",\"mobile\"]} )",
    "enablingConditions": [
      {
        "paramName": "enableUserProperties",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const injectScript = require('injectScript');
const copyFromWindow = require('copyFromWindow');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const makeTableMap = require('makeTableMap');
const Object = require('Object');
const parseJson = require('parseJson');

// 숫자 판별 (makeNumber 활용)
function isNumeric(val) {
  return makeNumber(val) === makeNumber(val); // NaN이면 false
}

// 값 정규화 함수
function normalizeValue(value) {
  if (isNumeric(value)) {
    return makeNumber(value);
  } else if (value === 'true') {
    return true;
  } else if (value === 'false') {
    return false;
  } else {
    return makeString(value);
  }
}

// ThinkingData SDK 로드
function loadThinkingDataSDK() {
  var sdkUrl = 'https://unpkg.com/thinking-data-web@latest/dist/thinkingdata.min.js';
  injectScript(sdkUrl, function() {
    log('ThinkingData SDK loaded');
    executeAction();
  }, function() {
    log('Failed to load ThinkingData SDK');
    data.gtmOnFailure();
  });
}

// 메인 액션 실행
function executeAction() {
  var ta = copyFromWindow('ta');
  if (!ta) {
    log('ThinkingData SDK not available');
    data.gtmOnFailure();
    return;
  }

  var actionType = data.actionType;
  if (actionType === 'initialize') {
    if (!handleInitialize(ta)) return;
  } else if (actionType === 'track') {
    if (!handleTrack(ta)) return;
  } else if (actionType === 'login') {
    if (!handleLogin(ta)) return;
  } else if (actionType === 'logout') {
    handleLogout(ta);
  } else if (actionType === 'setSuperProperties') {
    handleSetSuperProperties(ta);
  } else if (actionType === 'userProperty') {
    if (!handleUserProperty(ta)) return;
  } else {
    log('Unknown action type: ' + actionType);
    data.gtmOnFailure();
    return;
  }
  data.gtmOnSuccess();
}

// SDK 초기화
function handleInitialize(ta) {
  if (!data.appId || !data.serverUrl) {
    log('appId and serverUrl are required');
    data.gtmOnFailure();
    return false;
  }
  var config = {
    appId: makeString(data.appId),
    serverUrl: makeString(data.serverUrl)
  };
  if (data.enableBatch !== undefined) config.enableBatch = data.enableBatch;
  if (data.enableDebug !== undefined) config.debugMode = data.enableDebug;
  if (data.autoTrackPageShow !== undefined) config.autoTrackPageShow = data.autoTrackPageShow;
  if (data.autoTrackPageHide !== undefined) config.autoTrackPageHide = data.autoTrackPageHide;
  ta.init(config);
  log('ThinkingData initialized', config);
  return true;
}

// 이벤트 추적
function handleTrack(ta) {
  var eventName = makeString(data.eventName);
  if (!eventName) {
    log('Event name is required');
    data.gtmOnFailure();
    return false;
  }
  var properties = {};
  if (data.eventProperties && data.eventProperties.length > 0) {
    for (var i = 0; i < data.eventProperties.length; i++) {
      var prop = data.eventProperties[i];
      if (prop.key && prop.value !== undefined && prop.value !== '') {
        properties[prop.key] = normalizeValue(prop.value);
      }
    }
  }
  if (data.distinctId && data.distinctId !== '') {
    ta.track(eventName, properties, makeString(data.distinctId));
  } else {
    ta.track(eventName, properties);
  }
  log('Tracked event:', eventName, properties);
  return true;
}

// 로그인
function handleLogin(ta) {
  var accountId = makeString(data.accountId);
  if (!accountId) {
    log('Account ID is required');
    data.gtmOnFailure();
    return false;
  }
  ta.login(accountId);
  log('User logged in:', accountId);
  return true;
}

// 로그아웃
function handleLogout(ta) {
  ta.logout();
  log('User logged out');
}

// 공통 속성 설정
function handleSetSuperProperties(ta) {
  var superProperties = {};
  var hasAnyKey = false;
  if (data.eventProperties && data.eventProperties.length > 0) {
    for (var i = 0; i < data.eventProperties.length; i++) {
      var prop = data.eventProperties[i];
      if (prop.key && prop.value !== undefined && prop.value !== '') {
        superProperties[prop.key] = normalizeValue(prop.value);
        hasAnyKey = true;
      }
    }
  }
  if (hasAnyKey) {
    ta.setSuperProperties(superProperties);
    log('Set super properties:', superProperties);
  } else {
    log('No super properties to set');
  }
}

// 유저 속성 처리
function handleUserProperty(ta) {
  if (!data.enableUserProperties) {
    log('User properties not enabled');
    return true;
  }

  var method = data.userPropertyMethod || 'user_set';
  var properties = {};
  var hasProperties = false;

  if (method === 'user_set' || method === 'user_set_once') {
    // 테이블에서 속성 수집
    if (data.userProperties && data.userProperties.length > 0) {
      for (var i = 0; i < data.userProperties.length; i++) {
        var prop = data.userProperties[i];
        if (prop.name && prop.value !== undefined && prop.value !== '') {
          properties[prop.name] = normalizeValue(prop.value);
          hasProperties = true;
        }
      }
    }

    // JSON 객체 형태 입력 처리
    if (data.userPropertiesObject && data.userPropertiesObject !== '') {
      var objProps = parseJson(data.userPropertiesObject);
      if (objProps) {
        for (var key in objProps) {
          if (objProps.hasOwnProperty(key)) {
            properties[key] = normalizeValue(objProps[key]);
            hasProperties = true;
          }
        }
      } else {
        log('Warning: Invalid JSON in userPropertiesObject');
      }
    }

    if (hasProperties) {
      if (method === 'user_set') {
        ta.userSet(properties);
        log('User properties set:', properties);
      } else {
        ta.userSetOnce(properties);
        log('User properties set once:', properties);
      }
    }
  } else if (method === 'user_add') {
    if (data.userPropertiesAdd && data.userPropertiesAdd.length > 0) {
      for (var i = 0; i < data.userPropertiesAdd.length; i++) {
        var prop = data.userPropertiesAdd[i];
        if (prop.name && prop.value !== undefined && prop.value !== '') {
          var numValue = makeNumber(prop.value);
          if (numValue === numValue) { // NaN 체크
            properties[prop.name] = numValue;
            hasProperties = true;
          } else {
            log('Warning: Invalid number value for user_add:', prop.value);
          }
        }
      }
    }

    if (hasProperties) {
      ta.userAdd(properties);
      log('User properties added:', properties);
    }
  } else if (method === 'user_append' || method === 'user_uniq_append') {
    if (data.userPropertiesAppend && data.userPropertiesAppend.length > 0) {
      for (var i = 0; i < data.userPropertiesAppend.length; i++) {
        var prop = data.userPropertiesAppend[i];
        if (prop.name && prop.values !== undefined && prop.values !== '') {
          // 쉼표로 구분된 값들을 배열로 변환
          var valuesArray = prop.values.split(',');
          var cleanArray = [];
          for (var j = 0; j < valuesArray.length; j++) {
            var trimmedValue = valuesArray[j].trim();
            if (trimmedValue !== '') {
              cleanArray.push(normalizeValue(trimmedValue));
            }
          }
          if (cleanArray.length > 0) {
            properties[prop.name] = cleanArray;
            hasProperties = true;
          }
        }
      }
    }

    if (hasProperties) {
      if (method === 'user_append') {
        ta.userAppend(properties);
        log('User properties appended:', properties);
      } else {
        ta.userUniqAppend(properties);
        log('User properties uniquely appended:', properties);
      }
    }
  } else if (method === 'user_unset') {
    if (data.userPropertiesUnset && data.userPropertiesUnset !== '') {
      // 쉼표로 구분된 속성명들을 배열로 변환
      var propsToUnset = data.userPropertiesUnset.split(',');
      var cleanProps = [];
      for (var i = 0; i < propsToUnset.length; i++) {
        var trimmedProp = propsToUnset[i].trim();
        if (trimmedProp !== '') {
          cleanProps.push(trimmedProp);
        }
      }
      if (cleanProps.length > 0) {
        ta.userUnset(cleanProps);
        log('User properties unset:', cleanProps);
      }
    }
  } else if (method === 'user_delete') {
    if (data.confirmUserDelete) {
      ta.userDelete();
      log('User deleted');
    } else {
      log('User delete confirmation required');
      data.gtmOnFailure();
      return false;
    }
  } else {
    log('Unknown user property method:', method);
    data.gtmOnFailure();
    return false;
  }

  return true;
}

// SDK 로딩 여부 확인 후 시작
var existingTa = copyFromWindow('ta');
if (existingTa) {
  log('ThinkingData SDK already loaded');
  executeAction();
} else {
  log('Loading ThinkingData SDK...');
  loadThinkingDataSDK();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": []
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 2025. 7. 16. 오후 10:01:22


