.class Lcom/join/mgps/ad/m$a;
.super Ljava/lang/Object;
.source "TTRewardVideo.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/m;->t(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ad/m;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onADClose()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object v1, v0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/c;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object v1, v0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    iget v2, v0, Lcom/join/mgps/ad/c;->g:I

    iget v3, v0, Lcom/join/mgps/ad/c;->h:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/ad/c;->a(Ljava/lang/String;II)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object v1, v0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    iget v2, v0, Lcom/join/mgps/ad/c;->g:I

    iget v3, v0, Lcom/join/mgps/ad/c;->h:I

    iget-object v4, v0, Lcom/join/mgps/ad/c;->k:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/ad/c;->d(Ljava/lang/String;IILjava/util/Map;)V

    return-void
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/ad/m;->u(Lcom/join/mgps/ad/m;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onADShow()V

    return-void
.end method

.method public onAdVideoBarClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rewardVideoAd bar click"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRewardArrived(ZILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p4, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object p4, p4, Lcom/join/mgps/ad/c;->d:Ljava/lang/String;

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " amount:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " name:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p5, p2

    invoke-static {p4, p5}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object p1, p1, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    return-void
.end method

.method public onSkippedVideo()V
    .locals 0

    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onVideoComplete()V

    return-void
.end method

.method public onVideoError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/m$a;->a:Lcom/join/mgps/ad/m;

    iget-object v1, v0, Lcom/join/mgps/ad/c;->k:Ljava/util/Map;

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/join/mgps/ad/c;->j(Landroid/content/Context;ILjava/util/Map;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
