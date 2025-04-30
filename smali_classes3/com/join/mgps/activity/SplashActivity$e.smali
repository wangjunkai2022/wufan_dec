.class Lcom/join/mgps/activity/SplashActivity$e;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity;->t(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$e;->a:Lcom/join/mgps/activity/SplashActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    return-void
.end method
