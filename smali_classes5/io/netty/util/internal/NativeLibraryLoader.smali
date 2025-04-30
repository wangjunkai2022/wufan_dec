.class public final Lio/netty/util/internal/NativeLibraryLoader;
.super Ljava/lang/Object;
.source "NativeLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DELETE_NATIVE_LIB_AFTER_LOADING:Z

.field private static final NATIVE_RESOURCE_HOME:Ljava/lang/String; = "META-INF/native/"

.field private static final TRY_TO_PATCH_SHADED_ID:Z

.field private static final UNIQUE_ID_BYTES:[B

.field private static final WORKDIR:Ljava/io/File;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lio/netty/util/internal/NativeLibraryLoader;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 2
    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/NativeLibraryLoader;->UNIQUE_ID_BYTES:[B

    const-string v1, "io.netty.native.workdir"

    .line 4
    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-Dio.netty.native.workdir: "

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    sput-object v0, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    .line 9
    sget-object v1, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->tmpdir()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (io.netty.tmpdir)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :goto_0
    const-string v0, "io.netty.native.deleteLibAfterLoading"

    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    .line 13
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "-Dio.netty.native.deleteLibAfterLoading: {}"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "io.netty.native.tryPatchShadedId"

    .line 14
    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->TRY_TO_PATCH_SHADED_ID:Z

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "-Dio.netty.native.tryPatchShadedId: {}"

    invoke-interface {v2, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculatePackagePrefix()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lio/netty/util/internal/NativeLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io!netty!util!internal!NativeLibraryLoader"

    const/16 v2, 0x21

    const/16 v3, 0x2e

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v0, "Could not find prefix added to %s to get %s. When shading, only adding a package prefix is supported"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static classToByteArray(Ljava/lang/Class;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".class"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 5
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 7
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v3}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    invoke-static {v2}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_1
    invoke-static {v3}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v2}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 15
    throw p0

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 11

    const-string v0, ".jnilib"

    .line 1
    invoke-static {}, Lio/netty/util/internal/NativeLibraryLoader;->calculatePackagePrefix()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 4
    :try_start_0
    invoke-static {p1, v3, v5}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v6

    .line 5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v7, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v5

    sget-object v9, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v6, v8, v9

    const-string v6, "{} cannot be loaded from java.library.path, now trying export to -Dio.netty.native.workdir: {}"

    invoke-interface {v7, v6, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-static {v3}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "META-INF/native/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez p1, :cond_0

    .line 9
    invoke-static {v7}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1, v7}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    :goto_0
    const/4 v9, 0x0

    if-nez v8, :cond_5

    .line 11
    :try_start_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isOsx()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 12
    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const-string v8, "META-INF/native/lib"

    if-eqz v7, :cond_1

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".dynlib"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez p1, :cond_2

    .line 13
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    :goto_2
    move-object v8, v7

    if-eqz v8, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p0, v4}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 17
    throw p0

    .line 18
    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-static {p0, v4}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 20
    throw p0

    .line 21
    :cond_5
    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 22
    invoke-virtual {v6, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    sget-object v6, Lio/netty/util/internal/NativeLibraryLoader;->WORKDIR:Ljava/io/File;

    invoke-static {v2, v0, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 25
    :try_start_3
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 26
    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 27
    :try_start_5
    invoke-static {v1}, Lio/netty/util/internal/NativeLibraryLoader;->shouldShadedLibraryIdBePatched(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 28
    invoke-static {v2, v6, p0, v3}, Lio/netty/util/internal/NativeLibraryLoader;->patchShadedLibraryId(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :cond_6
    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 29
    :goto_4
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_7

    .line 30
    invoke-virtual {v6, p0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 31
    :cond_7
    :goto_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 32
    invoke-static {v6}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 33
    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v10}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 34
    invoke-static {v2}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 35
    invoke-static {v9}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    sget-boolean p0, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    if-eqz p0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_9

    .line 37
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_9
    return-void

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    :catch_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v6, v9

    goto/16 :goto_b

    :catch_2
    move-exception p0

    move-object v6, v9

    :goto_6
    move-object v9, v2

    goto :goto_8

    :catch_3
    move-exception p0

    move-object v6, v9

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object v6, v9

    goto/16 :goto_c

    :catch_4
    move-exception p0

    move-object v6, v9

    goto :goto_8

    :catch_5
    move-exception p0

    move-object v2, v9

    move-object v6, v2

    :goto_7
    move-object v9, v0

    goto :goto_9

    :catchall_4
    move-exception p0

    move-object v0, v9

    move-object v6, v0

    goto :goto_c

    :catch_6
    move-exception p0

    move-object v0, v9

    move-object v6, v0

    .line 38
    :goto_8
    :try_start_7
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not load a native library: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 40
    invoke-static {p1, v4}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 41
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception p0

    goto :goto_c

    :catch_7
    move-exception p0

    move-object v2, v9

    move-object v6, v2

    :goto_9
    if-eqz v9, :cond_a

    .line 42
    :try_start_8
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 43
    invoke-static {v9}, Lio/netty/util/internal/NativeLibraryLoader$NoexecVolumeDetector;->access$000(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 44
    sget-object p1, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "{} exists but cannot be executed even when execute permissions set; check volume for \"noexec\" flag; use -D{}=[path] to set native working directory separately."

    .line 45
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "io.netty.native.workdir"

    .line 46
    invoke-interface {p1, v0, v1, v3}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception p1

    .line 47
    :try_start_9
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Error checking if {} is on a file store mounted with noexec"

    invoke-interface {v0, v1, v9, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    :cond_a
    :goto_a
    invoke-static {p0, v4}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 50
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception p0

    move-object v0, v9

    :goto_b
    move-object v9, v2

    .line 51
    :goto_c
    invoke-static {v9}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    .line 52
    invoke-static {v6}, Lio/netty/util/internal/NativeLibraryLoader;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v0, :cond_c

    .line 53
    sget-boolean p1, Lio/netty/util/internal/NativeLibraryLoader;->DELETE_NATIVE_LIB_AFTER_LOADING:Z

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_c

    .line 54
    :cond_b
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 55
    :cond_c
    goto :goto_e

    :goto_d
    throw p0

    :goto_e
    goto :goto_d
.end method

.method public static varargs loadFirstAvailable(Ljava/lang/ClassLoader;[Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    :try_start_0
    invoke-static {v3, p0}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    .line 4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v5, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Unable to load the library \'{}\', trying next name..."

    invoke-interface {v5, v6, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load any of the given libraries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressedAndClear(Ljava/lang/Throwable;Ljava/util/List;)V

    .line 9
    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static loadLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "Successfully loaded the library {}"

    const-string v1, "Unable to load the library \'{}\', trying other loading mechanism."

    .line 1
    :try_start_0
    const-class v2, Lio/netty/util/internal/NativeLibraryUtil;

    invoke-static {p0, v2}, Lio/netty/util/internal/NativeLibraryLoader;->tryToLoadClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/NativeLibraryLoader;->loadLibraryByHelper(Ljava/lang/Class;Ljava/lang/String;Z)V

    .line 3
    sget-object p0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p0, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4
    :try_start_1
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2, v1, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    sget-object v2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2, v1, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-static {p1, p2}, Lio/netty/util/internal/NativeLibraryUtil;->loadLibrary(Ljava/lang/String;Z)V

    .line 7
    sget-object p2, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p2, v0, p1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 8
    invoke-static {p1, p0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 9
    throw p1
.end method

.method private static loadLibraryByHelper(Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1
    new-instance v0, Lio/netty/util/internal/NativeLibraryLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/util/internal/NativeLibraryLoader$1;-><init>(Ljava/lang/Class;Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p1, p0, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 3
    check-cast p0, Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 5
    instance-of p2, p1, Ljava/lang/UnsatisfiedLinkError;

    if-eqz p2, :cond_0

    .line 6
    check-cast p1, Ljava/lang/UnsatisfiedLinkError;

    throw p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/UnsatisfiedLinkError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw p1

    :cond_1
    return-void
.end method

.method static patchShadedLibraryId(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 3
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 7
    invoke-static {p0, p2, p3}, Lio/netty/util/internal/NativeLibraryLoader;->patchShadedLibraryId([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedOs()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p0, p2, p3}, Lio/netty/util/internal/NativeLibraryLoader;->patchShadedLibraryId([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    .line 14
    :goto_1
    array-length p3, p0

    invoke-virtual {p1, p0, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    return p2
.end method

.method private static patchShadedLibraryId([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 15
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    :goto_0
    array-length v3, p0

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3

    array-length v3, p0

    sub-int/2addr v3, v2

    array-length v5, v0

    if-lt v3, v5, :cond_3

    move v5, v2

    const/4 v3, 0x0

    .line 17
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    .line 18
    aget-byte v5, p0, v5

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v0, v3

    if-eq v5, v3, :cond_0

    goto :goto_2

    .line 19
    :cond_0
    array-length v3, v0

    if-ne v7, v3, :cond_1

    goto :goto_3

    :cond_1
    move v5, v6

    move v3, v7

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_3
    if-ne v2, v4, :cond_4

    .line 20
    sget-object p0, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p1, "Was not able to find the ID of the shaded native library {}, can\'t adjust it."

    invoke-interface {p0, p1, p2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_4
    const/4 v3, 0x0

    .line 21
    :goto_4
    array-length v4, v0

    if-ge v3, v4, :cond_5

    add-int v4, v2, v3

    .line 22
    sget-object v5, Lio/netty/util/internal/NativeLibraryLoader;->UNIQUE_ID_BYTES:[B

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v6

    array-length v7, v5

    .line 23
    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-byte v5, v5, v6

    aput-byte v5, p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 24
    :cond_5
    sget-object v3, Lio/netty/util/internal/NativeLibraryLoader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p1, v4, v5

    const/4 p1, 0x2

    .line 25
    new-instance p2, Ljava/lang/String;

    array-length v0, v0

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p0, v2, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object p2, v4, p1

    const-string p0, "Found the ID of the shaded native library {}. Replacing ID part {} with {}"

    invoke-interface {v3, p0, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return v5
.end method

.method private static shouldShadedLibraryIdBePatched(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lio/netty/util/internal/NativeLibraryLoader;->TRY_TO_PATCH_SHADED_ID:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isOsx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static tryToLoadClass(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 2
    :try_start_1
    invoke-static {p1}, Lio/netty/util/internal/NativeLibraryLoader;->classToByteArray(Ljava/lang/Class;)[B

    move-result-object v1

    .line 3
    new-instance v2, Lio/netty/util/internal/NativeLibraryLoader$2;

    invoke-direct {v2, p0, p1, v1}, Lio/netty/util/internal/NativeLibraryLoader$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;[B)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 4
    invoke-static {p0, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 5
    throw p0

    :catch_2
    move-exception p0

    .line 6
    invoke-static {p0, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 7
    throw p0

    :catch_3
    move-exception p0

    .line 8
    invoke-static {p0, v0}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 9
    throw p0

    .line 10
    :cond_0
    throw v0
.end method
