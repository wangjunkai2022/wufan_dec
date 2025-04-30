.class public Lcom/join/mgps/ad/k;
.super Lcom/join/mgps/ad/b;
.source "TTAdVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/k$c;
    }
.end annotation


# static fields
.field private static p:Z


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

.field private b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private f:I

.field g:Lcom/join/mgps/ad/k$c;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Landroid/app/Activity;

.field private n:Z

.field private o:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/join/mgps/ad/k$c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/ad/b;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/ad/k;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/ad/k;->l:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/ad/k;->n:Z

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/join/mgps/ad/k;->o:J

    .line 7
    iput-object p1, p0, Lcom/join/mgps/ad/k;->i:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/join/mgps/ad/k;->d:Ljava/lang/String;

    .line 9
    iput p4, p0, Lcom/join/mgps/ad/k;->f:I

    .line 10
    iput-object p5, p0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    .line 11
    invoke-static {p1, p2}, Lcom/join/mgps/ad/k;->p(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ad/k;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/ad/k;->q()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/ad/k$c;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/ad/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/join/mgps/ad/k$c;)V

    return-void
.end method

.method static synthetic c(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/join/mgps/ad/k;->p:Z

    return p0
.end method

.method static synthetic d(Lcom/join/mgps/ad/k;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/k;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/ad/k;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/k;->n:Z

    return p1
.end method

.method static synthetic f(Lcom/join/mgps/ad/k;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/k;->b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/ad/k;Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/k;->b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    return-object p1
.end method

.method static synthetic h(Lcom/join/mgps/ad/k;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/k;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/ad/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ad/k;->j:I

    return p0
.end method

.method static synthetic j(Lcom/join/mgps/ad/k;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ad/k;->k:I

    return p0
.end method

.method static synthetic k(Lcom/join/mgps/ad/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/ad/k;->c:Z

    return p0
.end method

.method static synthetic l(Lcom/join/mgps/ad/k;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/k;->c:Z

    return p1
.end method

.method static synthetic m(Lcom/join/mgps/ad/k;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/ad/k;->l:Z

    return p0
.end method

.method static synthetic n(Lcom/join/mgps/ad/k;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ad/k;->m:Landroid/app/Activity;

    return-object p0
.end method

.method private static o(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 1

    .line 1
    new-instance p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const-string v0, "\u609f\u996d\u6e38\u620f\u5385_android"

    .line 4
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    sget-boolean p1, Lcom/join/android/app/common/http/c;->c:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p0

    return-object p0
.end method

.method private static p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/join/mgps/ad/k;->p:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/join/mgps/ad/k;->o(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/ad/k$a;

    invoke-direct {v0}, Lcom/join/mgps/ad/k$a;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V

    const/4 p0, 0x1

    .line 3
    sput-boolean p0, Lcom/join/mgps/ad/k;->p:Z

    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/ad/k;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/TTAdLoadType;->LOAD:Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdLoadType(Lcom/bytedance/sdk/openadsdk/TTAdLoadType;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const-string v1, "user123"

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const-string v1, "media_extra"

    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/ad/k;->f:I

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/ad/k;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-void
.end method


# virtual methods
.method public r()V
    .locals 6

    const-string v0, "\u5e7f\u544a\u521d\u59cb\u5316\u9519\u8bef"

    const/4 v1, -0x1

    const/4 v2, 0x5

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/mgps/ad/k;->q()V

    .line 2
    iget-object v3, p0, Lcom/join/mgps/ad/k;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    if-eqz v3, :cond_0

    .line 3
    iget-object v4, p0, Lcom/join/mgps/ad/k;->e:Lcom/bytedance/sdk/openadsdk/AdSlot;

    new-instance v5, Lcom/join/mgps/ad/k$b;

    invoke-direct {v5, p0}, Lcom/join/mgps/ad/k$b;-><init>(Lcom/join/mgps/ad/k;)V

    invoke-interface {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/join/mgps/ad/k;->i:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v1, v0}, Lcom/join/mgps/ad/k$c;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    iget-object v3, p0, Lcom/join/mgps/ad/k;->i:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/join/mgps/ad/b;->a(Landroid/content/Context;I)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/ad/k;->g:Lcom/join/mgps/ad/k$c;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2, v1, v0}, Lcom/join/mgps/ad/k$c;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public s(Landroid/app/Activity;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ad/k;->t(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public t(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/join/mgps/ad/k;->u(Landroid/app/Activity;Ljava/lang/String;II)V

    return-void
.end method

.method public u(Landroid/app/Activity;Ljava/lang/String;II)V
    .locals 2

    .line 1
    iput-object p2, p0, Lcom/join/mgps/ad/k;->h:Ljava/lang/String;

    .line 2
    iput p4, p0, Lcom/join/mgps/ad/k;->k:I

    .line 3
    iput p3, p0, Lcom/join/mgps/ad/k;->j:I

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    :cond_0
    sget-object p1, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {p1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/join/mgps/ad/k;->m:Landroid/app/Activity;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/join/mgps/ad/k;->l:Z

    .line 8
    invoke-static {p1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    iget-object p2, p0, Lcom/join/mgps/ad/k;->b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/join/mgps/ad/k;->n:Z

    if-eqz p3, :cond_2

    .line 10
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;->showRewardVideoAd(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/join/mgps/ad/k;->b:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/join/mgps/ad/k;->l:Z

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/join/mgps/ad/k;->o:J

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    const-wide/16 v0, 0x7d0

    cmp-long p4, p2, v0

    if-lez p4, :cond_3

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/join/mgps/ad/k;->o:J

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/ad/k;->r()V

    goto :goto_0

    .line 16
    :cond_3
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u5e7f\u544a\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u8054\u7f51\u91cd\u8bd5"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
