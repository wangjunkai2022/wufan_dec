.class Lcom/bytedance/sdk/openadsdk/api/plugin/a$5;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;
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
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/api/plugin/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$5;->c:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$5;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$5;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$5;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$5;->b:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$5;->a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V

    return-void
.end method
