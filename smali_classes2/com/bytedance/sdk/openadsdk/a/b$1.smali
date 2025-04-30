.class Lcom/bytedance/sdk/openadsdk/a/b$1;
.super Ljava/lang/Object;
.source "CommonBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/a/b;->subscribe(Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/a/b;Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/a/b$1;->b:Lcom/bytedance/sdk/openadsdk/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdEvent;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/TTAdEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdEvent;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method
