.class Lcom/join/mgps/ad/k$b$a;
.super Ljava/lang/Object;
.source "TTAdVideo.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/k$b;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ad/k$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/k$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->d(Lcom/join/mgps/ad/k;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v0, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/k$c;->onAdClose()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v1, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->h(Lcom/join/mgps/ad/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/ad/k$c;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v1, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->h(Lcom/join/mgps/ad/k;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v2, v2, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v2}, Lcom/join/mgps/ad/k;->i(Lcom/join/mgps/ad/k;)I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v3, v3, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v3}, Lcom/join/mgps/ad/k;->j(Lcom/join/mgps/ad/k;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/join/mgps/ad/k$c;->b(Ljava/lang/String;II)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "rewardVideoAd close"

    aput-object v2, v0, v1

    const-string v1, "RewardVideo"

    .line 6
    invoke-static {v1, v0}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/ad/k;->e(Lcom/join/mgps/ad/k;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->d(Lcom/join/mgps/ad/k;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v0, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/ad/k$c;->onAdShow()V

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "rewardVideoAd show"

    aput-object v2, v0, v1

    const-string v1, "RewardVideo"

    .line 5
    invoke-static {v1, v0}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->d(Lcom/join/mgps/ad/k;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v0, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/k$c;->onAdVideoBarClick()V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "rewardVideoAd bar click"

    aput-object v2, v0, v1

    const-string v1, "RewardVideo"

    .line 4
    invoke-static {v1, v0}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " amount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "RewardVideo"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->d(Lcom/join/mgps/ad/k;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v1, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/ad/k$c;->onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSkippedVideo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v0, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ad/k$c;->onSkippedVideo()V

    :cond_0
    return-void
.end method

.method public onVideoComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->d(Lcom/join/mgps/ad/k;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "rewardVideoAd complete"

    aput-object v2, v0, v1

    const-string v1, "RewardVideo"

    .line 2
    invoke-static {v1, v0}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v0, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/ad/k$c;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method public onVideoError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->d(Lcom/join/mgps/ad/k;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "rewardVideoAd error"

    aput-object v2, v0, v1

    const-string v1, "RewardVideo"

    .line 2
    invoke-static {v1, v0}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/k$b$a;->a:Lcom/join/mgps/ad/k$b;

    iget-object v0, v0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v0, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/ad/k$c;->onVideoError()V

    :cond_0
    return-void
.end method
