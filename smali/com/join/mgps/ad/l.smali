.class public Lcom/join/mgps/ad/l;
.super Lcom/join/mgps/ad/c;
.source "TTInteractionRewardVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/l$b;
    }
.end annotation


# instance fields
.field private m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private n:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

.field private o:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private p:Z

.field private q:Lcom/join/mgps/ad/l$b;

.field private r:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "TT"

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/ad/c;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ad/l;->p:Z

    return-void
.end method

.method static synthetic u(Lcom/join/mgps/ad/l;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/l;->p:Z

    return p1
.end method

.method static synthetic v(Lcom/join/mgps/ad/l;Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/l;->n:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    return-object p1
.end method

.method private x(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/join/mgps/ad/j;->d()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/ad/j;->d()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 3
    invoke-static {}, Lcom/join/mgps/ad/j;->d()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x500

    const/16 v1, 0x2d0

    .line 4
    :goto_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/ad/c;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 8
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->PRELOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 9
    invoke-virtual {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ad/l;->o:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/l;->q:Lcom/join/mgps/ad/l$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/join/mgps/ad/l$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/ad/l$b;-><init>(Lcom/join/mgps/ad/l;)V

    iput-object v0, p0, Lcom/join/mgps/ad/l;->q:Lcom/join/mgps/ad/l$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/ad/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/ad/l;->q:Lcom/join/mgps/ad/l$b;

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

    iget-object v3, p0, Lcom/join/mgps/ad/l;->n:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "hasLoaded:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/join/mgps/ad/l;->p:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/l;->n:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/join/mgps/ad/l;->p:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public h(Z)V
    .locals 5

    const-string v0, "\u5e7f\u544a\u52a0\u8f7d\u9519\u8bef"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iput-boolean v2, p0, Lcom/join/mgps/ad/l;->p:Z

    .line 2
    sget-boolean v3, Lcom/join/mgps/ad/c;->l:Z

    if-eqz v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/mgps/ad/l;->x(Z)V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/ad/l;->q:Lcom/join/mgps/ad/l$b;

    if-nez v3, :cond_1

    .line 6
    new-instance v3, Lcom/join/mgps/ad/l$b;

    invoke-direct {v3, p0}, Lcom/join/mgps/ad/l$b;-><init>(Lcom/join/mgps/ad/l;)V

    iput-object v3, p0, Lcom/join/mgps/ad/l;->q:Lcom/join/mgps/ad/l$b;

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/ad/l;->q:Lcom/join/mgps/ad/l$b;

    invoke-virtual {v3, p1}, Lcom/join/mgps/ad/l$b;->a(Z)V

    .line 8
    iget-boolean p1, p0, Lcom/join/mgps/ad/c;->j:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/join/mgps/ad/c;->j:Z

    .line 10
    invoke-static {}, Lcom/join/mgps/ad/j;->c()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p1

    iget-object v3, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-interface {p1, v3}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ad/l;->m:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    if-eqz p1, :cond_3

    .line 11
    iget-object v3, p0, Lcom/join/mgps/ad/l;->o:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, p0, Lcom/join/mgps/ad/l;->q:Lcom/join/mgps/ad/l$b;

    invoke-interface {p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/c;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    iput-boolean v2, p0, Lcom/join/mgps/ad/c;->j:Z

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/join/mgps/ad/c;->onError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected t(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->t(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/ad/l;->p:Z

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ad/l;->r:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/join/mgps/ad/l$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/ad/l$a;-><init>(Lcom/join/mgps/ad/l;)V

    iput-object v0, p0, Lcom/join/mgps/ad/l;->r:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ad/l;->n:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    iget-object v1, p0, Lcom/join/mgps/ad/l;->r:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/ad/l;->n:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/l;->n:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/ad/l;->n:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    :cond_0
    return-void
.end method
