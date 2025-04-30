.class public final Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;
.super Ljava/lang/Object;
.source "ArchiveZipUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u001c\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004J\u001e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;",
        "",
        "Ljava/io/File;",
        "file",
        "",
        "files",
        "",
        "zipActiveFilesKotlin",
        "",
        "fileZip",
        "unZipActiveFilesKotlin",
        "zipActiveFiles",
        "Ljava/util/zip/ZipOutputStream;",
        "zipOutputStream",
        "",
        "byteArray",
        "zipFile",
        "unArchiveZip",
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final unArchiveZip(Ljava/io/File;)V
    .locals 6
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "zipFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/16 v2, 0x2800

    new-array v2, v2, [B

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 6
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 7
    :goto_0
    new-instance v4, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil$unArchiveZip$1;

    invoke-direct {v4, v2, v0, v1}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil$unArchiveZip$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    iget-object v4, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, [B

    iget v5, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 10
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 12
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_1
    return-void
.end method

.method public unZipActiveFilesKotlin(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileZip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unZipActiveFilesKotlin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2, p1}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->unZipTo(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public final zipActiveFiles(Ljava/io/File;Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x2800

    new-array v2, v2, [B

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Ljava/io/File;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3, v2}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;->zipFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;[B)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 10
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 11
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 12
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 13
    throw p1

    :catch_0
    :goto_1
    return-void
.end method

.method public zipActiveFilesKotlin(Ljava/io/File;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->zipOutputStream(Ljava/io/File;)Ljava/util/zip/ZipOutputStream;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->zipFrom(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)V

    return-void
.end method

.method public final zipFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;[B)V
    .locals 8
    .param p1    # Ljava/util/zip/ZipOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "zipOutputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteArray"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 4
    array-length v2, p2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 5
    array-length v0, p2

    :goto_2
    if-ge v1, v0, :cond_8

    aget-object v2, p2, v1

    const-string v3, "f"

    .line 6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, p3}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil;->zipFile(Ljava/util/zip/ZipOutputStream;Ljava/io/File;[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7
    :cond_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 9
    sget-object p2, Lcom/join/mgps/va/overmind/f;->d:Lcom/join/mgps/va/overmind/f;

    invoke-virtual {p2}, Lcom/join/mgps/va/overmind/f;->a0()Ljava/lang/String;

    move-result-object p2

    const-string v3, "path"

    .line 10
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, p2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, ""

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 12
    :cond_4
    new-instance p2, Ljava/util/zip/ZipEntry;

    invoke-direct {p2, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 14
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 15
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    instance-of v3, v0, Ljava/io/BufferedInputStream;

    const/16 v4, 0x2000

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Ljava/io/BufferedInputStream;

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :goto_3
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    instance-of v3, p1, Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_6

    check-cast p1, Ljava/io/BufferedOutputStream;

    goto :goto_4

    :cond_6
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object p1, v3

    .line 17
    :goto_4
    new-instance v3, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil$zipFile$1;

    invoke-direct {v3, p2, v2, p3}, Lcom/join/kotlin/ui/cloudarchive/util/ArchiveZipUtil$zipFile$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;[B)V

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 18
    iget v3, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, p3, v1, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_4

    .line 19
    :cond_7
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 20
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_8
    return-void
.end method
