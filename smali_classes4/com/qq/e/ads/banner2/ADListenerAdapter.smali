.class Lcom/qq/e/ads/banner2/ADListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# instance fields
.field private final a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

.field private b:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/banner2/UnifiedBannerADListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_7

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    const/16 p1, 0x67

    if-eq v0, p1, :cond_5

    const/16 p1, 0x69

    if-eq v0, p1, :cond_4

    const/16 p1, 0x6a

    if-eq v0, p1, :cond_3

    const/16 p1, 0x12f

    if-eq v0, p1, :cond_2

    const/16 p1, 0x130

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->b:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/qq/e/comm/listeners/NegativeFeedbackListener;->onComplainSuccess()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADLeftApplication()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADClosed()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADClicked()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADExposure()V

    goto :goto_0

    :cond_6
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->a:Lcom/qq/e/ads/banner2/UnifiedBannerADListener;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/qq/e/ads/banner2/UnifiedBannerADListener;->onADReceive()V

    :cond_8
    :goto_0
    return-void
.end method

.method public setNegativeFeedbackListener(Lcom/qq/e/comm/listeners/NegativeFeedbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/banner2/ADListenerAdapter;->b:Lcom/qq/e/comm/listeners/NegativeFeedbackListener;

    return-void
.end method
