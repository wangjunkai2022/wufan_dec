.class final Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;
.super Ljava/lang/Object;
.source "DefaultAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/api/plugin/a$b<",
            "Lcom/bytedance/sdk/openadsdk/TTAdNative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/api/plugin/a$b<",
            "Lcom/bytedance/sdk/openadsdk/TTAdNative;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$b;

    return-void
.end method

.method private final a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/common/CommonListener;",
            "Lcom/bytedance/sdk/openadsdk/api/plugin/a$a<",
            "Lcom/bytedance/sdk/openadsdk/TTAdNative;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a:Lcom/bytedance/sdk/openadsdk/api/plugin/a$b;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$b;->a(Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    const/16 v0, 0x106a

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load ad failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/common/CommonListener;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public loadBannerAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$10;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadBannerExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$5;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$8;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadExpressDrawFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$4;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadFeedAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadFullScreenVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$2;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadInteractionAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$11;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadInteractionExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$6;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadNativeAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$9;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadNativeExpressAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$3;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadRewardVideoAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$14;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$13;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$12;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method

.method public loadStream(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d$7;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener;)V

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/a$d;->a(Lcom/bytedance/sdk/openadsdk/common/CommonListener;Lcom/bytedance/sdk/openadsdk/api/plugin/a$a;)V

    return-void
.end method
