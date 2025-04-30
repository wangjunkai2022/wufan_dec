.class public final Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;
.super Ljava/lang/Object;
.source "ZipUtilExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZipUtilExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipUtilExt.kt\ncom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n11328#2:154\n11663#2,3:155\n13536#2,2:162\n1849#3,2:158\n1849#3,2:160\n*E\n*S KotlinDebug\n*F\n+ 1 ZipUtilExt.kt\ncom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt\n*L\n60#1:154\n60#1,3:155\n92#1,2:162\n62#1,2:158\n76#1,2:160\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0000\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0005\u001a\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0006\u001a\u0015\u0010\n\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007H\u0086\u0004\u001a\u0015\u0010\n\u001a\u00020\t*\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u0007H\u0086\u0004\u001a\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u001a%\u0010\u000f\u001a\u00020\t*\u00020\u00032\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00070\r\"\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u0018\u0010\u000f\u001a\u00020\t*\u00020\u00032\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0011\u001a+\u0010\u0013\u001a\u00020\t*\u00020\u00032\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00000\r2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a0\u0010\u001b\u001a\u00020\t*\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0018\u001a\u0014\u0010\u001d\u001a\u00020\t*\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0007H\u0002\u001a\n\u0010\u001e\u001a\u00020\u0018*\u00020\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Ljava/io/File;",
        "Ljava/util/zip/ZipInputStream;",
        "zipInputStream",
        "Ljava/util/zip/ZipOutputStream;",
        "zipOutputStream",
        "Ljava/io/InputStream;",
        "Ljava/io/OutputStream;",
        "",
        "path",
        "",
        "unZipTo",
        "Ljava/util/zip/ZipFile;",
        "checkUnzipFolder",
        "",
        "srcs",
        "zipFrom",
        "(Ljava/util/zip/ZipOutputStream;[Ljava/lang/String;)V",
        "",
        "files",
        "zip",
        "(Ljava/util/zip/ZipOutputStream;[Ljava/io/File;Ljava/lang/String;)V",
        "outputStream",
        "",
        "bufferSize",
        "",
        "closeInput",
        "closeOutput",
        "writeTo",
        "location",
        "createEmptyFolder",
        "smartCreateNewFile",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private static final checkUnzipFolder(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "\u521b\u5efa\u6587\u4ef6\u5939\u5931\u8d25"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "\u8def\u5f84\u4e0d\u80fd\u662f\u6587\u4ef6"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final createEmptyFolder(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 2
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method public static final smartCreateNewFile(Ljava/io/File;)Z
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$smartCreateNewFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static final unZipTo(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$unZipTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->checkUnzipFolder(Ljava/lang/String;)V

    const-string v0, "GBK"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 4
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V

    invoke-static {v1, p1}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->unZipTo(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->unZipTo(Ljava/util/zip/ZipFile;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final unZipTo(Ljava/util/zip/ZipFile;Ljava/lang/String;)V
    .locals 10
    .param p0    # Ljava/util/zip/ZipFile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$unZipTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->checkUnzipFolder(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "entries()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->iterator(Ljava/util/Enumeration;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    const-string v2, "entry"

    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    const/16 v3, 0x2f

    if-eqz v2, :cond_0

    .line 9
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 11
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v4}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->smartCreateNewFile(Ljava/io/File;)Z

    .line 13
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v3, "input"

    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x2000

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, v1

    invoke-static/range {v3 .. v9}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->writeTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IZZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final writeTo(Ljava/io/InputStream;Ljava/io/OutputStream;IZZ)V
    .locals 5
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$writeTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array p2, p2, [B

    .line 2
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 3
    :goto_0
    instance-of v2, p1, Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/io/BufferedOutputStream;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v1, v2

    .line 4
    :goto_1
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 5
    :goto_2
    new-instance v4, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;

    invoke-direct {v4, v2, v0, p2}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt$writeTo$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Ljava/io/BufferedInputStream;[B)V

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz p4, :cond_4

    .line 9
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_4
    return-void
.end method

.method public static synthetic writeTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/16 p2, 0x800

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    const/4 p3, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 1
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->writeTo(Ljava/io/InputStream;Ljava/io/OutputStream;IZZ)V

    return-void
.end method

.method private static final zip(Ljava/util/zip/ZipOutputStream;[Ljava/io/File;Ljava/lang/String;)V
    .locals 13

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {p0, p2}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->createEmptyFolder(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)V

    .line 3
    :cond_2
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5
    new-instance v3, Ljava/util/zip/ZipEntry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    instance-of v5, v4, Ljava/io/BufferedInputStream;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/io/BufferedInputStream;

    move-object v6, v4

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v6, v5

    .line 7
    :goto_3
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v8, 0x2000

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, p0

    .line 8
    invoke-static/range {v6 .. v12}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->writeTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IZZILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_4

    .line 10
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const-string v4, "it.listFiles()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, v2}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->zip(Ljava/util/zip/ZipOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static final zipFrom(Ljava/util/zip/ZipOutputStream;Ljava/util/List;)V
    .locals 3
    .param p0    # Ljava/util/zip/ZipOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipOutputStream;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$zipFrom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, v1, v0}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->zip(Ljava/util/zip/ZipOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-string v2, "it.listFiles()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->zip(Ljava/util/zip/ZipOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method

.method public static final varargs zipFrom(Ljava/util/zip/ZipOutputStream;[Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/util/zip/ZipOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$zipFrom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/File;

    aput-object v0, v1, v2

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v1, v0}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->zip(Ljava/util/zip/ZipOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-string v3, "it.listFiles()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/join/kotlin/ui/cloudarchive/util/ZipUtilExtKt;->zip(Ljava/util/zip/ZipOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method

.method public static final zipInputStream(Ljava/io/File;)Ljava/util/zip/ZipInputStream;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$zipInputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static final zipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;
    .locals 1
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$zipInputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static final zipOutputStream(Ljava/io/File;)Ljava/util/zip/ZipOutputStream;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$zipOutputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static final zipOutputStream(Ljava/io/OutputStream;)Ljava/util/zip/ZipOutputStream;
    .locals 1
    .param p0    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$this$zipOutputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
