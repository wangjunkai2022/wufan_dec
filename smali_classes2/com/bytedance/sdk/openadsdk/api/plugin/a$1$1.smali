.class Lcom/bytedance/sdk/openadsdk/api/plugin/a$1$1;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;->a(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1$1;->b:Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1$1;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1$1;->b:Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1$1;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1$1;->b:Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$1$1;->a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V

    return-void
.end method
