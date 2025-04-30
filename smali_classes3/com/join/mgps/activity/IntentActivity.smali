.class public Lcom/join/mgps/activity/IntentActivity;
.super Lcom/BaseActivity;
.source "IntentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v2, 0x3

    .line 6
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 8
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "link_type"

    .line 9
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jump_type"

    .line 10
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "link_type_val"

    .line 11
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "crc_link_type_val"

    .line 12
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "tpl_type"

    .line 13
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "object"

    .line 14
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 17
    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 18
    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v5}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_0
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto/16 :goto_2

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "application/com.join.mgps.activity.mgmainactivity_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-static {p0}, Lcom/join/mgps/activity/MGMainActivity_;->y2(Landroid/content/Context;)Lcom/join/mgps/activity/MGMainActivity_$z2;

    move-result-object p1

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity_$z2;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto/16 :goto_2

    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.papa.intent.activity.view.action.emuintent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "intentDataJson"

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 28
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    goto/16 :goto_2

    .line 29
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "intentDataJsonV3"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 30
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v3, Lcom/join/mgps/Util/IntentDateBean;

    invoke-virtual {v0, p1, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 33
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    goto :goto_1

    .line 34
    :cond_4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/join/mgps/dto/IntentDataMain;

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/join/mgps/dto/IntentDataMain;

    .line 35
    invoke-virtual {v2}, Lcom/join/mgps/dto/IntentDataMain;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/dto/IntentDataMain;->getAccountBean()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getObject()Ljava/lang/Object;

    move-result-object v3

    .line 38
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 39
    check-cast v3, Ljava/lang/String;

    const-string v4, "payStart"

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v1, :cond_6

    .line 41
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 42
    invoke-static {p0}, Lcom/join/mgps/activity/PayStartActivity_;->Y0(Landroid/content/Context;)Lcom/join/mgps/activity/PayStartActivity_$h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayStartActivity_$h;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/PayStartActivity_$h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    return-void

    .line 44
    :cond_6
    invoke-static {p0}, Lcom/join/mgps/activity/PayStartActivity_;->Y0(Landroid/content/Context;)Lcom/join/mgps/activity/PayStartActivity_$h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/PayStartActivity_$h;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/PayStartActivity_$h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/PayStartActivity_$h;->b(Lcom/join/mgps/dto/IntentDataMain;)Lcom/join/mgps/activity/PayStartActivity_$h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    const-string v0, "payNow"

    .line 46
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v2, :cond_a

    .line 47
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {v2}, Lcom/join/mgps/dto/IntentDataMain;->getData()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/join/mgps/dto/PapayOrder;

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PapayOrder;

    .line 48
    invoke-static {p0}, Lcom/join/mgps/activity/PayNowActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/PayNowActivity_$k;->c(Lcom/join/mgps/dto/PapayOrder;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/PayNowActivity_$k;->b(Lcom/join/mgps/dto/IntentDataMain;)Lcom/join/mgps/activity/PayNowActivity_$k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_8
    if-eqz v2, :cond_a

    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/dto/IntentDataMain;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v0

    .line 51
    invoke-virtual {v2}, Lcom/join/mgps/dto/IntentDataMain;->getData()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/IntentDataMain;->getAppkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/join/mgps/activity/IntentActivity;->saveSdkIntentData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v1, 0x4

    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v3

    if-ne v1, v3, :cond_a

    .line 55
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->a(Lcom/join/mgps/dto/IntentDataMain;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 57
    :cond_a
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 58
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public saveSdkIntentData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Papa_Stat_SharedPreferences"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "papasdk_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
