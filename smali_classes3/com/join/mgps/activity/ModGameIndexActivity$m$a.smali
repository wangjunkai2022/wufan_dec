.class Lcom/join/mgps/activity/ModGameIndexActivity$m$a;
.super Ljava/lang/Object;
.source "ModGameIndexActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/arena/GameRoomActivity$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity$m;->a(Lcom/join/mgps/dialog/z0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/z0;

.field final synthetic b:Lcom/join/mgps/activity/ModGameIndexActivity$m;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity$m;Lcom/join/mgps/dialog/z0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m$a;->b:Lcom/join/mgps/activity/ModGameIndexActivity$m;

    iput-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m$a;->a:Lcom/join/mgps/dialog/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m$a;->b:Lcom/join/mgps/activity/ModGameIndexActivity$m;

    iget-object p1, p1, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m$a;->b:Lcom/join/mgps/activity/ModGameIndexActivity$m;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->q0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1, p2, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->e2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    return-void
.end method

.method public onSuccess(IILcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m$a;->a:Lcom/join/mgps/dialog/z0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m$a;->a:Lcom/join/mgps/dialog/z0;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/q;->dismiss()V

    :cond_0
    return-void
.end method
