.class public Lcom/wufun/union/ad/bytedance/a;
.super Lcom/wufun/union/ad/AdChannel;
.source "ChannelTT.java"


# static fields
.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = 0x4

.field public static final r:I = 0x5

.field public static final s:I = 0x6

.field public static final t:I = 0x7

.field public static final u:I = 0x8


# instance fields
.field private j:Z

.field k:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufun/union/ad/AdChannel;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufun/union/ad/bytedance/a;->j:Z

    .line 3
    sget-object v0, Lcom/wufun/union/ad/AdChannel$Type;->TT:Lcom/wufun/union/ad/AdChannel$Type;

    iput-object v0, p0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    return-void
.end method

.method static synthetic n(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    return p1
.end method

.method static synthetic o(Lcom/wufun/union/ad/bytedance/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    return p0
.end method

.method static synthetic p(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    return p1
.end method

.method static synthetic q(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    return p1
.end method

.method static synthetic r(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    return p1
.end method

.method static synthetic s(Lcom/wufun/union/ad/bytedance/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    return p1
.end method

.method static synthetic t(Lcom/wufun/union/ad/bytedance/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic u(Lcom/wufun/union/ad/bytedance/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic v(Lcom/wufun/union/ad/bytedance/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    return p0
.end method

.method static synthetic w(Lcom/wufun/union/ad/bytedance/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic x(Lcom/wufun/union/ad/bytedance/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    const-string v1, "\u609f\u996d\u6e38\u620f\u5385_android"

    .line 5
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 7
    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    .line 8
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/String;

    .line 9
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->needClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    .line 10
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p2

    .line 12
    new-instance v0, Lcom/wufun/union/ad/bytedance/a$a;

    invoke-direct {v0, p0}, Lcom/wufun/union/ad/bytedance/a$a;-><init>(Lcom/wufun/union/ad/bytedance/a;)V

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, p0, Lcom/wufun/union/ad/bytedance/a;->k:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    return-void

    :array_0
    .array-data 4
        0x4
        0x3
        0x5
    .end array-data
.end method

.method public h(Ljava/lang/String;FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a;->k:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->isInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p2, "ad code id is must not null"

    invoke-virtual {p0, v1, p1, p2}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    const/4 p2, 0x2

    .line 8
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    sget-object p2, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->PRELOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 9
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/wufun/union/ad/bytedance/a;->k:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    new-instance p3, Lcom/wufun/union/ad/bytedance/a$b;

    invoke-direct {p3, p0}, Lcom/wufun/union/ad/bytedance/a$b;-><init>(Lcom/wufun/union/ad/bytedance/a;)V

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    return-void

    .line 12
    :cond_2
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p2, "ad sdk not init"

    invoke-virtual {p0, v1, p1, p2}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public m(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lcom/wufun/union/ad/bytedance/a$c;

    invoke-direct {v0, p0, p1}, Lcom/wufun/union/ad/bytedance/a$c;-><init>(Lcom/wufun/union/ad/bytedance/a;Landroid/app/Activity;)V

    .line 3
    iget-object v1, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 4
    iget-object v1, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->setRewardPlayAgainInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 5
    iget-object v0, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/wufun/union/ad/bytedance/a;->l:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 8
    iget-boolean p1, p0, Lcom/wufun/union/ad/bytedance/a;->j:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wufun/union/ad/AdChannel;->g(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wufun/union/ad/AdChannel;->g(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
