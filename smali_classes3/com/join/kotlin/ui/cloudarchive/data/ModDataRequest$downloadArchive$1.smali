.class public final Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;
.super Ljava/lang/Object;
.source "ModDataRequest.kt"

# interfaces
.implements Lcom/github/snowdream/android/app/downloader/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->downloadArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J$\u0010\n\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0012\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1",
        "Lcom/github/snowdream/android/app/downloader/b$b;",
        "",
        "url",
        "",
        "onStart",
        "onWait",
        "",
        "progressx",
        "speed",
        "onProgress",
        "onFinish",
        "onError",
        "",
        "actualSizex",
        "updateSize",
        "onStop",
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
.field final synthetic $archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $donwloadFilePath:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $downloadType:I

.field final synthetic $pathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;ILcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            "I",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput p3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$downloadType:I

    iput-object p4, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$pathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    iput-object p5, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$donwloadFilePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Ln1/g;->t()Ln1/g;

    move-result-object p1

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln1/g;->q(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x64

    if-gt v1, v3, :cond_3

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/db/tables/CloudArchiveTable;

    const-string v5, "tab"

    .line 4
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    move-result v4

    if-ne v4, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "userIdNew"

    invoke-static {v3, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/join/mgps/db/tables/CloudArchiveTable;

    invoke-direct {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getUserId()I

    move-result v1

    .line 9
    :cond_4
    iget v3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$downloadType:I

    if-ne v3, v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    const-string v1, "folder"

    .line 10
    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveType(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$pathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveFolder(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$pathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getSubArchiveLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setMainArchiveLocalPath2(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setPackageName(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v2}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setUserId(I)V

    .line 16
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setGameId(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$donwloadFilePath:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveZipPath(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveId(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setIsFirstRun(I)V

    .line 20
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveDataJson(Ljava/lang/String;)V

    if-nez v2, :cond_6

    .line 21
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->access$unzipToUser0(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    goto :goto_4

    .line 22
    :cond_6
    sget-object v0, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/e$a;->b()Lcom/join/mgps/va/overmind/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/va/overmind/e;->a0(I)V

    .line 23
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->$context:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->access$unZip(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    :goto_4
    return-void
.end method

.method public onProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onProgress progress="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 p3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getActualSize()J

    move-result-wide v0

    const/high16 p1, 0x100000

    int-to-long v2, p1

    const/16 p1, 0x400

    const/16 p3, 0x64

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getProgressTextShow()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getActualSize()J

    move-result-wide v2

    int-to-long v4, p3

    div-long/2addr v2, v4

    int-to-long p2, p2

    mul-long v2, v2, p2

    int-to-long p1, p1

    div-long/2addr v2, p1

    div-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "M/"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getActualSize()J

    move-result-wide v2

    div-long/2addr v2, p1

    div-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x4d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getActualSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 7
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getProgressTextShow()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {v2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getActualSize()J

    move-result-wide v2

    int-to-long v4, p3

    div-long/2addr v2, v4

    int-to-long p2, p2

    mul-long v2, v2, p2

    int-to-long p1, p1

    div-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "KB/"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getActualSize()J

    move-result-wide v2

    div-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "KB"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onWait(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public updateSize(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;

    invoke-virtual {p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->setActualSize(J)V

    return-void
.end method
