.class public final Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;
.super Landroidx/lifecycle/ViewModel;
.source "DownloadArchivDialogeViewModle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008#\u0010$R(\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R(\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0005\u001a\u0004\u0008\u0013\u0010\u0007\"\u0004\u0008\u0014\u0010\tR(\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0005\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR(\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0005\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\tR(\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0005\u001a\u0004\u0008\u001e\u0010\u0007\"\u0004\u0008\u001f\u0010\tR(\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u0005\u001a\u0004\u0008!\u0010\u0007\"\u0004\u0008\"\u0010\t\u00a8\u0006%"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "dialogTitle",
        "Landroidx/lifecycle/MutableLiveData;",
        "getDialogTitle",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setDialogTitle",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;",
        "request",
        "Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;",
        "getRequest",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;",
        "setRequest",
        "(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;)V",
        "",
        "progress",
        "getProgress",
        "setProgress",
        "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
        "cloud_archive_local_path",
        "getCloud_archive_local_path",
        "setCloud_archive_local_path",
        "progressText",
        "getProgressText",
        "setProgressText",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archive",
        "getArchive",
        "setArchive",
        "downloadType",
        "getDownloadType",
        "setDownloadType",
        "<init>",
        "()V",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private archive:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cloud_archive_local_path:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dialogTitle:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private downloadType:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressText:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private request:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->progress:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->downloadType:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->progressText:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->dialogTitle:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->cloud_archive_local_path:Landroidx/lifecycle/MutableLiveData;

    .line 8
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->request:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->progress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->downloadType:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->progressText:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "0/0"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->dialogTitle:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "\u5b58\u6863\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getArchive()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCloud_archive_local_path()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->cloud_archive_local_path:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getDialogTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->dialogTitle:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getDownloadType()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->downloadType:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getProgress()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->progress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getProgressText()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->progressText:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getRequest()Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->request:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    return-object v0
.end method

.method public final setArchive(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setCloud_archive_local_path(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->cloud_archive_local_path:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setDialogTitle(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->dialogTitle:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setDownloadType(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->downloadType:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setProgress(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->progress:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setProgressText(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->progressText:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setRequest(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/DownloadArchivDialogeViewModle;->request:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    return-void
.end method
