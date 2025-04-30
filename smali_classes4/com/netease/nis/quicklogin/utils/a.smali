.class public Lcom/netease/nis/quicklogin/utils/a;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmic/sso/sdk/auth/c;->getNetworkType(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkNetWork [callback]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    const-string v0, "networktype"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "2"

    const-string v3, "3"

    const/4 v4, 0x1

    const-string v5, "1"

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v1, "errorDes"

    .line 7
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "\u6613\u76fetoken\u4e3a\u7a7a"

    invoke-interface {p1, v6, v1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_6

    const-string p1, "operatortype"

    .line 9
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    return p0

    .line 12
    :cond_4
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p0, 0x3

    return p0

    .line 13
    :cond_5
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v4

    :cond_6
    const/4 p0, 0x5

    return p0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 0

    if-nez p0, :cond_0

    return p1

    .line 39
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method

.method public static a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 17

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHidePrivacySmh()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_0

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u300a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u4e2d\u56fd\u79fb\u52a8\u8ba4\u8bc1\u670d\u52a1\u534f\u8bae"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCmProtocolNavTitle()Ljava/lang/String;

    move-result-object v4

    const-string v7, "https://wap.cmpassport.com/resources/html/contract.html"

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u5929\u7ffc\u8d26\u53f7\u670d\u52a1\u534f\u8bae\u4e0e\u9690\u79c1\u653f\u7b56"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCtProtocolNavTitle()Ljava/lang/String;

    move-result-object v4

    const-string v7, "https://e.189.cn/sdk/agreement/content.do?type=main&appKey=&hidetop=true"

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u4e2d\u56fd\u8054\u901a\u8ba4\u8bc1\u670d\u52a1\u534f\u8bae"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCuProtocolNavTitle()Ljava/lang/String;

    move-result-object v4

    const-string v7, "https://ms.zzx9.cn/html/oauth/protocol2.html"

    .line 54
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolNavTitle()Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-nez v3, :cond_4

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u300b"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolText()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocol2Text()Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocol3Text()Ljava/lang/String;

    move-result-object v9

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolConnect()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u3001"

    .line 61
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 64
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 66
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 68
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_7
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 71
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 72
    new-instance v14, Lcom/netease/nis/quicklogin/ui/a;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v15

    invoke-direct {v14, v15, v7, v4, v6}, Lcom/netease/nis/quicklogin/ui/a;-><init>(Lcom/netease/nis/quicklogin/listener/ClickEventListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x21

    invoke-virtual {v13, v14, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 73
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyProtocolColor()I

    move-result v6

    if-eqz v6, :cond_d

    .line 75
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v14, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v16

    add-int v5, v4, v16

    invoke-virtual {v13, v14, v15, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 76
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v12, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 78
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v4

    invoke-virtual {v13, v5, v4, v14, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCustomProtocolNavTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 80
    new-instance v5, Lcom/netease/nis/quicklogin/ui/a;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolLink()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCustomProtocolNavTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    invoke-direct {v5, v14, v15, v7, v2}, Lcom/netease/nis/quicklogin/ui/a;-><init>(Lcom/netease/nis/quicklogin/listener/ClickEventListener;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_8
    const/4 v2, 0x2

    .line 81
    new-instance v5, Lcom/netease/nis/quicklogin/ui/a;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocolLink()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v7, v14, v3, v2}, Lcom/netease/nis/quicklogin/ui/a;-><init>(Lcom/netease/nis/quicklogin/listener/ClickEventListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v7, 0x21

    invoke-virtual {v13, v5, v4, v2, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 83
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 84
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 85
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v13, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCustomProtocol2NavTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x3

    if-nez v4, :cond_a

    .line 87
    new-instance v4, Lcom/netease/nis/quicklogin/ui/a;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocol2Link()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCustomProtocol2NavTitle()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v4, v7, v14, v15, v5}, Lcom/netease/nis/quicklogin/ui/a;-><init>(Lcom/netease/nis/quicklogin/listener/ClickEventListener;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 88
    :cond_a
    new-instance v4, Lcom/netease/nis/quicklogin/ui/a;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocol2Link()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v7, v14, v8, v5}, Lcom/netease/nis/quicklogin/ui/a;-><init>(Lcom/netease/nis/quicklogin/listener/ClickEventListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const/16 v7, 0x21

    invoke-virtual {v13, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 90
    :cond_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 91
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 92
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v13, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCustomProtocol3NavTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_c

    .line 94
    new-instance v4, Lcom/netease/nis/quicklogin/ui/a;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocol3Link()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getCustomProtocol3NavTitle()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v6, v7, v14, v5}, Lcom/netease/nis/quicklogin/ui/a;-><init>(Lcom/netease/nis/quicklogin/listener/ClickEventListener;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 95
    :cond_c
    new-instance v4, Lcom/netease/nis/quicklogin/ui/a;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getProtocol3Link()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7, v9, v5}, Lcom/netease/nis/quicklogin/ui/a;-><init>(Lcom/netease/nis/quicklogin/listener/ClickEventListener;Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x21

    invoke-virtual {v13, v4, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_d
    const/16 v6, 0x21

    .line 97
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextColor()I

    move-result v2

    if-eqz v2, :cond_11

    .line 98
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v4, v1, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 99
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 100
    invoke-virtual {v12, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 101
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v13, v1, v0, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 102
    :cond_e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 103
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 104
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v13, v1, v0, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 105
    :cond_f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 106
    invoke-virtual {v12, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 107
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v13, v1, v0, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 108
    :cond_10
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 109
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object/from16 v1, p3

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v0, v1, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    return-object v13
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 27
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    .line 28
    instance-of v0, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;

    if-eqz v0, :cond_0

    .line 29
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    instance-of v0, p1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;

    if-eqz v0, :cond_1

    .line 31
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 32
    :cond_1
    instance-of v0, p1, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;

    if-eqz v0, :cond_2

    .line 33
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 34
    :cond_2
    instance-of v0, p1, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;

    if-eqz v0, :cond_3

    .line 35
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 36
    :cond_3
    instance-of p1, p1, Lcom/netease/nis/quicklogin/entity/CTLoginAuth;

    if-eqz p1, :cond_4

    .line 37
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    const-class v0, Lcom/netease/nis/quicklogin/entity/CTLoginAuth;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 16
    iget v0, p0, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    iget p0, p0, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {p0}, Lcom/netease/nis/quicklogin/utils/a;->a(I)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dns1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dns2:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "0"

    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Landroid/widget/TextView;)V
    .locals 4

    .line 40
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextEnd()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/netease/nis/quicklogin/utils/a;->a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p0

    .line 41
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextStartSize()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextStartSize()F

    move-result v3

    invoke-static {v2, v3}, Lcom/netease/nis/quicklogin/utils/i;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyTextStart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x21

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 43
    :cond_0
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 44
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 45
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Ljava/lang/ref/WeakReference;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    .line 15
    invoke-static {p0, v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    .line 4
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 6
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 8
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 13
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    invoke-static {p0}, Lcom/netease/nis/quicklogin/utils/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmic/sso/sdk/auth/c;->getNetworkType(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "operatortype"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string v0, "2"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const-string v0, "3"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0
.end method
