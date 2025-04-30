.class public final Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;
.super Landroidx/lifecycle/ViewModel;
.source "CloudShareViewModle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001a\u0018\u00002\u00020\u0001:\u0001^B\u0007\u00a2\u0006\u0004\u0008\\\u0010]J4\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u000e\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ,\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J,\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000c\u001a\u00020\u000bJ\u0016\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fR(\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R(\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\"\u0010,\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u00102\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010-\u001a\u0004\u00083\u0010/\"\u0004\u00084\u00101R.\u00105\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u0010 \u001a\u0004\u00086\u0010\"\"\u0004\u00087\u0010$R(\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010 \u001a\u0004\u00089\u0010\"\"\u0004\u0008:\u0010$R\"\u0010;\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020B0A8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR(\u0010F\u001a\u0008\u0012\u0004\u0012\u00020E0\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010 \u001a\u0004\u0008G\u0010\"\"\u0004\u0008H\u0010$R\"\u0010I\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR(\u0010O\u001a\u0008\u0012\u0004\u0012\u00020B0A8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010D\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\"\u0010Y\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010<\u001a\u0004\u0008Z\u0010>\"\u0004\u0008[\u0010@\u00a8\u0006_"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;",
        "Landroidx/lifecycle/ViewModel;",
        "",
        "packagename",
        "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
        "modGameArchivePathData",
        "path",
        "",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archiveS",
        "loadLocalArchiveexcues",
        "Ljava/io/File;",
        "file",
        "",
        "getFileUpdateTime",
        "Landroid/content/Context;",
        "context",
        "loadLocalArchiveDatas",
        "mainArchiveLocalPath",
        "archiveList",
        "loadLocalExtArchiveMain",
        "archiveLocation",
        "loadLocalExArchive",
        "loadLocalArchive",
        "",
        "checkArchiveHas",
        "",
        "getFileUpdateTimeMain",
        "gameId",
        "getDetialData",
        "Landroidx/lifecycle/MutableLiveData;",
        "runIngArchiveId",
        "Landroidx/lifecycle/MutableLiveData;",
        "getRunIngArchiveId",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setRunIngArchiveId",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "Lcom/join/mgps/dto/GoldFingerBean;",
        "goldFingerBean",
        "Ljava/util/List;",
        "getGoldFingerBean",
        "()Ljava/util/List;",
        "setGoldFingerBean",
        "(Ljava/util/List;)V",
        "initFinish",
        "Z",
        "getInitFinish",
        "()Z",
        "setInitFinish",
        "(Z)V",
        "installInExtPlug",
        "getInstallInExtPlug",
        "setInstallInExtPlug",
        "localArchiveLists",
        "getLocalArchiveLists",
        "setLocalArchiveLists",
        "showDialog",
        "getShowDialog",
        "setShowDialog",
        "lastStartArchive",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "getLastStartArchive",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "setLastStartArchive",
        "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V",
        "Lcom/join/kotlin/domain/common/SingleLiveEvent;",
        "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
        "_event",
        "Lcom/join/kotlin/domain/common/SingleLiveEvent;",
        "",
        "showDownlloadDialog",
        "getShowDownlloadDialog",
        "setShowDownlloadDialog",
        "time",
        "J",
        "getTime",
        "()J",
        "setTime",
        "(J)V",
        "event",
        "getEvent",
        "()Lcom/join/kotlin/domain/common/SingleLiveEvent;",
        "setEvent",
        "(Lcom/join/kotlin/domain/common/SingleLiveEvent;)V",
        "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
        "getModGameArchivePathData",
        "()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
        "setModGameArchivePathData",
        "(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V",
        "archiveData",
        "getArchiveData",
        "setArchiveData",
        "<init>",
        "()V",
        "CloudShareEvent",
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
.field private final _event:Lcom/join/kotlin/domain/common/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/kotlin/domain/common/SingleLiveEvent<",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
            ">;"
        }
    .end annotation
.end field

.field private archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private event:Lcom/join/kotlin/domain/common/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/kotlin/domain/common/SingleLiveEvent<",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private goldFingerBean:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private initFinish:Z

.field private installInExtPlug:Z

.field private lastStartArchive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private localArchiveLists:Landroidx/lifecycle/MutableLiveData;
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

.field private modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private runIngArchiveId:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showDialog:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showDownlloadDialog:Landroidx/lifecycle/MutableLiveData;
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
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->runIngArchiveId:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDownlloadDialog:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    .line 5
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->goldFingerBean:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->lastStartArchive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->localArchiveLists:Landroidx/lifecycle/MutableLiveData;

    .line 9
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    .line 10
    new-instance v0, Lcom/join/kotlin/domain/common/SingleLiveEvent;

    invoke-direct {v0}, Lcom/join/kotlin/domain/common/SingleLiveEvent;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->_event:Lcom/join/kotlin/domain/common/SingleLiveEvent;

    .line 11
    iput-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->event:Lcom/join/kotlin/domain/common/SingleLiveEvent;

    .line 12
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->runIngArchiveId:Landroidx/lifecycle/MutableLiveData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->localArchiveLists:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

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

    if-eqz p1, :cond_3

    .line 4
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 5
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTime(Ljava/io/File;)V

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
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 9
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 13
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTime(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 16
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    :cond_3
    :goto_2
    return-void
.end method

.method private final loadLocalArchiveexcues(Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string v3, "/Android/data"

    const/4 v11, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 1
    invoke-static {v9, v3, v11, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    const-string v6, "Android/data"

    const-string v12, "0"

    const-string v14, "\u542f\u52a8"

    const-string v8, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    const-string v7, "file"

    const/16 v16, 0x1

    if-nez v3, :cond_12

    invoke-static {v9, v6, v11, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_d

    :cond_0
    const-string v3, "/data/data"

    .line 2
    invoke-static {v9, v3, v11, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3
    sget-object v3, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-static {v3, v1, v11, v4, v5}, Lcom/join/mgps/va/overmind/f;->x(Lcom/join/mgps/va/overmind/f;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v5, ""

    move-object/from16 v3, p3

    move-object v11, v6

    move/from16 v6, v17

    move-object v13, v7

    move/from16 v7, v18

    move-object v15, v8

    move-object/from16 v8, v19

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 6
    array-length v5, v4

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    goto/16 :goto_5

    .line 7
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveType()I

    move-result v5

    if-nez v5, :cond_6

    .line 8
    new-instance v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 9
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v4, v7

    .line 10
    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v8}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :cond_3
    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v8, :cond_1b

    .line 11
    invoke-virtual {v5, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5, v15}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 13
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v3

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 14
    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v5, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 18
    invoke-virtual {v5, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 19
    invoke-virtual {v5, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v5, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 21
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 22
    :cond_6
    array-length v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v5, v3, :cond_1b

    aget-object v7, v4, v5

    .line 23
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_7

    move/from16 v16, v3

    move-object v11, v4

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 24
    new-instance v8, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 25
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 26
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v7}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v21

    move/from16 v16, v3

    move-object v11, v4

    const/16 v7, 0x3e8

    int-to-long v3, v7

    div-long v3, v21, v3

    invoke-virtual {v8, v3, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 28
    invoke-virtual {v8, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v8, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v8, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 32
    invoke-virtual {v8, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 33
    invoke-virtual {v8, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v8, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 35
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object v4, v11

    move/from16 v3, v16

    goto :goto_3

    :cond_8
    :goto_5
    return-object v10

    :cond_9
    move-object v13, v7

    move-object v15, v8

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getExternalStorageDirectory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 39
    array-length v5, v4

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_b

    goto/16 :goto_c

    .line 40
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveType()I

    move-result v5

    if-nez v5, :cond_f

    .line 41
    new-instance v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 42
    array-length v6, v4

    const/4 v11, 0x0

    const/16 v20, 0x0

    :goto_7
    if-ge v11, v6, :cond_e

    aget-object v7, v4, v11

    .line 43
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v20, 0x1

    goto :goto_8

    :cond_c
    move/from16 v20, v7

    :goto_8
    if-eqz v20, :cond_d

    goto :goto_9

    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_e
    :goto_9
    if-eqz v20, :cond_1b

    .line 44
    invoke-virtual {v5, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v5, v15}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 46
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v3

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 47
    invoke-virtual {v5, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 51
    invoke-virtual {v5, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 52
    invoke-virtual {v5, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 53
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    .line 54
    :cond_f
    array-length v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v5, v3, :cond_1b

    aget-object v7, v4, v5

    .line 55
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_10

    move/from16 v16, v3

    move-object v11, v4

    const/4 v3, 0x0

    goto :goto_b

    :cond_10
    add-int/lit8 v6, v6, 0x1

    .line 56
    new-instance v8, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 57
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 58
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v7}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v21

    move/from16 v16, v3

    move-object v11, v4

    const/16 v7, 0x3e8

    int-to-long v3, v7

    div-long v3, v21, v3

    invoke-virtual {v8, v3, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 60
    invoke-virtual {v8, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v8, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v8, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 64
    invoke-virtual {v8, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 65
    invoke-virtual {v8, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 66
    invoke-virtual {v8, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 67
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object v4, v11

    move/from16 v3, v16

    goto :goto_a

    :cond_11
    :goto_c
    return-object v10

    :cond_12
    :goto_d
    move-object v13, v7

    move-object v15, v8

    const/4 v3, 0x0

    .line 68
    invoke-static {v9, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_13
    move-object v3, v9

    .line 70
    :goto_e
    sget-object v4, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {v4}, Lcom/join/mgps/va/overmind/f;->b0()Ljava/lang/String;

    move-result-object v4

    .line 71
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 72
    array-length v6, v5

    if-nez v6, :cond_14

    const/4 v6, 0x1

    goto :goto_f

    :cond_14
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_15

    goto/16 :goto_14

    .line 73
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveType()I

    move-result v6

    if-nez v6, :cond_19

    .line 74
    new-instance v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 76
    array-length v3, v5

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_10
    if-ge v4, v3, :cond_18

    aget-object v7, v5, v4

    .line 77
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    :cond_16
    if-eqz v7, :cond_17

    goto :goto_11

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_18
    :goto_11
    if-eqz v7, :cond_1b

    .line 78
    invoke-virtual {v6, v15}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 79
    new-instance v3, Ljava/io/File;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v7, v5

    div-long/2addr v3, v7

    invoke-virtual {v6, v3, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 80
    invoke-virtual {v6, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v6, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 84
    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 85
    invoke-virtual {v6, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v6, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 87
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 88
    :cond_19
    array-length v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_12
    if-ge v4, v3, :cond_1b

    aget-object v7, v5, v4

    .line 89
    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v7}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1a

    move v11, v3

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/16 v7, 0x3e8

    goto :goto_13

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    .line 90
    new-instance v8, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 91
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 92
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, v7}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTimeMain(Ljava/io/File;)J

    move-result-wide v21

    move v11, v3

    const/16 v7, 0x3e8

    int-to-long v2, v7

    div-long v2, v21, v2

    invoke-virtual {v8, v2, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 94
    invoke-virtual {v8, v9}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v8, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v8, v14}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 98
    invoke-virtual {v8, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    .line 99
    invoke-virtual {v8, v12}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v8, v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 101
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p2

    move v3, v11

    goto :goto_12

    :cond_1b
    :goto_14
    return-object v10
.end method


# virtual methods
.method public final checkArchiveHas(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/io/File;)Z
    .locals 10
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "modGameArchivePathData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "modGameArchivePathData.archiveFileSuffix"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "file.name"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v0, v3, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, v3, v5, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method

.method public final getArchiveData()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-object v0
.end method

.method public final getDetialData(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gameId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    sget-object v2, Lkotlinx/coroutines/v1;->a:Lkotlinx/coroutines/v1;

    invoke-static {}, Lkotlinx/coroutines/g1;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p2, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$getDetialData$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    return-void
.end method

.method public final getEvent()Lcom/join/kotlin/domain/common/SingleLiveEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/kotlin/domain/common/SingleLiveEvent<",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->event:Lcom/join/kotlin/domain/common/SingleLiveEvent;

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
    iput-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    .line 2
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->getFileUpdateTime(Ljava/io/File;)V

    .line 3
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    return-wide v0
.end method

.method public final getGoldFingerBean()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->goldFingerBean:Ljava/util/List;

    return-object v0
.end method

.method public final getInitFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->initFinish:Z

    return v0
.end method

.method public final getInstallInExtPlug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->installInExtPlug:Z

    return v0
.end method

.method public final getLastStartArchive()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->lastStartArchive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-object v0
.end method

.method public final getLocalArchiveLists()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->localArchiveLists:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getModGameArchivePathData()Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    return-object v0
.end method

.method public final getRunIngArchiveId()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->runIngArchiveId:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getShowDialog()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getShowDownlloadDialog()Landroidx/lifecycle/MutableLiveData;
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
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDownlloadDialog:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    return-wide v0
.end method

.method public final loadLocalArchive(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)Ljava/util/List;
    .locals 5
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "modGameArchivePathData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getMainArchiveLocalPath()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "modGameArchivePathData.modPackageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "folder"

    .line 4
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveexcues(Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getSubArchiveLocalPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveexcues(Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    :cond_2
    return-object v0
.end method

.method public final loadLocalArchiveDatas(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    sget-object v2, Lkotlinx/coroutines/v1;->a:Lkotlinx/coroutines/v1;

    invoke-static {}, Lkotlinx/coroutines/g1;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$loadLocalArchiveDatas$1;-><init>(Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->e(Lkotlinx/coroutines/t0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/c2;

    return-void
.end method

.method public final loadLocalExArchive(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V
    .locals 9
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
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
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "time"

    const-string v1, "modGameArchivePathData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "archiveLocation"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "archiveList"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/join/mgps/va/overmind/e;->n:Lcom/join/mgps/va/overmind/e$a;

    invoke-virtual {v1}, Lcom/join/mgps/va/overmind/e$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modGameArchivePathData.modPackageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v1, v4, v8

    const/4 v1, 0x1

    aput-object p2, v4, v1

    .line 3
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveFileSuffix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "modGameArchivePathData.archiveFileSuffix"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v4, v2

    .line 4
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getArchiveType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    .line 5
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 7
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "pathUrL"

    .line 8
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 11
    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    const-string v1, "\u6211\u7684\u9ed8\u8ba4\u5b58\u6863"

    .line 12
    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveDesc(Ljava/lang/String;)V

    .line 13
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 14
    invoke-virtual {v3, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocation(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setGame_id(Ljava/lang/String;)V

    const-string v1, "\u542f\u52a8"

    .line 17
    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowText(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 18
    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setStatus(I)V

    const-string v1, "0"

    .line 19
    invoke-virtual {v3, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setId(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, v8}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setUserId(I)V

    .line 21
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 22
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 23
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public final loadLocalExtArchiveMain(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
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
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modGameArchivePathData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainArchiveLocalPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archiveList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "/data/data"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/Android/data"

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalExArchive(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;->getModPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "modGameArchivePathData.modPackageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->loadLocalArchiveexcues(Ljava/lang/String;Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    :goto_0
    return-void
.end method

.method public final setArchiveData(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->archiveData:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-void
.end method

.method public final setEvent(Lcom/join/kotlin/domain/common/SingleLiveEvent;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/domain/common/SingleLiveEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/domain/common/SingleLiveEvent<",
            "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle$CloudShareEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->event:Lcom/join/kotlin/domain/common/SingleLiveEvent;

    return-void
.end method

.method public final setGoldFingerBean(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GoldFingerBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->goldFingerBean:Ljava/util/List;

    return-void
.end method

.method public final setInitFinish(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->initFinish:Z

    return-void
.end method

.method public final setInstallInExtPlug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->installInExtPlug:Z

    return-void
.end method

.method public final setLastStartArchive(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->lastStartArchive:Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    return-void
.end method

.method public final setLocalArchiveLists(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->localArchiveLists:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setModGameArchivePathData(Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->modGameArchivePathData:Lcom/join/kotlin/ui/cloudarchive/data/ModGameArchivePathData;

    return-void
.end method

.method public final setRunIngArchiveId(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->runIngArchiveId:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setShowDialog(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDialog:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setShowDownlloadDialog(Landroidx/lifecycle/MutableLiveData;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->showDownlloadDialog:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;->time:J

    return-void
.end method
