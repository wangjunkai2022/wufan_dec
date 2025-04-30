.class public Lcom/wufun/union/ad/gdt/a;
.super Lcom/wufun/union/ad/AdChannel;
.source "ChannelGDT.java"


# static fields
.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x3

.field public static final o:I = 0x4

.field public static final p:I = 0x5

.field public static final q:I = 0x6

.field public static final r:I = 0x7

.field public static final s:I = 0x8


# instance fields
.field j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wufun/union/ad/AdChannel;-><init>()V

    .line 2
    sget-object v0, Lcom/wufun/union/ad/AdChannel$Type;->GDT:Lcom/wufun/union/ad/AdChannel$Type;

    iput-object v0, p0, Lcom/wufun/union/ad/AdChannel;->c:Lcom/wufun/union/ad/AdChannel$Type;

    return-void
.end method

.method static synthetic n(Lcom/wufun/union/ad/gdt/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    return p1
.end method

.method static synthetic o(Lcom/wufun/union/ad/gdt/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    return p1
.end method

.method static synthetic p(Lcom/wufun/union/ad/gdt/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Lcom/wufun/union/ad/gdt/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic r(Lcom/wufun/union/ad/gdt/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    return p0
.end method

.method static synthetic s(Lcom/wufun/union/ad/gdt/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic t(Lcom/wufun/union/ad/gdt/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdChannel;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lcom/wufun/union/ad/gdt/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wufun/union/ad/AdChannel;->g:I

    return p0
.end method


# virtual methods
.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    .line 1
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, p2}, Lcom/qq/e/comm/managers/GDTAdSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setChannel(I)V

    .line 4
    invoke-static {p1}, Lcom/qq/e/comm/managers/setting/GlobalSetting;->setEnableMediationTool(Z)V

    .line 5
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1, v0}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    iput-boolean v1, p0, Lcom/wufun/union/ad/AdChannel;->b:Z

    .line 9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, p1, v0}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;FF)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p3, "ad code id is must not null"

    invoke-virtual {p0, p1, p2, p3}, Lcom/wufun/union/ad/AdChannel;->i(ILjava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    .line 4
    new-instance p2, Lcom/wufun/union/ad/gdt/a$a;

    invoke-direct {p2, p0}, Lcom/wufun/union/ad/gdt/a$a;-><init>(Lcom/wufun/union/ad/gdt/a;)V

    .line 5
    new-instance p3, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    iget-object v0, p0, Lcom/wufun/union/ad/AdChannel;->e:Landroid/content/Context;

    invoke-direct {p3, v0, p1, p2}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qq/e/ads/rewardvideo/RewardVideoADListener;)V

    iput-object p3, p0, Lcom/wufun/union/ad/gdt/a;->j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    .line 6
    new-instance p1, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;

    invoke-direct {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions$Builder;->build()Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/wufun/union/ad/gdt/a;->j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p2, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->setServerSideVerificationOptions(Lcom/qq/e/ads/rewardvideo/ServerSideVerificationOptions;)V

    .line 9
    iget-object p1, p0, Lcom/wufun/union/ad/gdt/a;->j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->loadAD()V

    return-void
.end method

.method public m(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/gdt/a;->j:Lcom/qq/e/ads/rewardvideo/RewardVideoAD;

    invoke-virtual {v0, p1}, Lcom/qq/e/ads/rewardvideo/RewardVideoAD;->showAD(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->a:Z

    .line 3
    iget-boolean p1, p0, Lcom/wufun/union/ad/AdChannel;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wufun/union/ad/AdChannel;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wufun/union/ad/AdChannel;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
