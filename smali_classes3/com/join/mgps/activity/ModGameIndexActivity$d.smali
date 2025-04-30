.class Lcom/join/mgps/activity/ModGameIndexActivity$d;
.super Ljava/lang/Object;
.source "ModGameIndexActivity.java"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->Z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->c:Lcom/join/mgps/activity/ModGameIndexActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->a:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

    iput-object p3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->c:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->W0(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->a:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public callback2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->c:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->h2()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$d;->a:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
