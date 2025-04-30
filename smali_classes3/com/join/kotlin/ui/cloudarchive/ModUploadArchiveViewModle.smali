.class public final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;
.super Landroidx/lifecycle/ViewModel;
.source "ModUploadArchiveViewModle.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModUploadArchiveViewModle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModUploadArchiveViewModle.kt\ncom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,424:1\n1#2:425\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008:\u0010;J\"\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\"\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002R,\u0010\u0017\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00160\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR(\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001cR(\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u0018\u001a\u0004\u0008!\u0010\u001a\"\u0004\u0008\"\u0010\u001cR(\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u0018\u001a\u0004\u0008$\u0010\u001a\"\u0004\u0008%\u0010\u001cR(\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u0018\u001a\u0004\u0008(\u0010\u001a\"\u0004\u0008)\u0010\u001cR(\u0010*\u001a\u0008\u0012\u0004\u0012\u00020&0\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010\u0018\u001a\u0004\u0008+\u0010\u001a\"\u0004\u0008,\u0010\u001cR(\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0018\u001a\u0004\u0008.\u0010\u001a\"\u0004\u0008/\u0010\u001cR.\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u0006000\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u0018\u001a\u0004\u00082\u0010\u001a\"\u0004\u00083\u0010\u001cR(\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010\u0018\u001a\u0004\u00085\u0010\u001a\"\u0004\u00086\u0010\u001cR(\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010\u0018\u001a\u0004\u00088\u0010\u001a\"\u0004\u00089\u0010\u001c\u00a8\u0006<"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;",
        "Landroidx/lifecycle/ViewModel;",
        "Landroid/content/Context;",
        "context",
        "",
        "folder",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archiveData",
        "Ljava/io/File;",
        "startZipFile",
        "Ljava/io/InputStream;",
        "input",
        "Ljava/io/OutputStream;",
        "out",
        "",
        "copyFileSimple",
        "startZipFile2",
        "compressImage",
        "onclickChoiceIcon",
        "uploadArchive",
        "updateArchiveMessage",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "responseReult",
        "Landroidx/lifecycle/MutableLiveData;",
        "getResponseReult",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setResponseReult",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "imagepath",
        "getImagepath",
        "setImagepath",
        "message",
        "getMessage",
        "setMessage",
        "title",
        "getTitle",
        "setTitle",
        "",
        "uploadStatus",
        "getUploadStatus",
        "setUploadStatus",
        "uploadProgress",
        "getUploadProgress",
        "setUploadProgress",
        "noticeWarnings",
        "getNoticeWarnings",
        "setNoticeWarnings",
        "",
        "archiveDatas",
        "getArchiveDatas",
        "setArchiveDatas",
        "archive",
        "getArchive",
        "setArchive",
        "archiveFileSuffix",
        "getArchiveFileSuffix",
        "setArchiveFileSuffix",
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

.field private archiveDatas:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;
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

.field private imagepath:Landroidx/lifecycle/MutableLiveData;
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

.field private message:Landroidx/lifecycle/MutableLiveData;
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

.field private noticeWarnings:Landroidx/lifecycle/MutableLiveData;
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

.field private responseReult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Landroidx/lifecycle/MutableLiveData;
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

.field private uploadProgress:Landroidx/lifecycle/MutableLiveData;
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

.field private uploadStatus:Landroidx/lifecycle/MutableLiveData;
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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveDatas:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->message:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->title:Landroidx/lifecycle/MutableLiveData;

    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->noticeWarnings:Landroidx/lifecycle/MutableLiveData;

    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadStatus:Landroidx/lifecycle/MutableLiveData;

    .line 9
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadProgress:Landroidx/lifecycle/MutableLiveData;

    .line 10
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->responseReult:Landroidx/lifecycle/MutableLiveData;

    .line 11
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->imagepath:Landroidx/lifecycle/MutableLiveData;

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->title:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "\u53d1\u5e03\u5b58\u6863"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->noticeWarnings:Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadProgress:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->imagepath:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$compressImage(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->compressImage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startZipFile(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->startZipFile(Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final compressImage(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->imagepath:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "file://"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/Util/u;->j:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uploadCoverFile"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "."

    move-object v1, v0

    .line 3
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    new-instance v1, Lcom/join/mgps/activity/screenshot/ImageFactory;

    invoke-direct {v1}, Lcom/join/mgps/activity/screenshot/ImageFactory;-><init>()V

    const/16 v4, 0x1f4

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, v7

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/activity/screenshot/ImageFactory;->compressAndGenImage(Ljava/lang/String;Ljava/lang/String;IZLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v7
.end method

.method private final copyFileSimple(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x1400

    new-array v2, v2, [B

    .line 3
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 6
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 7
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 8
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private final startZipFile(Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Ljava/io/File;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, ""

    move-object/from16 v8, p1

    .line 1
    invoke-virtual {v8, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "context.getExternalFilesDir(\"\")!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v2, "context.getExternalFilesDir(\"\")!!.absolutePath"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v10, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;

    invoke-direct {v10}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;-><init>()V

    .line 3
    new-instance v11, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/Download/cloudarchive"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp1.zip"

    invoke-direct {v11, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "/data/data"

    const/4 v6, 0x2

    .line 6
    invoke-static {v0, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const/4 v13, 0x1

    if-nez v4, :cond_1

    const-string v4, "/Android/data"

    invoke-static {v0, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 7
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v4

    const-string v14, "archiveData.archiveLocalPath"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "wufun.addon"

    invoke-static {v4, v15, v5, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v3}, Lcom/join/mgps/va/overmind/e$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 9
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    if-eqz v0, :cond_12

    .line 14
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0, v2}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->copyFileSimple(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 16
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2, v5, v6, v7}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 18
    array-length v2, v0

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    goto/16 :goto_a

    .line 19
    :cond_6
    array-length v2, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_10

    aget-object v8, v0, v4

    .line 20
    iget-object v14, v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    const-string v15, "file"

    if-eqz v14, :cond_c

    .line 21
    iget-object v14, v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v5, "archiveFileSuffix.value!!"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/CharSequence;

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_7

    const/4 v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_c

    .line 22
    iget-object v14, v1, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v14

    check-cast v16, Ljava/lang/CharSequence;

    const-string v5, ","

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 23
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/2addr v14, v13

    if-eqz v14, :cond_c

    .line 24
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 25
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 p1, v0

    const-string v0, "file.name"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v13, v14, v1, v6, v7}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v14, v1, v6, v7}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v13, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 p1, v0

    const/4 v1, 0x0

    .line 26
    :cond_a
    :goto_7
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move-object/from16 p1, v0

    const/4 v1, 0x0

    :goto_8
    const/4 v0, 0x1

    goto :goto_9

    :cond_c
    move-object/from16 p1, v0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_d

    .line 27
    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v5, 0x0

    const/4 v13, 0x1

    goto/16 :goto_4

    :cond_e
    :goto_a
    return-object v11

    .line 28
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_10
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 30
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tempdel.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 33
    :cond_11
    invoke-virtual {v10, v11, v3}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;->zipActiveFilesKotlin(Ljava/io/File;Ljava/util/List;)V

    :cond_12
    :goto_b
    return-object v11
.end method

.method private final startZipFile2(Landroid/content/Context;Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)Ljava/io/File;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, ""

    move-object/from16 v3, p1

    .line 1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "context.getExternalFilesDir(\"\")!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v2, "context.getExternalFilesDir(\"\")!!.absolutePath"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v8, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;

    invoke-direct {v8}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;-><init>()V

    const-string v2, "/Android/data"

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 3
    invoke-static {v1, v2, v9, v10, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    const-string v3, "temp1.zip"

    const-string v4, "Android/data"

    const-string v12, ","

    const-string v13, "tempdel.zip"

    const-string v14, "file.name"

    const-string v15, "file"

    const-string v6, "archiveFileSuffix.value!!"

    const-string v5, "/Download/cloudarchive"

    const/16 v16, 0x1

    if-nez v2, :cond_1a

    invoke-static {v1, v4, v9, v10, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v9, v5

    move-object/from16 v20, v6

    move-object v2, v11

    move-object/from16 v21, v12

    goto/16 :goto_11

    :cond_0
    const-string v2, "/data/data"

    .line 4
    invoke-static {v1, v2, v9, v10, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp2.zip"

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    move-object/from16 p1, v4

    const-string v4, "packagename"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v9, v10, v11}, Lcom/join/mgps/va/overmind/f;->x(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v3, ""

    move-object/from16 v1, p2

    move-object/from16 p2, p1

    move-object v10, v4

    move v4, v9

    move-object v9, v5

    move/from16 v5, v18

    move-object v11, v6

    move-object/from16 v6, v19

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 10
    array-length v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    goto/16 :goto_8

    .line 11
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_a

    aget-object v5, v1, v4

    .line 13
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 14
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_8

    .line 15
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v6

    check-cast v19, Ljava/lang/CharSequence;

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x6

    const/16 v24, 0x0

    invoke-static/range {v19 .. v24}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 16
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_8

    .line 17
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 18
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p3, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v12

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v12, 0x0

    invoke-static {v1, v10, v12, v6, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v10, v12, v6, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v1, p3

    move/from16 v3, v19

    move-object/from16 v6, v20

    move-object/from16 v12, v21

    goto :goto_3

    :cond_5
    move/from16 v19, v3

    move-object/from16 v21, v12

    .line 19
    :cond_6
    :goto_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move-object/from16 p3, v1

    move/from16 v19, v3

    move-object/from16 v21, v12

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 p3, v1

    move/from16 v19, v3

    move-object/from16 v21, v12

    const/4 v1, 0x0

    :goto_6
    if-nez v1, :cond_9

    .line 20
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p3

    move/from16 v3, v19

    move-object/from16 v12, v21

    goto/16 :goto_1

    .line 21
    :cond_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p2

    .line 23
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_7

    :cond_b
    move-object/from16 v3, p2

    .line 25
    :goto_7
    invoke-virtual {v8, v3, v2}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;->zipActiveFilesKotlin(Ljava/io/File;Ljava/util/List;)V

    move-object v4, v3

    goto/16 :goto_1a

    :cond_c
    :goto_8
    move-object/from16 v3, p2

    return-object v3

    :cond_d
    move-object v9, v5

    move-object v11, v6

    move-object/from16 v21, v12

    .line 26
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Environment.getExternalStorageDirectory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 28
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 29
    array-length v2, v1

    if-nez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_9

    :cond_e
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_f

    goto/16 :goto_10

    .line 30
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    array-length v3, v1

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_17

    aget-object v6, v1, v5

    .line 32
    iget-object v10, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_15

    .line 33
    iget-object v10, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_10

    const/4 v10, 0x1

    goto :goto_b

    :cond_10
    const/4 v10, 0x0

    :goto_b
    if-eqz v10, :cond_15

    .line 34
    iget-object v10, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v10

    check-cast v22, Ljava/lang/CharSequence;

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x6

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 35
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_15

    .line 36
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 37
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p2, v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v19, v3

    move-object/from16 p3, v10

    move-object/from16 v20, v11

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v1, v12, v11, v10, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v12, v11, v10, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_d

    :cond_11
    move-object/from16 v1, p2

    move-object/from16 v10, p3

    move/from16 v3, v19

    move-object/from16 v11, v20

    goto :goto_c

    :cond_12
    move/from16 v19, v3

    move-object/from16 v20, v11

    .line 38
    :cond_13
    :goto_d
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_14
    move-object/from16 p2, v1

    move/from16 v19, v3

    move-object/from16 v20, v11

    :goto_e
    const/4 v1, 0x1

    goto :goto_f

    :cond_15
    move-object/from16 p2, v1

    move/from16 v19, v3

    move-object/from16 v20, v11

    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_16

    .line 39
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p2

    move/from16 v3, v19

    move-object/from16 v11, v20

    goto/16 :goto_a

    .line 40
    :cond_17
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 41
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 44
    :cond_18
    invoke-virtual {v8, v4, v2}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;->zipActiveFilesKotlin(Ljava/io/File;Ljava/util/List;)V

    goto/16 :goto_1a

    :cond_19
    :goto_10
    return-object v4

    :cond_1a
    move-object v9, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v12

    move-object v2, v11

    :goto_11
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 45
    invoke-static {v1, v4, v6, v5, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 46
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 48
    array-length v2, v1

    if-nez v2, :cond_1b

    const/4 v12, 0x1

    goto :goto_12

    :cond_1b
    const/4 v12, 0x0

    :goto_12
    if-eqz v12, :cond_1c

    goto/16 :goto_1a

    .line 49
    :cond_1c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    array-length v3, v1

    const/4 v12, 0x0

    :goto_13
    if-ge v12, v3, :cond_25

    aget-object v5, v1, v12

    .line 51
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_23

    .line 52
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v10, v20

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_14

    :cond_1d
    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_22

    .line 53
    iget-object v6, v0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v6

    check-cast v22, Ljava/lang/CharSequence;

    filled-new-array/range {v21 .. v21}, [Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x6

    const/16 v27, 0x0

    invoke-static/range {v22 .. v27}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 54
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_22

    .line 55
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 56
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p2, v1

    move/from16 v17, v3

    move-object/from16 p1, v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-static {v0, v11, v1, v6, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v11, v1, v6, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_16

    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    move/from16 v3, v17

    goto :goto_15

    :cond_1f
    move-object/from16 p2, v1

    move/from16 v17, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    .line 57
    :cond_20
    :goto_16
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_21
    move-object/from16 p2, v1

    move/from16 v17, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    :goto_17
    const/4 v0, 0x1

    goto :goto_19

    :cond_22
    move-object/from16 p2, v1

    move/from16 v17, v3

    goto :goto_18

    :cond_23
    move-object/from16 p2, v1

    move/from16 v17, v3

    move-object/from16 v10, v20

    :goto_18
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v0, 0x0

    :goto_19
    if-nez v0, :cond_24

    .line 58
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v20, v10

    move/from16 v3, v17

    goto/16 :goto_13

    .line 59
    :cond_25
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 60
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    :cond_26
    invoke-virtual {v8, v4, v2}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;->zipActiveFilesKotlin(Ljava/io/File;Ljava/util/List;)V

    :cond_27
    :goto_1a
    return-object v4
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getArchiveDatas()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveDatas:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getArchiveFileSuffix()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getImagepath()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->imagepath:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getMessage()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->message:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getNoticeWarnings()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->noticeWarnings:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getResponseReult()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->responseReult:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTitle()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->title:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getUploadProgress()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadProgress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getUploadStatus()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadStatus:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final onclickChoiceIcon(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setArchiveDatas(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveDatas:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setArchiveFileSuffix(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archiveFileSuffix:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setImagepath(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->imagepath:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setMessage(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->message:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setNoticeWarnings(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->noticeWarnings:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setResponseReult(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->responseReult:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setTitle(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->title:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setUploadProgress(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadProgress:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setUploadStatus(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->uploadStatus:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final updateArchiveMessage(Landroid/content/Context;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v9, p0

    move-object/from16 v2, p1

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v0, v9, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "archive.value!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    new-instance v4, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v4}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 3
    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 4
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;-><init>()V

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const-string v1, "AccountUtil_.getInstance_(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setArchiveId(Ljava/lang/String;)V

    .line 7
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setGameId(Ljava/lang/String;)V

    .line 8
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    iget-object v1, v9, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->message:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setArchiveDesc(Ljava/lang/String;)V

    .line 9
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getCoverLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setCoverLocation(Ljava/lang/String;)V

    .line 10
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/join/mgps/dto/AccountBean;

    const-string v5, "accountBean"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->setUid(I)V

    .line 11
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    invoke-virtual {v4, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 12
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 13
    sget-object v10, Lkotlinx/coroutines/v1;->a:Lkotlinx/coroutines/v1;

    invoke-static {}, Lkotlinx/coroutines/g1;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    new-instance v13, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$updateArchiveMessage$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/join/mgps/dto/RequestModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/i;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    return-void
.end method

.method public final uploadArchive(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;->archive:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    check-cast v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/Thread;

    .line 4
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle$uploadArchive$$inlined$let$lambda$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 5
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
