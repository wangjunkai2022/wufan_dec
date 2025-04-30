.class public Lcom/bytedance/sdk/openadsdk/a/b;
.super Ljava/lang/Object;
.source "CommonBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdBridge;


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/a/b;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/a/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/a/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/a/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/a/b;->b:Lcom/bytedance/sdk/openadsdk/a/a;

    return-void
.end method

.method public static final a()Lcom/bytedance/sdk/openadsdk/a/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/a/b;->a:Lcom/bytedance/sdk/openadsdk/a/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/openadsdk/a/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/a/b;->a:Lcom/bytedance/sdk/openadsdk/a/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/a/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/a/b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/a/b;->a:Lcom/bytedance/sdk/openadsdk/a/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/a/b;->a:Lcom/bytedance/sdk/openadsdk/a/b;

    return-object v0
.end method


# virtual methods
.method public b()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/a/b;->b:Lcom/bytedance/sdk/openadsdk/a/a;

    return-object v0
.end method

.method public call(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/a/b;->b:Lcom/bytedance/sdk/openadsdk/a/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/a/a;->a()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getObj(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObj(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public removeObj(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public subscribe(Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/a/b;->b:Lcom/bytedance/sdk/openadsdk/a/a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/a/b;Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/a/a;->a(Lcom/bytedance/sdk/openadsdk/a/a$a;)V

    return-void
.end method

.method public unsubscribe(Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V
    .locals 0

    return-void
.end method
