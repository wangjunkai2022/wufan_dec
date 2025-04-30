.class Lcom/join/mgps/activity/SplashActivity$g$a;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity$g;->onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SplashActivity$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$g$a;->a:Lcom/join/mgps/activity/SplashActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onAdSkip()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$g$a;->a:Lcom/join/mgps/activity/SplashActivity$g;

    iget-object v0, v0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->g(Lcom/join/mgps/activity/SplashActivity;)V

    return-void
.end method

.method public onAdTimeOver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$g$a;->a:Lcom/join/mgps/activity/SplashActivity$g;

    iget-object v0, v0, Lcom/join/mgps/activity/SplashActivity$g;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/SplashActivity;->g(Lcom/join/mgps/activity/SplashActivity;)V

    return-void
.end method
