.class public Lcom/xinzhu/overmind/utils/p;
.super Ljava/lang/Object;
.source "NativeUtils.java"


# static fields
.field public static final a:Ljava/lang/String; = "VirtualM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "apk",
            "nativeLibDir",
            "is64bit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Done! +"

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_1

    .line 5
    :try_start_1
    sget-object p0, Lcom/xinzhu/overmind/a;->k:Ljava/lang/String;

    invoke-static {v4, p0, p1}, Lcom/xinzhu/overmind/utils/p;->c(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    goto :goto_0

    .line 6
    :cond_1
    sget-object p0, Lcom/xinzhu/overmind/a;->i:Ljava/lang/String;

    invoke-static {v4, p0, p1}, Lcom/xinzhu/overmind/utils/p;->c(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    .line 7
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 9
    :cond_2
    :try_start_3
    sget-object p0, Lcom/xinzhu/overmind/a;->j:Ljava/lang/String;

    invoke-static {v4, p0, p1}, Lcom/xinzhu/overmind/utils/p;->c(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :catchall_0
    move-exception p0

    .line 12
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    throw p0
.end method

.method private static b([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "input",
            "output"
        }
    .end annotation

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

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 7
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static c(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zipfile",
            "cpuArch",
            "nativeLibDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try to copy plugin\'s cup arch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    .line 4
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 6
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, ".so"

    .line 8
    invoke-virtual {v9, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez v7, :cond_2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found plugin\'s cup arch dir: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2000

    new-array v4, v4, [B

    move-object v7, v4

    const/4 v6, 0x1

    :cond_2
    const/16 v4, 0x2f

    .line 10
    invoke-virtual {v9, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "verify so "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v9, Ljava/io/File;

    move-object/from16 v10, p2

    invoke-direct {v9, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-nez v15, :cond_3

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " skip copy"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p0

    goto :goto_2

    .line 15
    :cond_3
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copy so "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " of "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p0

    .line 17
    invoke-virtual {v9, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/xinzhu/overmind/utils/p;->b([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_4
    :goto_1
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5
    if-nez v4, :cond_6

    return v5

    :cond_6
    return v6
.end method
