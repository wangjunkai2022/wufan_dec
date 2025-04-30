.class Lcom/join/mgps/ad/k$b;
.super Ljava/lang/Object;
.source "TTAdVideo.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/k;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ad/k;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->d(Lcom/join/mgps/ad/k;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v0, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ad/k$c;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "rewardVideoAd loaded"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "RewardVideo"

    .line 1
    invoke-static {v1, v0}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0, v2}, Lcom/join/mgps/ad/k;->e(Lcom/join/mgps/ad/k;Z)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0, p1}, Lcom/join/mgps/ad/k;->g(Lcom/join/mgps/ad/k;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->f(Lcom/join/mgps/ad/k;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/ad/k$b$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/ad/k$b$a;-><init>(Lcom/join/mgps/ad/k$b;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v0}, Lcom/join/mgps/ad/k;->f(Lcom/join/mgps/ad/k;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/ad/k$b$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/ad/k$b$b;-><init>(Lcom/join/mgps/ad/k$b;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v0, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/k$c;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {p1}, Lcom/join/mgps/ad/k;->m(Lcom/join/mgps/ad/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {p1}, Lcom/join/mgps/ad/k;->n(Lcom/join/mgps/ad/k;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {p1}, Lcom/join/mgps/ad/k;->n(Lcom/join/mgps/ad/k;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {p1}, Lcom/join/mgps/ad/k;->n(Lcom/join/mgps/ad/k;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v1}, Lcom/join/mgps/ad/k;->h(Lcom/join/mgps/ad/k;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v2}, Lcom/join/mgps/ad/k;->i(Lcom/join/mgps/ad/k;)I

    move-result v2

    iget-object v3, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v3}, Lcom/join/mgps/ad/k;->j(Lcom/join/mgps/ad/k;)I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/join/mgps/ad/k;->u(Landroid/app/Activity;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public onRewardVideoCached()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rewardVideoAd video cached"

    aput-object v3, v1, v2

    const-string v2, "RewardVideo"

    .line 1
    invoke-static {v2, v1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    invoke-static {v1, v0}, Lcom/join/mgps/ad/k;->e(Lcom/join/mgps/ad/k;Z)Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    iget-object v0, v0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/ad/k$c;->onRewardVideoCached()V

    :cond_0
    return-void
.end method

.method public onRewardVideoCached(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V
    .locals 1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/ad/k$b;->a:Lcom/join/mgps/ad/k;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/ad/k;->e(Lcom/join/mgps/ad/k;Z)Z

    return-void
.end method
