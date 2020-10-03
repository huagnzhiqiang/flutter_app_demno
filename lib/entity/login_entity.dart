class LoginEntity {
  String code;
  String extend;
  Data data;
  String message;
  String remark;

  LoginEntity({this.code, this.extend, this.data, this.message, this.remark});

  LoginEntity.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    extend = json['extend'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    remark = json['remark'];
  }

  @override
  String toString() {
    return 'LoginEntity{code: $code, extend: $extend, data: $data, message: $message, remark: $remark}';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['extend'] = this.extend;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['message'] = this.message;
    data['remark'] = this.remark;
    return data;
  }
}

class Data {
  int id;
  String username;
  String name;
  String passwordMd5;
  String imUsername;
  String imPassword;
  String phone;
  String phoneCountryCode;
  int userType;
  String lastLoginDatetime;
  int loginCount;
  bool locked;
  String token;
  UserInfo userInfo;
  bool isBindWechat;
  String encryptCode;
  WxUserInfo wxUserInfo;
  String role;
  UserOperation userOperation;
  OtherInfo otherInfo;
  bool isVip;
  EditorExperienceServiceApply editorExperienceServiceApply;
  String channelList;

  Data(
      {this.id,
      this.username,
      this.name,
      this.passwordMd5,
      this.imUsername,
      this.imPassword,
      this.phone,
      this.phoneCountryCode,
      this.userType,
      this.lastLoginDatetime,
      this.loginCount,
      this.locked,
      this.token,
      this.userInfo,
      this.isBindWechat,
      this.encryptCode,
      this.wxUserInfo,
      this.role,
      this.userOperation,
      this.otherInfo,
      this.isVip,
      this.editorExperienceServiceApply,
      this.channelList});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    name = json['name'];
    passwordMd5 = json['password_md5'];
    imUsername = json['im_username'];
    imPassword = json['im_password'];
    phone = json['phone'];
    phoneCountryCode = json['phone_country_code'];
    userType = json['user_type'];
    lastLoginDatetime = json['last_login_datetime'];
    loginCount = json['login_count'];
    locked = json['locked'];
    token = json['token'];
    userInfo = json['user_info'] != null ? new UserInfo.fromJson(json['user_info']) : null;
    isBindWechat = json['is_bind_wechat'];
    encryptCode = json['encrypt_code'];
    wxUserInfo = json['wx_user_info'] != null ? new WxUserInfo.fromJson(json['wx_user_info']) : null;
    role = json['role'];
    userOperation = json['user_operation'] != null ? new UserOperation.fromJson(json['user_operation']) : null;
    otherInfo = json['other_info'] != null ? new OtherInfo.fromJson(json['other_info']) : null;
    isVip = json['is_vip'];
    editorExperienceServiceApply = json['editorExperienceServiceApply'] != null
        ? new EditorExperienceServiceApply.fromJson(json['editorExperienceServiceApply'])
        : null;
    channelList = json['channelList'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['name'] = this.name;
    data['password_md5'] = this.passwordMd5;
    data['im_username'] = this.imUsername;
    data['im_password'] = this.imPassword;
    data['phone'] = this.phone;
    data['phone_country_code'] = this.phoneCountryCode;
    data['user_type'] = this.userType;
    data['last_login_datetime'] = this.lastLoginDatetime;
    data['login_count'] = this.loginCount;
    data['locked'] = this.locked;
    data['token'] = this.token;
    if (this.userInfo != null) {
      data['user_info'] = this.userInfo.toJson();
    }
    data['is_bind_wechat'] = this.isBindWechat;
    data['encrypt_code'] = this.encryptCode;
    if (this.wxUserInfo != null) {
      data['wx_user_info'] = this.wxUserInfo.toJson();
    }
    data['role'] = this.role;
    if (this.userOperation != null) {
      data['user_operation'] = this.userOperation.toJson();
    }
    if (this.otherInfo != null) {
      data['other_info'] = this.otherInfo.toJson();
    }
    data['is_vip'] = this.isVip;
    if (this.editorExperienceServiceApply != null) {
      data['editorExperienceServiceApply'] = this.editorExperienceServiceApply.toJson();
    }
    data['channelList'] = this.channelList;
    return data;
  }

  @override
  String toString() {
    return 'Data{id: $id, username: $username, name: $name, passwordMd5: $passwordMd5, imUsername: $imUsername, imPassword: $imPassword, phone: $phone, phoneCountryCode: $phoneCountryCode, userType: $userType, lastLoginDatetime: $lastLoginDatetime, loginCount: $loginCount, locked: $locked, token: $token, userInfo: $userInfo, isBindWechat: $isBindWechat, encryptCode: $encryptCode, wxUserInfo: $wxUserInfo, role: $role, userOperation: $userOperation, otherInfo: $otherInfo, isVip: $isVip, editorExperienceServiceApply: $editorExperienceServiceApply, channelList: $channelList}';
  }
}

class UserInfo {
  int id;
  int userId;
  String headImg;
  String nickname;
  String name;
  int userType;
  int age;
  int sex;
  String province;
  String city;
  String area;
  int ibeanCount;
  double totalSubsidyRedPacket;
  double subsidyRedPacket;
  double totalRewardPrice;
  double price;
  double totalOutgoing;
  bool commend;
  String commendDatetime;
  String createDatetime;
  String updateDatetime;
  int reservedType;
  String reserved;
  String clientType;
  String clientManufacturer;
  String clientSystem;
  int commendCheckStatus;
  String preCommendDatetime;
  String recommendAccountPhone;
  double materialCouponPrice;
  double materialCouponFrozenPrice;
  int certificationStatus;
  String certificationResult;
  String idCardFront;
  String idCardReverse;
  String qq;
  String idCard;
  String career;
  String interestTagId;
  String interestTagName;
  String introduction;
  String number;
  String birthYear;
  int birthdayMonth;
  int birthdayDay;
  String alipayAccount;
  double totalIncoming;

  UserInfo(
      {this.id,
      this.userId,
      this.headImg,
      this.nickname,
      this.name,
      this.userType,
      this.age,
      this.sex,
      this.province,
      this.city,
      this.area,
      this.ibeanCount,
      this.totalSubsidyRedPacket,
      this.subsidyRedPacket,
      this.totalRewardPrice,
      this.price,
      this.totalOutgoing,
      this.commend,
      this.commendDatetime,
      this.createDatetime,
      this.updateDatetime,
      this.reservedType,
      this.reserved,
      this.clientType,
      this.clientManufacturer,
      this.clientSystem,
      this.commendCheckStatus,
      this.preCommendDatetime,
      this.recommendAccountPhone,
      this.materialCouponPrice,
      this.materialCouponFrozenPrice,
      this.certificationStatus,
      this.certificationResult,
      this.idCardFront,
      this.idCardReverse,
      this.qq,
      this.idCard,
      this.career,
      this.interestTagId,
      this.interestTagName,
      this.introduction,
      this.number,
      this.birthYear,
      this.birthdayMonth,
      this.birthdayDay,
      this.alipayAccount,
      this.totalIncoming});

  UserInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    headImg = json['head_img'];
    nickname = json['nickname'];
    name = json['name'];
    userType = json['user_type'];
    age = json['age'];
    sex = json['sex'];
    province = json['province'];
    city = json['city'];
    area = json['area'];
    ibeanCount = json['ibean_count'];
    totalSubsidyRedPacket = json['total_subsidy_red_packet'];
    subsidyRedPacket = json['subsidy_red_packet'];
    totalRewardPrice = json['total_reward_price'];
    price = json['price'];
    totalOutgoing = json['total_outgoing'];
    commend = json['commend'];
    commendDatetime = json['commend_datetime'];
    createDatetime = json['create_datetime'];
    updateDatetime = json['update_datetime'];
    reservedType = json['reserved_type'];
    reserved = json['reserved'];
    clientType = json['client_type'];
    clientManufacturer = json['client_manufacturer'];
    clientSystem = json['client_system'];
    commendCheckStatus = json['commend_check_status'];
    preCommendDatetime = json['pre_commend_datetime'];
    recommendAccountPhone = json['recommend_account_phone'];
    materialCouponPrice = json['material_coupon_price'];
    materialCouponFrozenPrice = json['material_coupon_frozen_price'];
    certificationStatus = json['certification_status'];
    certificationResult = json['certification_result'];
    idCardFront = json['id_card_front'];
    idCardReverse = json['id_card_reverse'];
    qq = json['qq'];
    idCard = json['id_card'];
    career = json['career'];
    interestTagId = json['interest_tag_id'];
    interestTagName = json['interest_tag_name'];
    introduction = json['introduction'];
    number = json['number'];
    birthYear = json['birth_year'];
    birthdayMonth = json['birthday_month'];
    birthdayDay = json['birthday_day'];
    alipayAccount = json['alipay_account'];
    totalIncoming = json['totalIncoming'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['head_img'] = this.headImg;
    data['nickname'] = this.nickname;
    data['name'] = this.name;
    data['user_type'] = this.userType;
    data['age'] = this.age;
    data['sex'] = this.sex;
    data['province'] = this.province;
    data['city'] = this.city;
    data['area'] = this.area;
    data['ibean_count'] = this.ibeanCount;
    data['total_subsidy_red_packet'] = this.totalSubsidyRedPacket;
    data['subsidy_red_packet'] = this.subsidyRedPacket;
    data['total_reward_price'] = this.totalRewardPrice;
    data['price'] = this.price;
    data['total_outgoing'] = this.totalOutgoing;
    data['commend'] = this.commend;
    data['commend_datetime'] = this.commendDatetime;
    data['create_datetime'] = this.createDatetime;
    data['update_datetime'] = this.updateDatetime;
    data['reserved_type'] = this.reservedType;
    data['reserved'] = this.reserved;
    data['client_type'] = this.clientType;
    data['client_manufacturer'] = this.clientManufacturer;
    data['client_system'] = this.clientSystem;
    data['commend_check_status'] = this.commendCheckStatus;
    data['pre_commend_datetime'] = this.preCommendDatetime;
    data['recommend_account_phone'] = this.recommendAccountPhone;
    data['material_coupon_price'] = this.materialCouponPrice;
    data['material_coupon_frozen_price'] = this.materialCouponFrozenPrice;
    data['certification_status'] = this.certificationStatus;
    data['certification_result'] = this.certificationResult;
    data['id_card_front'] = this.idCardFront;
    data['id_card_reverse'] = this.idCardReverse;
    data['qq'] = this.qq;
    data['id_card'] = this.idCard;
    data['career'] = this.career;
    data['interest_tag_id'] = this.interestTagId;
    data['interest_tag_name'] = this.interestTagName;
    data['introduction'] = this.introduction;
    data['number'] = this.number;
    data['birth_year'] = this.birthYear;
    data['birthday_month'] = this.birthdayMonth;
    data['birthday_day'] = this.birthdayDay;
    data['alipay_account'] = this.alipayAccount;
    data['totalIncoming'] = this.totalIncoming;
    return data;
  }

  @override
  String toString() {
    return 'UserInfo{id: $id, userId: $userId, headImg: $headImg, nickname: $nickname, name: $name, userType: $userType, age: $age, sex: $sex, province: $province, city: $city, area: $area, ibeanCount: $ibeanCount, totalSubsidyRedPacket: $totalSubsidyRedPacket, subsidyRedPacket: $subsidyRedPacket, totalRewardPrice: $totalRewardPrice, price: $price, totalOutgoing: $totalOutgoing, commend: $commend, commendDatetime: $commendDatetime, createDatetime: $createDatetime, updateDatetime: $updateDatetime, reservedType: $reservedType, reserved: $reserved, clientType: $clientType, clientManufacturer: $clientManufacturer, clientSystem: $clientSystem, commendCheckStatus: $commendCheckStatus, preCommendDatetime: $preCommendDatetime, recommendAccountPhone: $recommendAccountPhone, materialCouponPrice: $materialCouponPrice, materialCouponFrozenPrice: $materialCouponFrozenPrice, certificationStatus: $certificationStatus, certificationResult: $certificationResult, idCardFront: $idCardFront, idCardReverse: $idCardReverse, qq: $qq, idCard: $idCard, career: $career, interestTagId: $interestTagId, interestTagName: $interestTagName, introduction: $introduction, number: $number, birthYear: $birthYear, birthdayMonth: $birthdayMonth, birthdayDay: $birthdayDay, alipayAccount: $alipayAccount, totalIncoming: $totalIncoming}';
  }
}

class WxUserInfo {
  String nickname;
  String headimgurl;

  WxUserInfo({this.nickname, this.headimgurl});

  WxUserInfo.fromJson(Map<String, dynamic> json) {
    nickname = json['nickname'];
    headimgurl = json['headimgurl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nickname'] = this.nickname;
    data['headimgurl'] = this.headimgurl;
    return data;
  }

  @override
  String toString() {
    return 'WxUserInfo{nickname: $nickname, headimgurl: $headimgurl}';
  }
}

class UserOperation {
  int messageCount;
  int commentCount;
  int followCount;

  UserOperation({this.messageCount, this.commentCount, this.followCount});

  UserOperation.fromJson(Map<String, dynamic> json) {
    messageCount = json['message_count'];
    commentCount = json['comment_count'];
    followCount = json['follow_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message_count'] = this.messageCount;
    data['comment_count'] = this.commentCount;
    data['follow_count'] = this.followCount;
    return data;
  }

  @override
  String toString() {
    return 'UserOperation{messageCount: $messageCount, commentCount: $commentCount, followCount: $followCount}';
  }
}

class OtherInfo {
  int id;
  int userId;
  int checkStatus;
  String name;
  String shortName;
  String scale;
  String trade;
  String tradeName;
  String city;
  String cityName;
  String province;
  String provinceName;
  int certificatesType;
  String certificatesUrl;
  String createDatetime;
  String updateDatetime;
  String message;
  String remark;
  String authorizationLetter;
  String replyDatetime;
  int professionId;
  String professionName;
  String creditCode;
  int version;
  String startDatetime;
  String endDatetime;

  OtherInfo(
      {this.id,
      this.userId,
      this.checkStatus,
      this.name,
      this.shortName,
      this.scale,
      this.trade,
      this.tradeName,
      this.city,
      this.cityName,
      this.province,
      this.provinceName,
      this.certificatesType,
      this.certificatesUrl,
      this.createDatetime,
      this.updateDatetime,
      this.message,
      this.remark,
      this.authorizationLetter,
      this.replyDatetime,
      this.professionId,
      this.professionName,
      this.creditCode,
      this.version,
      this.startDatetime,
      this.endDatetime});

  OtherInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    checkStatus = json['check_status'];
    name = json['name'];
    shortName = json['short_name'];
    scale = json['scale'];
    trade = json['trade'];
    tradeName = json['trade_Name'];
    city = json['city'];
    cityName = json['city_name'];
    province = json['province'];
    provinceName = json['province_name'];
    certificatesType = json['certificates_type'];
    certificatesUrl = json['certificates_url'];
    createDatetime = json['create_datetime'];
    updateDatetime = json['update_datetime'];
    message = json['message'];
    remark = json['remark'];
    authorizationLetter = json['authorization_letter'];
    replyDatetime = json['reply_datetime'];
    professionId = json['profession_id'];
    professionName = json['profession_name'];
    creditCode = json['credit_code'];
    version = json['version'];
    startDatetime = json['start_datetime'];
    endDatetime = json['end_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['check_status'] = this.checkStatus;
    data['name'] = this.name;
    data['short_name'] = this.shortName;
    data['scale'] = this.scale;
    data['trade'] = this.trade;
    data['trade_Name'] = this.tradeName;
    data['city'] = this.city;
    data['city_name'] = this.cityName;
    data['province'] = this.province;
    data['province_name'] = this.provinceName;
    data['certificates_type'] = this.certificatesType;
    data['certificates_url'] = this.certificatesUrl;
    data['create_datetime'] = this.createDatetime;
    data['update_datetime'] = this.updateDatetime;
    data['message'] = this.message;
    data['remark'] = this.remark;
    data['authorization_letter'] = this.authorizationLetter;
    data['reply_datetime'] = this.replyDatetime;
    data['profession_id'] = this.professionId;
    data['profession_name'] = this.professionName;
    data['credit_code'] = this.creditCode;
    data['version'] = this.version;
    data['start_datetime'] = this.startDatetime;
    data['end_datetime'] = this.endDatetime;
    return data;
  }

  @override
  String toString() {
    return 'OtherInfo{id: $id, userId: $userId, checkStatus: $checkStatus, name: $name, shortName: $shortName, scale: $scale, trade: $trade, tradeName: $tradeName, city: $city, cityName: $cityName, province: $province, provinceName: $provinceName, certificatesType: $certificatesType, certificatesUrl: $certificatesUrl, createDatetime: $createDatetime, updateDatetime: $updateDatetime, message: $message, remark: $remark, authorizationLetter: $authorizationLetter, replyDatetime: $replyDatetime, professionId: $professionId, professionName: $professionName, creditCode: $creditCode, version: $version, startDatetime: $startDatetime, endDatetime: $endDatetime}';
  }
}

class EditorExperienceServiceApply {
  int id;
  String company;
  String provinceCode;
  String cityCode;
  String areaCode;
  String trade;
  String username;
  String phone;
  String packageName;
  int userId;
  String createDatetime;
  int checkStatus;
  String contractAttached;
  String contractNo;
  String contractAmount;
  String authName;
  String authPosition;
  String authMobile;
  String authPhone;
  String authEmail;
  String authIdcard;
  int agentUserId;
  int agentId;
  String updateDatetime;
  int subsidyRedPacket;
  int stepIndex;
  int bankId;

  EditorExperienceServiceApply(
      {this.id,
      this.company,
      this.provinceCode,
      this.cityCode,
      this.areaCode,
      this.trade,
      this.username,
      this.phone,
      this.packageName,
      this.userId,
      this.createDatetime,
      this.checkStatus,
      this.contractAttached,
      this.contractNo,
      this.contractAmount,
      this.authName,
      this.authPosition,
      this.authMobile,
      this.authPhone,
      this.authEmail,
      this.authIdcard,
      this.agentUserId,
      this.agentId,
      this.updateDatetime,
      this.subsidyRedPacket,
      this.stepIndex,
      this.bankId});

  EditorExperienceServiceApply.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    company = json['company'];
    provinceCode = json['province_code'];
    cityCode = json['city_code'];
    areaCode = json['area_code'];
    trade = json['trade'];
    username = json['username'];
    phone = json['phone'];
    packageName = json['package_name'];
    userId = json['user_id'];
    createDatetime = json['create_datetime'];
    checkStatus = json['check_status'];
    contractAttached = json['contract_attached'];
    contractNo = json['contract_no'];
    contractAmount = json['contract_amount'];
    authName = json['auth_name'];
    authPosition = json['auth_position'];
    authMobile = json['auth_mobile'];
    authPhone = json['auth_phone'];
    authEmail = json['auth_email'];
    authIdcard = json['auth_idcard'];
    agentUserId = json['agent_user_id'];
    agentId = json['agent_id'];
    updateDatetime = json['update_datetime'];
    subsidyRedPacket = json['subsidy_red_packet'];
    stepIndex = json['step_index'];
    bankId = json['bank_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company'] = this.company;
    data['province_code'] = this.provinceCode;
    data['city_code'] = this.cityCode;
    data['area_code'] = this.areaCode;
    data['trade'] = this.trade;
    data['username'] = this.username;
    data['phone'] = this.phone;
    data['package_name'] = this.packageName;
    data['user_id'] = this.userId;
    data['create_datetime'] = this.createDatetime;
    data['check_status'] = this.checkStatus;
    data['contract_attached'] = this.contractAttached;
    data['contract_no'] = this.contractNo;
    data['contract_amount'] = this.contractAmount;
    data['auth_name'] = this.authName;
    data['auth_position'] = this.authPosition;
    data['auth_mobile'] = this.authMobile;
    data['auth_phone'] = this.authPhone;
    data['auth_email'] = this.authEmail;
    data['auth_idcard'] = this.authIdcard;
    data['agent_user_id'] = this.agentUserId;
    data['agent_id'] = this.agentId;
    data['update_datetime'] = this.updateDatetime;
    data['subsidy_red_packet'] = this.subsidyRedPacket;
    data['step_index'] = this.stepIndex;
    data['bank_id'] = this.bankId;
    return data;
  }

  @override
  String toString() {
    return 'EditorExperienceServiceApply{id: $id, company: $company, provinceCode: $provinceCode, cityCode: $cityCode, areaCode: $areaCode, trade: $trade, username: $username, phone: $phone, packageName: $packageName, userId: $userId, createDatetime: $createDatetime, checkStatus: $checkStatus, contractAttached: $contractAttached, contractNo: $contractNo, contractAmount: $contractAmount, authName: $authName, authPosition: $authPosition, authMobile: $authMobile, authPhone: $authPhone, authEmail: $authEmail, authIdcard: $authIdcard, agentUserId: $agentUserId, agentId: $agentId, updateDatetime: $updateDatetime, subsidyRedPacket: $subsidyRedPacket, stepIndex: $stepIndex, bankId: $bankId}';
  }
}
