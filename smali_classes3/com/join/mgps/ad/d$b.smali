.class Lcom/join/mgps/ad/d$b;
.super Ljava/lang/Object;
.source "GDTInteractionRewardVideo.java"

# interfaces
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialADListener;
.implements Lcom/qq/e/ads/interstitial2/UnifiedInterstitialMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ad/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/join/mgps/ad/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ad/d$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/d$b;->a:Z

    return-void
.end method

.method public onADClicked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rewardVideoAd bar click"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onADClick()V

    return-void
.end method

.method public onADClosed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/16 v1, 0x3ec

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onADClose()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    iget-object v1, v0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/c;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    iget-object v1, v0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    iget v2, v0, Lcom/join/mgps/ad/c;->g:I

    iget v3, v0, Lcom/join/mgps/ad/c;->h:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/ad/c;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public onADExposure()V
    .locals 0

    return-void
.end method

.method public onADLeftApplication()V
    .locals 0

    return-void
.end method

.method public onADOpened()V
    .locals 0

    return-void
.end method

.method public onADReceive()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->u(Lcom/join/mgps/ad/d;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/ad/c;->j:Z

    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/ad/d$b;->a:Z

    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/c;->b(Z)V

    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->u(Lcom/join/mgps/ad/d;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    iput-boolean v1, v0, Lcom/join/mgps/ad/c;->j:Z

    .line 3
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/ad/c;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onRenderFail()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->u(Lcom/join/mgps/ad/d;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    iput-boolean v1, v0, Lcom/join/mgps/ad/c;->j:Z

    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/16 v1, 0x3ec

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    const/4 v1, -0x1

    const-string v2, "\u5e7f\u544a\u6e32\u67d3\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/ad/c;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onRenderSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->u(Lcom/join/mgps/ad/d;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onADShow()V

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/ad/d;->u(Lcom/join/mgps/ad/d;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/ad/c;->j:Z

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onVideoCached()V

    return-void
.end method

.method public onVideoComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/d$b;->b:Lcom/join/mgps/ad/d;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onVideoComplete()V

    return-void
.end method

.method public onVideoError(Lcom/qq/e/comm/util/AdError;)V
    .locals 0

    return-void
.end method

.method public onVideoInit()V
    .locals 0

    return-void
.end method

.method public onVideoLoading()V
    .locals 0

    return-void
.end method

.method public onVideoPageClose()V
    .locals 0

    return-void
.end method

.method public onVideoPageOpen()V
    .locals 0

    return-void
.end method

.method public onVideoPause()V
    .locals 0

    return-void
.end method

.method public onVideoReady(J)V
    .locals 0

    return-void
.end method

.method public onVideoStart()V
    .locals 0

    return-void
.end method
