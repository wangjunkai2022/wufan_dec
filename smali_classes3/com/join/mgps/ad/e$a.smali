.class Lcom/join/mgps/ad/e$a;
.super Ljava/lang/Object;
.source "GDTRewardVideo.java"

# interfaces
.implements Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ad/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/join/mgps/ad/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ad/e$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/e$a;->a:Z

    return-void
.end method

.method public onADClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->d:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rewardVideoAd bar click"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onADClose()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onADClose()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    iget-object v1, v0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/c;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    iget-object v1, v0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    iget v2, v0, Lcom/join/mgps/ad/c;->g:I

    iget v3, v0, Lcom/join/mgps/ad/c;->h:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/join/mgps/ad/c;->a(Ljava/lang/String;II)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    iget-object v1, v0, Lcom/join/mgps/ad/c;->f:Ljava/lang/String;

    iget v2, v0, Lcom/join/mgps/ad/c;->g:I

    iget v3, v0, Lcom/join/mgps/ad/c;->h:I

    iget-object v4, v0, Lcom/join/mgps/ad/c;->k:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/ad/c;->d(Ljava/lang/String;IILjava/util/Map;)V

    return-void
.end method

.method public onADExpose()V
    .locals 0

    return-void
.end method

.method public onADLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/ad/e;->u(Lcom/join/mgps/ad/e;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/ad/c;->j:Z

    .line 3
    iget-boolean v1, p0, Lcom/join/mgps/ad/e$a;->a:Z

    invoke-virtual {v0, v1}, Lcom/join/mgps/ad/c;->b(Z)V

    return-void
.end method

.method public onADShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/ad/e;->u(Lcom/join/mgps/ad/e;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onADShow()V

    return-void
.end method

.method public onError(Lcom/qq/e/comm/util/AdError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/ad/e;->u(Lcom/join/mgps/ad/e;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    iput-boolean v1, v0, Lcom/join/mgps/ad/c;->j:Z

    .line 3
    iget-object v1, v0, Lcom/join/mgps/ad/c;->k:Ljava/util/Map;

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/join/mgps/ad/c;->j(Landroid/content/Context;ILjava/util/Map;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/ad/c;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/ad/e;->u(Lcom/join/mgps/ad/e;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/join/mgps/ad/c;->j:Z

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onVideoCached()V

    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    iget-object v0, v0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/e$a;->b:Lcom/join/mgps/ad/e;

    invoke-virtual {v0}, Lcom/join/mgps/ad/c;->onVideoComplete()V

    return-void
.end method
