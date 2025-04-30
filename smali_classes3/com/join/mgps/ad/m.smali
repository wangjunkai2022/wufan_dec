.class public Lcom/join/mgps/ad/m;
.super Lcom/join/mgps/ad/c;
.source "TTRewardVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/m$b;
    }
.end annotation


# instance fields
.field private m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private n:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

.field private o:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private p:Z

.field private q:Lcom/join/mgps/ad/m$b;

.field private r:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "TT"

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/ad/c;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ad/m;->p:Z

    return-void
.end method

.method static synthetic u(Lcom/join/mgps/ad/m;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/m;->p:Z

    return p1
.end method

.method static synthetic v(Lcom/join/mgps/ad/m;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/m;->n:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object p1
.end method

.method private w(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/ad/c;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/16 v1, 0x438

    const/16 v2, 0x780

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->PRELOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    const-string v0, "user123"

    .line 6
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    const-string v0, "media_extra"

    .line 7
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ad/m;->o:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/m;->q:Lcom/join/mgps/ad/m$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/ad/m$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/ad/m$b;-><init>(Lcom/join/mgps/ad/m;)V

    iput-object v0, p0, Lcom/join/mgps/ad/m;->q:Lcom/join/mgps/ad/m$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/ad/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/ad/m;->q:Lcom/join/mgps/ad/m$b;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/ad/j;->f(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    return-void
.end method

.method protected f()Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/join/mgps/ad/c;->l:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RewardVideoAd:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/ad/m;->n:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "hasLoaded:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/join/mgps/ad/m;->p:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/m;->n:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/join/mgps/ad/m;->p:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public h(Z)V
    .locals 6

    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u9519\u8bef"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 1
    :try_start_0
    iput-boolean v2, p0, Lcom/join/mgps/ad/m;->p:Z

    .line 2
    sget-boolean v4, Lcom/join/mgps/ad/c;->l:Z

    if-eqz v4, :cond_0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/ad/m;->w(Z)V

    .line 5
    iget-object v4, p0, Lcom/join/mgps/ad/m;->q:Lcom/join/mgps/ad/m$b;

    if-nez v4, :cond_1

    .line 6
    new-instance v4, Lcom/join/mgps/ad/m$b;

    invoke-direct {v4, p0}, Lcom/join/mgps/ad/m$b;-><init>(Lcom/join/mgps/ad/m;)V

    iput-object v4, p0, Lcom/join/mgps/ad/m;->q:Lcom/join/mgps/ad/m$b;

    .line 7
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/ad/m;->q:Lcom/join/mgps/ad/m$b;

    invoke-virtual {v4, p1}, Lcom/join/mgps/ad/m$b;->a(Z)V

    .line 8
    iget-boolean p1, p0, Lcom/join/mgps/ad/c;->j:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/ad/c;->j:Z

    .line 10
    iget-object p1, p0, Lcom/join/mgps/ad/m;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    if-nez p1, :cond_3

    .line 11
    invoke-static {}, Lcom/join/mgps/ad/j;->c()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    iget-object v4, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-interface {p1, v4}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ad/m;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/ad/m;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    if-eqz p1, :cond_4

    .line 13
    iget-object v4, p0, Lcom/join/mgps/ad/m;->o:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v5, p0, Lcom/join/mgps/ad/m;->q:Lcom/join/mgps/ad/m$b;

    invoke-interface {p1, v4, v5}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    goto :goto_2

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/ad/c;->k:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 15
    iget-object v4, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {v4, v3, p1}, Lcom/join/mgps/ad/c;->j(Landroid/content/Context;ILjava/util/Map;)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 17
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/c;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    iput-boolean v2, p0, Lcom/join/mgps/ad/c;->j:Z

    .line 20
    iget-object p1, p0, Lcom/join/mgps/ad/c;->k:Ljava/util/Map;

    if-eqz p1, :cond_6

    .line 21
    iget-object v2, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {v2, v3, p1}, Lcom/join/mgps/ad/c;->j(Landroid/content/Context;ILjava/util/Map;)V

    goto :goto_1

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    .line 23
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/c;->onError(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected t(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->t(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/m;->r:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/join/mgps/ad/m$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/ad/m$a;-><init>(Lcom/join/mgps/ad/m;)V

    iput-object v0, p0, Lcom/join/mgps/ad/m;->r:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/m;->n:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    iget-object v1, p0, Lcom/join/mgps/ad/m;->r:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ad/m;->n:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/join/mgps/ad/m;->n:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-void
.end method
