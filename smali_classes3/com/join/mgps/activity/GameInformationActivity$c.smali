.class Lcom/join/mgps/activity/GameInformationActivity$c;
.super Ljava/lang/Object;
.source "GameInformationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivity;->a1(Lcom/join/mgps/dto/GameInformationBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intentCommentList()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->F0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GameInformationActivity$c$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameInformationActivity$c$a;-><init>(Lcom/join/mgps/activity/GameInformationActivity$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->F0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GameInformationActivity$c$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/GameInformationActivity$c$b;-><init>(Lcom/join/mgps/activity/GameInformationActivity$c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startIntent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivity$c;->a:Lcom/join/mgps/activity/GameInformationActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivity;->F0(Lcom/join/mgps/activity/GameInformationActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/GameInformationActivity$c$c;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/GameInformationActivity$c$c;-><init>(Lcom/join/mgps/activity/GameInformationActivity$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
