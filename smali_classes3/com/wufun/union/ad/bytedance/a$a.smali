.class Lcom/wufun/union/ad/bytedance/a$a;
.super Ljava/lang/Object;
.source "ChannelTT.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wufun/union/ad/bytedance/a;->d(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufun/union/ad/bytedance/a;


# direct methods
.method constructor <init>(Lcom/wufun/union/ad/bytedance/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/bytedance/a$a;->a:Lcom/wufun/union/ad/bytedance/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$a;->a:Lcom/wufun/union/ad/bytedance/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wufun/union/ad/bytedance/a;->p(Lcom/wufun/union/ad/bytedance/a;Z)Z

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$a;->a:Lcom/wufun/union/ad/bytedance/a;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public success()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$a;->a:Lcom/wufun/union/ad/bytedance/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wufun/union/ad/bytedance/a;->n(Lcom/wufun/union/ad/bytedance/a;Z)Z

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$a;->a:Lcom/wufun/union/ad/bytedance/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v2, v1, v3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
