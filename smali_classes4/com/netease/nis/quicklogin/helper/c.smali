.class public Lcom/netease/nis/quicklogin/helper/c;
.super Lcom/netease/nis/quicklogin/helper/a;
.source "CtLoginHelper.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/helper/a;-><init>()V

    if-eqz p4, :cond_0

    .line 2
    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, p3, v0}, Lcn/com/chinatelecom/account/api/CtAuth;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/account/api/TraceLogger;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/c;->f:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/c;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nis/quicklogin/helper/c;->a(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    .line 37
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    sget-object v1, Lcom/netease/nis/quicklogin/utils/g$c;->b:Lcom/netease/nis/quicklogin/utils/g$c;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v7, p4

    .line 39
    invoke-virtual/range {v0 .. v9}, Lcom/netease/nis/quicklogin/utils/g;->a(Lcom/netease/nis/quicklogin/utils/g$c;ILjava/lang/String;IIILjava/lang/String;J)V

    .line 40
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/c;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/helper/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/c;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/c;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/c;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 34
    :try_start_0
    invoke-interface {p4, p3, p2}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 35
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 36
    :cond_0
    :goto_0
    sget-object p4, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/netease/nis/quicklogin/helper/c;->a(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->f:Landroid/content/Context;

    const-string v1, "ctccAccessCode"

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->f:Landroid/content/Context;

    const-string v4, "timeend"

    invoke-static {v0, v4}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->c:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->f:Landroid/content/Context;

    const-string v1, "ctccNumber"

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->b:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->f:Landroid/content/Context;

    const-string v1, "ctccGwAuth"

    invoke-static {v0, v1}, Lcom/netease/nis/quicklogin/utils/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->b:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
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

    .line 10
    :cond_1
    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v0

    new-instance v1, Lcn/com/chinatelecom/account/api/CtSetting;

    sget v2, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchNumberTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    const/16 v3, 0x1388

    invoke-direct {v1, v3, v3, v2}, Lcn/com/chinatelecom/account/api/CtSetting;-><init>(III)V

    new-instance v2, Lcom/netease/nis/quicklogin/helper/c$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/netease/nis/quicklogin/helper/c$a;-><init>(Lcom/netease/nis/quicklogin/helper/c;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcn/com/chinatelecom/account/api/CtAuth;->requestPreLogin(Lcn/com/chinatelecom/account/api/CtSetting;Lcn/com/chinatelecom/account/api/ResultListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c;->f:Landroid/content/Context;

    const-class v2, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "operatorType"

    const-string v2, "ct"

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ydToken"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c;->b:Ljava/lang/String;

    const-string v1, "maskNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c;->c:Ljava/lang/String;

    const-string v1, "accessToken"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c;->d:Ljava/lang/String;

    const-string v1, "gwAuth"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 18
    invoke-static {p2}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    :cond_0
    const/high16 p1, 0x10000000

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 21
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7535\u4fe1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 5

    .line 23
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getToken [callback]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getToken [time]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    .line 26
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "data"

    .line 27
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 28
    invoke-interface {p3, p2, p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 29
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7535\u4fe1 getToken failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p2, v1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 30
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 31
    :cond_1
    :goto_0
    sget-object p3, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, p1, v0}, Lcom/netease/nis/quicklogin/helper/c;->a(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 33
    sget-object p3, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/netease/nis/quicklogin/helper/c;->a(Ljava/lang/String;IILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
