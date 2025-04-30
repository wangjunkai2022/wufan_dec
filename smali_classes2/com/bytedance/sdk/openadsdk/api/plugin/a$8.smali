.class Lcom/bytedance/sdk/openadsdk/api/plugin/a$8;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a;->call(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/api/plugin/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$8;->b:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$8;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "PluginDefaultAdManager"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$8;->b:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->a(Lcom/bytedance/sdk/openadsdk/api/plugin/a;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$8;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$8;->b:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a;->a(Lcom/bytedance/sdk/openadsdk/api/plugin/a;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$8;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/api/plugin/a$c;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/bytedance/sdk/openadsdk/api/plugin/a$c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$c;->a()V

    :cond_1
    const-string v1, "Not ready, no manager"

    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected manager call error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
