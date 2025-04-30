.class public Lcom/join/mgps/ad/e;
.super Lcom/join/mgps/ad/c;
.source "GDTRewardVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ad/e$a;
    }
.end annotation


# static fields
.field public static p:Z


# instance fields
.field private m:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

.field private n:Z

.field private o:Lcom/join/mgps/ad/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "GDT"

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/join/mgps/ad/c;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/ad/e;->n:Z

    return-void
.end method

.method static synthetic u(Lcom/join/mgps/ad/e;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/ad/e;->n:Z

    return p1
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/join/mgps/ad/e;->p:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/mgps/ad/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/e/comm/managers/GDTAdSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setChannel(I)V

    .line 4
    invoke-static {v0}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setEnableMediationTool(Z)V

    .line 5
    sput-boolean v0, Lcom/join/mgps/ad/e;->p:Z

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/ad/c;->onInitSuccess()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/ad/c;->onInitSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/e;->m:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/mgps/ad/e;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/ad/e;->n:Z

    .line 2
    sget-boolean v0, Lcom/join/mgps/ad/c;->l:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/ad/e;->o:Lcom/join/mgps/ad/e$a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/join/mgps/ad/e$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/ad/e$a;-><init>(Lcom/join/mgps/ad/e;)V

    iput-object v0, p0, Lcom/join/mgps/ad/e;->o:Lcom/join/mgps/ad/e$a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/ad/e;->o:Lcom/join/mgps/ad/e$a;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/e$a;->a(Z)V

    .line 7
    iget-boolean p1, p0, Lcom/join/mgps/ad/c;->j:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/join/mgps/ad/c;->j:Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/ad/e;->m:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    iget-object v1, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/ad/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/ad/e;->o:Lcom/join/mgps/ad/e$a;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;Z)V

    iput-object v0, p0, Lcom/join/mgps/ad/e;->m:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 11
    :cond_3
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/join/mgps/ad/e;->m:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/ad/e;->m:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/ad/c;->k:Ljava/util/Map;

    const/4 v0, 0x5

    if-eqz p1, :cond_4

    .line 17
    iget-object v1, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/join/mgps/ad/c;->j(Landroid/content/Context;ILjava/util/Map;)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/ad/c;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/join/mgps/ad/c;->i(Landroid/content/Context;I)V

    :goto_0
    const/4 p1, -0x1

    const-string v0, "\u5e7f\u544a\u521d\u59cb\u5316\u9519\u8bef"

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/ad/c;->onError(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected t(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/ad/c;->t(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ad/e;->m:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD(Landroid/app/Activity;)V

    return-void
.end method
