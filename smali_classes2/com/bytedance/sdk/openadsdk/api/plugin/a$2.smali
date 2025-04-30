.class Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a;->register(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/api/plugin/a$a<",
        "Lcom/bytedance/sdk/openadsdk/TTAdManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/api/plugin/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;->c:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;->a:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->register(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;->b:Ljava/lang/Object;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/plugin/e;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTPluginListener;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/e;->a(Lcom/bytedance/sdk/openadsdk/TTPluginListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$2;->a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V

    return-void
.end method
