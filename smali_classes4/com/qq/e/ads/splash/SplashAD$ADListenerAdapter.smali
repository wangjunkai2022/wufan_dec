.class Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/qq/e/comm/adevent/ADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/ads/splash/SplashAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADListenerAdapter"
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/e/ads/splash/SplashAD;


# direct methods
.method private constructor <init>(Lcom/qq/e/ads/splash/SplashAD;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashAD$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/splash/SplashAD;)V

    return-void
.end method


# virtual methods
.method public onADEvent(Lcom/qq/e/comm/adevent/ADEvent;)V
    .locals 3

    const-class v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "SplashADListener == null"

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/qq/e/comm/adevent/ADEvent;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {p1}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object p1

    instance-of p1, p1, Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {p1}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object p1

    check-cast p1, Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    invoke-interface {p1}, Lcom/qq/e/ads/splash/SplashADZoomOutListener;->onZoomOutPlayFinish()V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {p1}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object p1

    instance-of p1, p1, Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {p1}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object p1

    check-cast p1, Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    invoke-interface {p1}, Lcom/qq/e/ads/splash/SplashADZoomOutListener;->onZoomOut()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1, v0}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/qq/e/ads/splash/SplashADListener;->onADTick(J)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {p1}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qq/e/ads/splash/SplashADListener;->onADDismissed()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {p1}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qq/e/ads/splash/SplashADListener;->onADClicked()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {p1}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qq/e/ads/splash/SplashADListener;->onADExposure()V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {p1}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/qq/e/ads/splash/SplashADListener;->onADPresent()V

    goto :goto_0

    :pswitch_8
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/qq/e/comm/util/AdErrorConvertor;->formatErrorCode(I)Lcom/qq/e/comm/util/AdError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qq/e/ads/splash/SplashADListener;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p1, v0}, Lcom/qq/e/comm/adevent/ADEvent;->getParam(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;->a:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/ads/splash/SplashADListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/qq/e/ads/splash/SplashADListener;->onADLoaded(J)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
