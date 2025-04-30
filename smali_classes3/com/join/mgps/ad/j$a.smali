.class Lcom/join/mgps/ad/j$a;
.super Ljava/lang/Object;
.source "TTAdManagerHolder.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/j$a;->a:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->a:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->fail(ILjava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail:  code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/j$a;->a:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->success()V

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->isInitSuccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method
