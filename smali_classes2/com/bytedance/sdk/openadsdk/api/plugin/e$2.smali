.class Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;
.super Lcom/bytedance/pangle/ZeusPluginStateListener;
.source "TTPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/e;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/api/plugin/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    invoke-direct {p0}, Lcom/bytedance/pangle/ZeusPluginStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onPluginStateChange(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state changed, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TTPluginManager"

    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/api/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    const/4 p3, 0x7

    if-ne p2, p3, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/a;->a()Lcom/bytedance/sdk/openadsdk/b/a;

    move-result-object p3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/e$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/e$2;Ljava/lang/String;I)V

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
