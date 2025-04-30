.class public Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;
.super Ljava/lang/Object;
.source "TTAppContextHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TTAppContextHolder$a;
    }
.end annotation


# static fields
.field private static volatile a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->setContext(Landroid/content/Context;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized setContext(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder$a;->a()Landroid/app/Application;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 5
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder$a;->a()Landroid/app/Application;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->a:Landroid/content/Context;

    .line 6
    sget-object p0, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->a:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :catchall_0
    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
