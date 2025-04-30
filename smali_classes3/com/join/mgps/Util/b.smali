.class public Lcom/join/mgps/Util/b;
.super Ljava/lang/Object;
.source "AccountUtil.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EBean;
    scope = .enum Lorg/androidannotations/annotations/EBean$Scope;->Singleton:Lorg/androidannotations/annotations/EBean$Scope;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "b"


# instance fields
.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static piv(Lcom/wufan/user/service/protobuf/l0;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "uid"

    .line 3
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "token"

    .line 4
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "t"

    .line 5
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "\\|"

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getUid()I

    move-result v1

    const/4 v5, 0x1

    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/wufan/user/service/protobuf/l0;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    array-length p0, v4

    if-le p0, v5, :cond_2

    aget-object p0, v4, v5

    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, v4, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_2

    const/4 v0, 0x1

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static vl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\\|"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    array-length p0, v0

    const/4 v2, 0x1

    if-le p0, v2, :cond_2

    .line 5
    aget-object p0, v0, v2

    return-object p0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public accountLoginOut(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountDataV2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 7
    :cond_0
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 10
    :cond_1
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 13
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_login_out"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 16
    invoke-static {}, Lcom/join/mgps/Util/i0;->N()V

    .line 17
    invoke-static {}, Lcom/join/mgps/Util/i0;->g1()V

    .line 18
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->M()V

    .line 19
    invoke-static {p1}, Lcom/join/mgps/Util/p0;->e(Landroid/content/Context;)V

    return-void
.end method

.method public getAccountData()Lcom/join/mgps/dto/AccountBean;
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->cloneNewAccountBean()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->decryptBuf(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/wufan/user/service/protobuf/l0;->m5([B)Lcom/wufan/user/service/protobuf/l0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    return-object v0

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/dto/AccountBean;->convert(Lcom/wufan/user/service/protobuf/l0;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    return-object v0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountDataV2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    .line 12
    sput-object v0, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    return-object v0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    const-class v2, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountBean;

    .line 16
    iget-object v2, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->accountData()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    .line 17
    iget-object v2, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->accountDataV2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 18
    sput-object v1, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    return-object v1

    .line 19
    :cond_4
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    new-instance v0, Lcom/join/mgps/dto/AccountBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBean;-><init>()V

    return-object v0
.end method

.method public getAccountFromeSdcard()Lcom/join/mgps/dto/AccountBean;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/wufan91/paysdk/.accountV2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/f0;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAccountStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUserIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->localUserIcon()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTourist()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    invoke-static {}, Ln1/l0;->p()Ln1/l0;

    move-result-object v1

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ln1/l0;->o(J)Lcom/join/mgps/db/tables/TokenTable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lcom/join/mgps/db/tables/TokenTable;

    invoke-direct {v1}, Lcom/join/mgps/db/tables/TokenTable;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/db/tables/TokenTable;->setUid(J)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/db/tables/TokenTable;->setToken(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ln1/l0;->p()Ln1/l0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 8
    :cond_2
    sput-object p1, Lcom/join/mgps/rpc/g;->N:Lcom/join/mgps/dto/AccountBean;

    .line 9
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->L(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount_type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 11
    iget-object v2, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->accountDataV2()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-static {v1}, Lcom/join/mgps/Util/AESUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 13
    invoke-static {p2}, Lcom/join/mgps/broadcast/a;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    if-eq v0, p1, :cond_5

    .line 15
    :cond_4
    invoke-static {p2}, Lcom/join/mgps/broadcast/a;->b(Landroid/content/Context;)V

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    if-nez p1, :cond_6

    .line 17
    invoke-static {p2}, Lcom/join/mgps/Util/p0;->d(Landroid/content/Context;)V

    :cond_6
    return-void
.end method

.method public setLocalUserIcon(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/b;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->localUserIcon()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method
