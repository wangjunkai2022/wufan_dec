.class public Lcom/cmic/sso/sdk/auth/AuthnHelper;
.super Lcom/cmic/sso/sdk/auth/c;
.source "AuthnHelper.java"


# static fields
.field private static f:Lcom/cmic/sso/sdk/auth/AuthnHelper;


# instance fields
.field private g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

.field private h:Lcom/cmic/sso/sdk/view/LoginPageInListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/auth/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->h:Lcom/cmic/sso/sdk/view/LoginPageInListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/auth/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->h:Lcom/cmic/sso/sdk/view/LoginPageInListener;

    .line 5
    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/c;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->b(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V
    .locals 3

    const-string v0, "traceId"

    .line 2
    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/a;)V

    const-string p1, "com.cmic.sso.sdk.view.LoginAuthActivity"

    .line 6
    invoke-virtual {v2, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;
    .locals 2

    .line 1
    sget-object v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/AuthnHelper;
    .locals 2

    .line 7
    sget-object v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-nez v0, :cond_1

    .line 8
    const-class v0, Lcom/cmic/sso/sdk/auth/AuthnHelper;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-direct {v1, p0, p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    .line 11
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->f:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/cmic/sso/sdk/a;)V
    .locals 4

    .line 3
    new-instance v0, Lcom/cmic/sso/sdk/auth/c$a;

    invoke-direct {v0, p0, p1}, Lcom/cmic/sso/sdk/auth/c$a;-><init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/a;)V

    .line 4
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c;->a:Lcom/cmic/sso/sdk/auth/a;

    new-instance v2, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;

    invoke-direct {v2, p0, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lcom/cmic/sso/sdk/auth/c$a;)V

    invoke-virtual {v1, p1, v2}, Lcom/cmic/sso/sdk/auth/a;->a(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V

    return-void
.end method

.method public getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig$Builder;->build()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    return-object v0
.end method

.method public getOverTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cmic/sso/sdk/auth/c;->c:J

    return-wide v0
.end method

.method public getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V

    return-void
.end method

.method public getPhoneInfo(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V
    .locals 8

    .line 2
    invoke-virtual {p0, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    .line 3
    invoke-virtual {v4, v0, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    .line 4
    new-instance p4, Lcom/cmic/sso/sdk/auth/AuthnHelper$1;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/sso/sdk/auth/AuthnHelper$1;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    invoke-static {p4}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V

    return-void
.end method

.method public loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V

    return-void
.end method

.method public loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V
    .locals 8

    .line 2
    invoke-virtual {p0, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    .line 3
    invoke-virtual {v4, v0, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    .line 4
    new-instance p4, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    invoke-static {p4}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V

    return-void
.end method

.method public loginPageInCallBack(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->h:Lcom/cmic/sso/sdk/view/LoginPageInListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/cmic/sso/sdk/view/LoginPageInListener;->onLoginPageInComplete(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V

    return-void
.end method

.method public mobileAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V
    .locals 8

    .line 2
    invoke-virtual {p0, p3}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/auth/TokenListener;)Lcom/cmic/sso/sdk/a;

    move-result-object v4

    const-string v0, "SDKRequestCode"

    .line 3
    invoke-virtual {v4, v0, p4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;I)V

    .line 4
    new-instance p4, Lcom/cmic/sso/sdk/auth/AuthnHelper$3;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    move-object v0, p4

    move-object v1, p0

    move-object v3, v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/cmic/sso/sdk/auth/AuthnHelper$3;-><init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    invoke-static {p4}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V

    return-void
.end method

.method public quitAuthActivity()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cmic/sso/sdk/view/a;->a()Lcom/cmic/sso/sdk/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/a;->b()Lcom/cmic/sso/sdk/view/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/cmic/sso/sdk/view/a;->a()Lcom/cmic/sso/sdk/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/a;->b()Lcom/cmic/sso/sdk/view/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmic/sso/sdk/view/a$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "AuthnHelper"

    const-string/jumbo v1, "\u5173\u95ed\u6388\u6743\u9875\u5931\u8d25"

    .line 4
    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAuthThemeConfig(Lcom/cmic/sso/sdk/view/AuthThemeConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->g:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    return-void
.end method

.method public setPageInListener(Lcom/cmic/sso/sdk/view/LoginPageInListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper;->h:Lcom/cmic/sso/sdk/view/LoginPageInListener;

    return-void
.end method
