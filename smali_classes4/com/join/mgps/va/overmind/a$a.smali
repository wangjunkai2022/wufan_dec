.class public final Lcom/join/mgps/va/overmind/a$a;
.super Ljava/lang/Object;
.source "ArchiveUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/va/overmind/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArchiveUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArchiveUtils.kt\ncom/join/mgps/va/overmind/ArchiveUtils$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,145:1\n37#2,2:146\n*E\n*S KotlinDebug\n*F\n+ 1 ArchiveUtils.kt\ncom/join/mgps/va/overmind/ArchiveUtils$Companion\n*L\n83#1,2:146\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ6\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0002J\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J:\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0015j\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u00162\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006 "
    }
    d2 = {
        "com/join/mgps/va/overmind/a$a",
        "",
        "",
        "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
        "archiveS",
        "",
        "filePath",
        "",
        "archiveType",
        "archiveFileSuffix",
        "packageName",
        "",
        "a",
        "Ljava/io/File;",
        "file",
        "",
        "b",
        "",
        "d",
        "c",
        "path",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "f",
        "time",
        "J",
        "e",
        "()J",
        "g",
        "(J)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/va/overmind/a$a;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "file"

    const/4 v2, 0x0

    if-nez p3, :cond_4

    .line 3
    new-instance p3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 4
    invoke-virtual {p3, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 5
    array-length p2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v3, v0, v2

    .line 6
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4, v3}, Lcom/join/mgps/va/overmind/a$a;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_6

    .line 7
    new-instance p2, Ljava/io/File;

    invoke-virtual {p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/join/mgps/va/overmind/a$a;->d(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 8
    invoke-virtual {p3, p5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 9
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10
    :cond_4
    array-length p2, v0

    :goto_2
    if-ge v2, p2, :cond_6

    aget-object p3, v0, v2

    .line 11
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4, p3}, Lcom/join/mgps/va/overmind/a$a;->b(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-direct {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;-><init>()V

    .line 13
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setArchiveLocalPath(Ljava/lang/String;)V

    .line 14
    new-instance p3, Ljava/io/File;

    invoke-virtual {v3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getArchiveLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/join/mgps/va/overmind/a$a;->d(Ljava/io/File;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAddTime(J)V

    .line 15
    invoke-virtual {v3, p5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setPackageName(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/io/File;)Z
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string v1, ""

    .line 1
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_2

    const-string v1, ","

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    check-cast p1, [Ljava/lang/String;

    .line 5
    array-length v2, p1

    if-lez v2, :cond_2

    .line 6
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file.name"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v4, v1, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4, v1, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method private final c(Ljava/io/File;)V
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

    invoke-direct {p0, v3}, Lcom/join/mgps/va/overmind/a$a;->c(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v3, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/a$a;->e()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/va/overmind/a$a;->g(J)V

    goto :goto_3

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 14
    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 15
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/join/mgps/va/overmind/a$a;->c(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/a$a;->e()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/va/overmind/a$a;->g(J)V

    :cond_3
    :goto_3
    return-void
.end method

.method private final d(Ljava/io/File;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/va/overmind/a$a;->g(J)V

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/va/overmind/a$a;->c(Ljava/io/File;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/a$a;->e()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final e()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/va/overmind/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "archiveFileSuffix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/Android/data"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 2
    invoke-static {p2, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const-string v5, "Android/data"

    if-nez v1, :cond_2

    invoke-static {p2, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "/data/data"

    .line 3
    invoke-static {p2, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1, v2}, Lcom/xinzhu/overmind/a;->s(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "MindEnvironment.getDataDir_plugin(packageName, 0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MindEnvironment.getDataD\u2026kageName, 0).absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, ""

    move-object v4, p2

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, v0

    move v4, p4

    move-object v5, p3

    move-object v6, p1

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/va/overmind/a$a;->a(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Environment.getExternalStorageDirectory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, v0

    move v4, p4

    move-object v5, p3

    move-object v6, p1

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/va/overmind/a$a;->a(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-static {p2, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 12
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/a;->T()Ljava/io/File;

    move-result-object v1

    const-string v2, "MindEnvironment.getVirtualRoot_plugin()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MindEnvironment.getVirtu\u2026oot_plugin().absolutePath"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, v0

    move v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/va/overmind/a$a;->a(Ljava/util/List;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final g(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/join/mgps/va/overmind/a;->b(J)V

    return-void
.end method
