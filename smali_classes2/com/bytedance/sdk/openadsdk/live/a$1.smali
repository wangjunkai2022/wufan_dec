.class final Lcom/bytedance/sdk/openadsdk/live/a$1;
.super Ljava/lang/Object;
.source "TTLiveSDKPluginHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/live/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;Lcom/bytedance/android/live/base/api/ILiveInitCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

.field final synthetic d:Lcom/bytedance/android/live/base/api/ILiveInitCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;Lcom/bytedance/android/live/base/api/ILiveInitCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/live/a$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/live/a$1;->c:Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/live/a$1;->d:Lcom/bytedance/android/live/base/api/ILiveInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/a$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/live/a$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/live/a$1;->c:Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/live/a$1;->d:Lcom/bytedance/android/live/base/api/ILiveInitCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/android/openliveplugin/LivePluginHelper;->initLivePlugin(Landroid/app/Application;Ljava/lang/String;Lcom/bytedance/android/live/base/api/ILiveHostContextParam$Builder;Lcom/bytedance/android/live/base/api/ILiveInitCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
