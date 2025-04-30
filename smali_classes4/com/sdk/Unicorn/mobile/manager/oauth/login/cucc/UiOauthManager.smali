.class public Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;
.super Lcom/sdk/Unicorn/base/module/manager/SDKManager;
.source ""


# static fields
.field public static isDebug:Ljava/lang/Boolean;

.field public static volatile manager:Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;


# instance fields
.field public TAG:Ljava/lang/String;

.field public cancel:Z

.field public mContext:Landroid/content/Context;

.field public resultMode:Lcom/sdk/Unicorn/base/framework/bean/OauthResultMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->isDebug:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sdk/Unicorn/base/module/manager/SDKManager;-><init>()V

    const-class v0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dispatchHandler(ILcom/sdk/Unicorn/base/api/CallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/sdk/Unicorn/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/sdk/x/d;

    iget-object v1, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager$1;

    invoke-direct {v2, p0, p2}, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager$1;-><init>(Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;Lcom/sdk/Unicorn/base/api/CallBack;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/sdk/x/d;-><init>(Landroid/content/Context;ILcom/sdk/Unicorn/base/api/CallBack;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/sdk/x/d;->a(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;
    .locals 2

    sget-object v0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->manager:Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->manager:Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

    invoke-direct {v1, p0}, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->manager:Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->manager:Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->cancel:Z

    return-void
.end method

.method public login(ILcom/sdk/Unicorn/base/api/CallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/sdk/Unicorn/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/sdk/x/d;

    iget-object v1, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/login/cucc/UiOauthManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sdk/x/d;-><init>(Landroid/content/Context;ILcom/sdk/Unicorn/base/api/CallBack;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/sdk/x/d;->a(I)V

    return-void
.end method
