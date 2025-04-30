.class Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/plugin/a$c;


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
        "Lcom/bytedance/sdk/openadsdk/api/plugin/a$c<",
        "Lcom/bytedance/sdk/openadsdk/TTAdManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/api/plugin/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a;Landroid/os/Bundle;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;->c:Lcom/bytedance/sdk/openadsdk/api/plugin/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;->b:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;->b:Ljava/lang/Class;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;->a:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTAdManager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$4;->a(Lcom/bytedance/sdk/openadsdk/TTAdManager;)V

    return-void
.end method
