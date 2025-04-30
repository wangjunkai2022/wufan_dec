.class Lcom/join/mgps/activity/SplashActivity$g;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity;->q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->g(Lcom/join/mgps/activity/SplashActivity;)V

    return-void
.end method

.method public onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getSplashView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    iget-object v2, v1, Lcom/join/mgps/activity/SplashActivity;->a:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/SplashActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/SplashActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->g(Lcom/join/mgps/activity/SplashActivity;)V

    .line 6
    :goto_0
    new-instance v0, Lcom/join/mgps/activity/SplashActivity$g$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SplashActivity$g$a;-><init>(Lcom/join/mgps/activity/SplashActivity$g;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->OpenScreenAd:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method public onTimeout()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->g(Lcom/join/mgps/activity/SplashActivity;)V

    return-void
.end method
