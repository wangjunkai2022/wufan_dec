.class Lcom/bytedance/sdk/openadsdk/live/b$2;
.super Ljava/lang/Object;
.source "TTLiveSDkBridge.java"

# interfaces
.implements Lcom/bytedance/android/live/base/api/ILiveInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/live/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/live/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/live/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/live/b$2;->a:Lcom/bytedance/sdk/openadsdk/live/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLiveInitFinish()V
    .locals 4

    const-string v0, "TTLiveSDkBridge"

    const-string v1, "onLiveInitFinish - live sdk init succeed\uff01"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "execute commerce initLiveCommerce method start"

    .line 2
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/live/a;->a()Z

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute commerce initLiveCommerce end , result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/live/b;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/live/b$2;->a:Lcom/bytedance/sdk/openadsdk/live/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/live/b;->a(Lcom/bytedance/sdk/openadsdk/live/b;)V

    .line 7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/live/b;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "live_sdk_init_status"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    sget-object v1, Lcom/bytedance/sdk/openadsdk/live/b;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdEvent;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
