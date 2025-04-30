.class final Lcom/bytedance/sdk/openadsdk/api/plugin/a;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/api/plugin/a$b;,
        Lcom/bytedance/sdk/openadsdk/api/plugin/a$c;,
        Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;,
        Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;
    }
.end annotation


# static fields
.field static final a:Lcom/bytedance/sdk/openadsdk/api/plugin/a;


# instance fields
.field private volatile b:Lcom/bytedance/sdk/openadsdk/TTAdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/api/plugin/a;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->call(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method private final call(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/api/plugin/a$a<",
            "Lcom/bytedance/sdk/openadsdk/TTAdManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    const-string v1, "PluginDefaultAdManager"

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected manager call error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/f;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 6
    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/a$8;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$8;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_1
    const-string p1, "Not ready, no executor"

    .line 7
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    return-void
.end method

.method public createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Ljava/lang/ref/WeakReference;)V

    invoke-direct {p1, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$b;)V

    return-object p1
.end method

.method public getBiddingToken(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getBiddingToken(Lcom/bytedance/sdk/openadsdk/AdSlot;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getBiddingToken(Lcom/bytedance/sdk/openadsdk/AdSlot;ZI)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getBiddingToken(Lcom/bytedance/sdk/openadsdk/AdSlot;ZI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Landroid/os/Bundle;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    const-string v1, "action"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Landroid/os/Bundle;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->call(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$5;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->call(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getPluginVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.6.0.2"

    return-object v0
.end method

.method public getThemeStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getThemeStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onlyVerityPlayable(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->onlyVerityPlayable(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public register(Ljava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->packageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTPluginListener;->config()Landroid/os/Bundle;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 5
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->call(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public requestPermissionIfNecessary(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$6;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$6;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->call(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public setThemeStatus(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$7;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;I)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->call(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public tryShowInstallDialogWhenExit(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->b:Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->tryShowInstallDialogWhenExit(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/downloadnew/core/ExitInstallListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$3;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->call(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method
