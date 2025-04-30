.class public Lcom/netease/nis/quicklogin/helper/d;
.super Lcom/netease/nis/quicklogin/helper/a;
.source "CuLoginHelper.java"


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/helper/a;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1, p3, p2}, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/d;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/d;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/d;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/nis/quicklogin/helper/d;->a(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    .line 22
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    sget-object v1, Lcom/netease/nis/quicklogin/utils/g$c;->b:Lcom/netease/nis/quicklogin/utils/g$c;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x3

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v7, p4

    .line 24
    invoke-virtual/range {v0 .. v9}, Lcom/netease/nis/quicklogin/utils/g;->a(Lcom/netease/nis/quicklogin/utils/g$c;ILjava/lang/String;IIILjava/lang/String;J)V

    .line 25
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/helper/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 1

    .line 20
    invoke-static {p1}, Lcom/sdk/Unicorn/base/api/ToolUtils;->clearCache(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;

    move-result-object p1

    sget p2, Lcom/netease/nis/quicklogin/QuickLogin;->fetchNumberTimeout:I

    new-instance v0, Lcom/netease/nis/quicklogin/helper/d$b;

    invoke-direct {v0, p0, p4, p3}, Lcom/netease/nis/quicklogin/helper/d$b;-><init>(Lcom/netease/nis/quicklogin/helper/d;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->getAuthoriseCode(ILcom/sdk/Unicorn/base/api/CallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->getInstance(Landroid/content/Context;)Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

    move-result-object v0

    sget v1, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchNumberTimeout:I

    new-instance v2, Lcom/netease/nis/quicklogin/helper/d$a;

    invoke-direct {v2, p0, p2, p1}, Lcom/netease/nis/quicklogin/helper/d$a;-><init>(Lcom/netease/nis/quicklogin/helper/d;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->login(ILcom/sdk/Unicorn/base/api/CallBack;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/d;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "fakeMobile"

    .line 8
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessCode"

    .line 9
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    const-class v4, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "operatorType"

    const-string v4, "cu"

    .line 11
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "ydToken"

    .line 12
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "maskNumber"

    .line 13
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "accessToken"

    .line 14
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 15
    invoke-static {p2}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    :cond_0
    const/high16 p1, 0x10000000

    .line 16
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d;->b:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8054\u901a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
