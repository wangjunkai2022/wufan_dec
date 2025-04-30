.class Lcom/join/mgps/activity/CopyDialogActivity$a;
.super Ljava/lang/Object;
.source "CopyDialogActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/CopyDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CopyDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CopyDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CopyDialogActivity$a;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CopyDialogActivity$a;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/CopyDialogActivity;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->c3(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CopyDialogActivity$a;->a:Lcom/join/mgps/activity/CopyDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    return p1
.end method
