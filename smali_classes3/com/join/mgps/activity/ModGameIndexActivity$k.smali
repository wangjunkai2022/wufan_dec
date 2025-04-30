.class Lcom/join/mgps/activity/ModGameIndexActivity$k;
.super Ljava/lang/Object;
.source "ModGameIndexActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$k;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;->getShowdownloadModDialog()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$k;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$k;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->O0(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity$k;->a(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;)V

    return-void
.end method
