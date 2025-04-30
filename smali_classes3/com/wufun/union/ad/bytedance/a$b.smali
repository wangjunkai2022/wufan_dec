.class Lcom/wufun/union/ad/bytedance/a$b;
.super Ljava/lang/Object;
.source "ChannelTT.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wufun/union/ad/bytedance/a;->h(Ljava/lang/String;FF)V
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
    iput-object p1, p0, Lcom/wufun/union/ad/bytedance/a$b;->a:Lcom/wufun/union/ad/bytedance/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->a:Lcom/wufun/union/ad/bytedance/a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p2, v1, p1}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->a:Lcom/wufun/union/ad/bytedance/a;

    iput-object p1, v0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    const/4 p1, 0x1

    .line 2
    invoke-static {v0, p1}, Lcom/wufun/union/ad/bytedance/a;->q(Lcom/wufun/union/ad/bytedance/a;Z)Z

    .line 3
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->a:Lcom/wufun/union/ad/bytedance/a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRewardVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->a:Lcom/wufun/union/ad/bytedance/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wufun/union/ad/bytedance/a;->r(Lcom/wufun/union/ad/bytedance/a;Z)Z

    return-void
.end method

.method public onRewardVideoCached(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a$b;->a:Lcom/wufun/union/ad/bytedance/a;

    iput-object p1, v0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    const/4 p1, 0x1

    .line 3
    invoke-static {v0, p1}, Lcom/wufun/union/ad/bytedance/a;->s(Lcom/wufun/union/ad/bytedance/a;Z)Z

    return-void
.end method
