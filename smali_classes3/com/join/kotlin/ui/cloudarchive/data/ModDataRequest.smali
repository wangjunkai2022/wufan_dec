.class public final Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;
.super Ljava/lang/Object;
.source "ModDataRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$ArchiveDownStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModDataRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModDataRequest.kt\ncom/join/kotlin/ui/cloudarchive/data/ModDataRequest\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,588:1\n1#2:589\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001:\u0001cB\u0007\u00a2\u0006\u0004\u0008a\u0010bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J(\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0008H\u0002JA\u0010\u001c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0011J\u000e\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010 \u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0011J\u0010\u0010#\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010!J.\u0010(\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u0008J\u001e\u0010*\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0008J\u0016\u0010+\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020!R(\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00110,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R(\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00150,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010.\u001a\u0004\u00084\u00100\"\u0004\u00085\u00102R(\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00150,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00086\u0010.\u001a\u0004\u00087\u00100\"\u0004\u00088\u00102R\"\u0010:\u001a\u0002098\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R6\u0010C\u001a\u0016\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0B0A\u0018\u00010@8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR(\u0010I\u001a\u0008\u0012\u0004\u0012\u00020!0,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010.\u001a\u0004\u0008J\u00100\"\u0004\u0008K\u00102R4\u0010L\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0B0A0,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010.\u001a\u0004\u0008M\u00100\"\u0004\u0008N\u00102R\"\u0010O\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001d\u0010Z\u001a\u00020U8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010YR\"\u0010[\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010P\u001a\u0004\u0008\\\u0010R\"\u0004\u0008]\u0010TR4\u0010^\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0B0A0,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008^\u0010.\u001a\u0004\u0008_\u00100\"\u0004\u0008`\u00102\u00a8\u0006d"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;",
        "",
        "Ljava/io/File;",
        "file",
        "",
        "getFileUpdateTime",
        "Lcom/join/mgps/db/tables/CloudArchiveTable;",
        "table",
        "Landroid/content/Context;",
        "context",
        "unzipToUser0",
        "unZip",
        "Ljava/io/InputStream;",
        "input",
        "Ljava/io/OutputStream;",
        "out",
        "copyFileSimple",
        "",
        "root",
        "child",
        "unZipOne",
        "",
        "page",
        "gameId",
        "",
        "lastEnterTime",
        "tagId",
        "type",
        "getModeDatas",
        "(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V",
        "getAllDownloedArchive",
        "getFileUpdateTimeMain",
        "loadMyInShop",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archiveData",
        "cancleDownloadTask",
        "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
        "pathData",
        "filePath",
        "downloadType",
        "downloadArchive",
        "archiveLocalPath",
        "unzipToPath",
        "reportDownloadArchive",
        "Landroidx/lifecycle/MutableLiveData;",
        "progressTextShow",
        "Landroidx/lifecycle/MutableLiveData;",
        "getProgressTextShow",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setProgressTextShow",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "progress",
        "getProgress",
        "setProgress",
        "status",
        "getStatus",
        "setStatus",
        "",
        "installInExtPlug",
        "Z",
        "getInstallInExtPlug",
        "()Z",
        "setInstallInExtPlug",
        "(Z)V",
        "Lretrofit2/Call;",
        "Lcom/join/mgps/dto/ResponseModel;",
        "",
        "result",
        "Lretrofit2/Call;",
        "getResult",
        "()Lretrofit2/Call;",
        "setResult",
        "(Lretrofit2/Call;)V",
        "dataChangeItem",
        "getDataChangeItem",
        "setDataChangeItem",
        "resultData",
        "getResultData",
        "setResultData",
        "time",
        "J",
        "getTime",
        "()J",
        "setTime",
        "(J)V",
        "Lcom/github/snowdream/android/app/downloader/b;",
        "factory$delegate",
        "Lkotlin/Lazy;",
        "getFactory",
        "()Lcom/github/snowdream/android/app/downloader/b;",
        "factory",
        "actualSize",
        "getActualSize",
        "setActualSize",
        "resultAllHasDownloadData",
        "getResultAllHasDownloadData",
        "setResultAllHasDownloadData",
        "<init>",
        "()V",
        "ArchiveDownStatus",
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
.field private actualSize:J

.field private dataChangeItem:Landroidx/lifecycle/MutableLiveData;
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

.field private final factory$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private installInExtPlug:Z

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

.field private progressTextShow:Landroidx/lifecycle/MutableLiveData;
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

.field private result:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resultAllHasDownloadData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private status:Landroidx/lifecycle/MutableLiveData;
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

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultData:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultAllHasDownloadData:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->status:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progress:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progressTextShow:Landroidx/lifecycle/MutableLiveData;

    .line 7
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->dataChangeItem:Landroidx/lifecycle/MutableLiveData;

    .line 8
    sget-object v0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$factory$2;->INSTANCE:Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$factory$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->factory$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$unZip(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZip(Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$unzipToUser0(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unzipToUser0(Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    return-void
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

.method private final getFileUpdateTime(Ljava/io/File;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "f"

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 4
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 5
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFileUpdateTime(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v1, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 9
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 12
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 13
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFileUpdateTime(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 16
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    :cond_3
    :goto_2
    return-void
.end method

.method private final unZip(Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unZip$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private final unZipOne(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/join/mgps/db/tables/CloudArchiveTable;->setArchiveFiles(Ljava/lang/String;)V

    .line 3
    iget-boolean p3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->installInExtPlug:Z

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/e$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "copyZip"

    .line 6
    invoke-virtual {p3, p2, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p2

    .line 7
    new-instance p3, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, p3, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->copyFileSimple(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 9
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/join/mgps/va/overmind/e$a;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 11
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 14
    :cond_1
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;

    invoke-direct {p2}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;-><init>()V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    const-string p4, "unFolder.absolutePath"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance p4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getArchiveZipPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, p3, p4}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;->unZipActiveFilesKotlin(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final unzipToUser0(Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unzipToUser0$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$unzipToUser0$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/mgps/db/tables/CloudArchiveTable;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final cancleDownloadTask(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFactory()Lcom/github/snowdream/android/app/downloader/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/snowdream/android/app/downloader/b;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final downloadArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 10
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "archiveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFactory()Lcom/github/snowdream/android/app/downloader/b;

    move-result-object v8

    new-instance v9, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-object v5, p2

    move-object v6, v0

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$downloadArchive$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;ILcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;)V

    invoke-virtual {v8, v9}, Lcom/github/snowdream/android/app/downloader/b;->m(Lcom/github/snowdream/android/app/downloader/b$b;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFactory()Lcom/github/snowdream/android/app/downloader/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/b;->i()V

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 7
    new-instance p2, Lcom/github/snowdream/android/app/downloader/c;

    .line 8
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocation()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveSize()J

    move-result-wide v5

    move-object v1, p2

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/github/snowdream/android/app/downloader/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 11
    invoke-virtual {p0}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFactory()Lcom/github/snowdream/android/app/downloader/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/github/snowdream/android/app/downloader/b;->b(Lcom/github/snowdream/android/app/downloader/c;)Ljava/lang/String;

    return-void
.end method

.method public final getActualSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->actualSize:J

    return-wide v0
.end method

.method public final getAllDownloedArchive(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 3
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 4
    invoke-virtual {v1, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    const-string p3, "AccountUtil_.getInstance_(context)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    const-string p3, "AccountUtil_.getInstance_(context).accountData"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    const-string p3, "RpcGameClientImpl.newInstance()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p3

    invoke-interface {p1, p3}, Lq1/h;->O(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    if-eqz p1, :cond_0

    .line 9
    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getAllDownloedArchive$1;

    invoke-direct {p3, p0, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getAllDownloedArchive$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;I)V

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public final getDataChangeItem()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->dataChangeItem:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getFactory()Lcom/github/snowdream/android/app/downloader/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->factory$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/b;

    return-object v0
.end method

.method public final getFileUpdateTimeMain(Ljava/io/File;)J
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    .line 2
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->getFileUpdateTime(Ljava/io/File;)V

    .line 3
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    return-wide v0
.end method

.method public final getInstallInExtPlug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->installInExtPlug:Z

    return v0
.end method

.method public final getModeDatas(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 3
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 4
    invoke-virtual {v1, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    const-string p3, "AccountUtil_.getInstance_(context)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    const-string p3, "AccountUtil_.getInstance_(context).accountData"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 7
    invoke-virtual {v1, p4, p5}, Lcom/join/mgps/dto/RequestGameIdArgs;->setLastEnterTime(J)V

    .line 8
    invoke-virtual {v1, p6}, Lcom/join/mgps/dto/RequestGameIdArgs;->setTagId(Ljava/lang/String;)V

    if-eqz p7, :cond_0

    .line 9
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setType(I)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    const-string p3, "RpcGameClientImpl.newInstance()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p3

    invoke-interface {p1, p3}, Lq1/h;->g0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    if-eqz p1, :cond_1

    .line 12
    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getModeDatas$1;

    invoke-direct {p3, p0, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$getModeDatas$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;I)V

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_1
    return-void
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getProgressTextShow()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progressTextShow:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getResult()Lretrofit2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    return-object v0
.end method

.method public final getResultAllHasDownloadData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultAllHasDownloadData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getResultData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getStatus()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->status:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    return-wide v0
.end method

.method public final loadMyInShop(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gameId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 3
    new-instance v1, Lcom/join/mgps/dto/RequestGameIdArgs;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestGameIdArgs;-><init>()V

    .line 4
    invoke-virtual {v1, p3}, Lcom/join/mgps/dto/RequestGameIdArgs;->setGameId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p2}, Lcom/join/mgps/dto/RequestGameIdArgs;->setPage(I)V

    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    const-string p3, "AccountUtil_.getInstance_(context)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    const-string p3, "AccountUtil_.getInstance_(context).accountData"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestGameIdArgs;->setUid(I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    const-string p3, "RpcGameClientImpl.newInstance()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p3

    invoke-interface {p1, p3}, Lq1/h;->L(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    if-eqz p1, :cond_0

    .line 9
    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$loadMyInShop$1;

    invoke-direct {p3, p0, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$loadMyInShop$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;I)V

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public final reportDownloadArchive(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archiveData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v0}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 3
    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;

    invoke-direct {v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->archiveId:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getGame_id()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->gameId:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    const-string p2, "AccountUtil_.getInstance_(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p1

    const-string p2, "AccountUtil_.getInstance_(context).accountData"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p1

    iput p1, v1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveArgs;->uid:I

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    const-string p2, "RpcGameClientImpl.newInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-virtual {v0}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    move-result-object p2

    invoke-interface {p1, p2}, Lq1/h;->e0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$reportDownloadArchive$1;

    invoke-direct {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest$reportDownloadArchive$1;-><init>()V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final setActualSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->actualSize:J

    return-void
.end method

.method public final setDataChangeItem(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->dataChangeItem:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setInstallInExtPlug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->installInExtPlug:Z

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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progress:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setProgressTextShow(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->progressTextShow:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setResult(Lretrofit2/Call;)V
    .locals 0
    .param p1    # Lretrofit2/Call;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->result:Lretrofit2/Call;

    return-void
.end method

.method public final setResultAllHasDownloadData(Landroidx/lifecycle/MutableLiveData;)V
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
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultAllHasDownloadData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setResultData(Landroidx/lifecycle/MutableLiveData;)V
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
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->resultData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setStatus(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->status:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->time:J

    return-void
.end method

.method public final unzipToPath(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Landroid/content/Context;)V
    .locals 11
    .param p1    # Lcom/join/mgps/db/tables/CloudArchiveTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archiveLocalPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "/Android/data"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    const-string v5, "/user/"

    if-eqz v4, :cond_2

    .line 2
    sget-object v1, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/f;->b0()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-boolean v3, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->installInExtPlug:Z

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/f;->c0()Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p2

    .line 9
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZipOne(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "/data/data/"

    .line 11
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    sget-object v1, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "table.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/join/mgps/va/overmind/f;->w(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-boolean v4, p0, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->installInExtPlug:Z

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/va/overmind/f;->z(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, ""

    move-object v3, p2

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZipOne(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 17
    :cond_4
    sget-object v0, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v0}, Lcom/join/mgps/va/overmind/f;->b0()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/db/tables/CloudArchiveTable;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/data/ModDataRequest;->unZipOne(Lcom/join/mgps/db/tables/CloudArchiveTable;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_1
    return-void
.end method
