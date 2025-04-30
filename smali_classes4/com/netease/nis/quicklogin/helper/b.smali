.class public Lcom/netease/nis/quicklogin/helper/b;
.super Lcom/netease/nis/quicklogin/helper/a;
.source "CmLoginHelper.java"


# instance fields
.field private final b:Lcom/cmic/sso/sdk/auth/AuthnHelper;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/helper/a;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->b:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    .line 6
    sget p1, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchNumberTimeout:I

    int-to-long p1, p1

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/cmic/sso/sdk/auth/c;->setOverTime(J)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/nis/quicklogin/helper/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    .line 10
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "accessToken"

    .line 11
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "deviceId"

    .line 13
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "randomId"

    .line 16
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_1
    sget-object p1, Lcom/netease/nis/quicklogin/b/a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/netease/nis/quicklogin/b/a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/netease/nis/quicklogin/b/a;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/nis/quicklogin/b/a;->b:Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/netease/nis/quicklogin/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nis/quicklogin/helper/b;->a(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    .line 21
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    sget-object v1, Lcom/netease/nis/quicklogin/utils/g$c;->b:Lcom/netease/nis/quicklogin/utils/g$c;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x2

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v7, p4

    .line 23
    invoke-virtual/range {v0 .. v9}, Lcom/netease/nis/quicklogin/utils/g;->a(Lcom/netease/nis/quicklogin/utils/g$c;ILjava/lang/String;IIILjava/lang/String;J)V

    .line 24
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/helper/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/helper/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 2

    .line 20
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/b;->b:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    new-instance v1, Lcom/netease/nis/quicklogin/helper/b$c;

    invoke-direct {v1, p0, p4, p3}, Lcom/netease/nis/quicklogin/helper/b$c;-><init>(Lcom/netease/nis/quicklogin/helper/b;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    const-string v1, "cmccAppid"

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    const-string v1, "cmccAppkey"

    .line 5
    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    const-string v3, "timeend"

    invoke-static {v2, v3}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "prefetchMobileNumber [time]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->b:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    new-instance v3, Lcom/netease/nis/quicklogin/helper/b$a;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/nis/quicklogin/helper/b$a;-><init>(Lcom/netease/nis/quicklogin/helper/b;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b;->b:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b;->d:Ljava/lang/String;

    new-instance v3, Lcom/netease/nis/quicklogin/helper/b$b;

    invoke-direct {v3, p0, p2, p1}, Lcom/netease/nis/quicklogin/helper/b$b;-><init>(Lcom/netease/nis/quicklogin/helper/b;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    return-void
.end method
