.class public Lnet/lingala/zip4j/util/c;
.super Ljava/lang/Object;
.source "ArchiveMaintainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/lingala/zip4j/util/c;Le3/o;Ljava/io/File;Lf3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/c;->g(Le3/o;Ljava/io/File;Lf3/a;)V

    return-void
.end method

.method private b(Le3/o;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le3/o;->n()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v0

    invoke-virtual {v0}, Le3/f;->d()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-le v5, v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v6

    invoke-virtual {v6}, Le3/f;->d()I

    move-result v6

    if-nez v6, :cond_1

    .line 5
    invoke-virtual {p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 6
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, ".z0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7
    :goto_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-wide v1
.end method

.method private c(Le3/o;Le3/h;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    move-result-wide v0

    invoke-virtual {p2}, Le3/h;->e()J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLf3/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_9

    cmp-long v2, p5, v0

    if-ltz v2, :cond_8

    cmp-long v2, p3, p5

    if-gtz v2, :cond_7

    cmp-long v2, p3, p5

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p7}, Lf3/a;->m()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {p7, v4}, Lf3/a;->setResult(I)V

    .line 3
    invoke-virtual {p7, v3}, Lf3/a;->u(I)V

    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long/2addr p5, p3

    const-wide/16 p3, 0x1000

    cmp-long v2, p5, p3

    if-gez v2, :cond_2

    long-to-int p3, p5

    .line 5
    new-array p3, p3, [B

    goto :goto_0

    :cond_2
    const/16 p3, 0x1000

    new-array p3, p3, [B

    .line 6
    :cond_3
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p4

    const/4 v2, -0x1

    if-ne p4, v2, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p2, p3, v3, p4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v5, p4

    .line 8
    invoke-virtual {p7, v5, v6}, Lf3/a;->w(J)V

    .line 9
    invoke-virtual {p7}, Lf3/a;->m()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 10
    invoke-virtual {p7, v4}, Lf3/a;->setResult(I)V

    return-void

    :cond_5
    add-long/2addr v0, v5

    cmp-long p4, v0, p5

    if-nez p4, :cond_6

    :goto_1
    return-void

    .line 11
    :cond_6
    array-length p4, p3

    int-to-long v5, p4

    add-long/2addr v5, v0

    cmp-long p4, v5, p5

    if-lez p4, :cond_3

    sub-long p3, p5, v0

    long-to-int p4, p3

    .line 12
    new-array p3, p4, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 15
    :cond_7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "start offset is greater than end offset, cannot copy file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "end offset is negative, cannot copy file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_9
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "starting offset is negative, cannot copy file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input or output stream is null, cannot copy file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private e(Le3/o;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 4
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameter is null in getFilePointer, cannot create file handler to remove file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Le3/o;I)Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v1

    invoke-virtual {v1}, Le3/f;->d()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    const-string v1, "."

    const/4 v2, 0x0

    if-lt p2, p1, :cond_1

    .line 4
    :try_start_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ".z"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ".z0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_2
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "split file does not exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 11
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 12
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invlaid part number, cannot create split file handler"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model is null, cannot create split file handler"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(Le3/o;Ljava/io/File;Lf3/a;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p3

    if-eqz v0, :cond_c

    .line 1
    invoke-virtual/range {p1 .. p1}, Le3/o;->n()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Le3/o;->e()Le3/f;

    move-result-object v2

    invoke-virtual {v2}, Le3/f;->d()I

    move-result v12

    if-lez v12, :cond_8

    move-object/from16 v2, p2

    .line 4
    invoke-direct {v9, v2}, Lnet/lingala/zip4j/util/c;->l(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v14, 0x0

    move-wide v4, v14

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    if-le v6, v12, :cond_2

    .line 5
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Le3/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3/o;

    .line 6
    invoke-virtual {v0}, Le3/o;->e()Le3/f;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Le3/f;->p(J)V

    .line 7
    invoke-direct {v9, v0, v11, v2}, Lnet/lingala/zip4j/util/c;->t(Le3/o;Ljava/util/ArrayList;Z)V

    .line 8
    new-instance v2, Lc3/b;

    invoke-direct {v2}, Lc3/b;-><init>()V

    .line 9
    invoke-virtual {v2, v0, v13}, Lc3/b;->e(Le3/o;Ljava/io/OutputStream;)V

    .line 10
    invoke-virtual/range {p3 .. p3}, Lf3/a;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v13, :cond_0

    .line 11
    :try_start_2
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 12
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_1
    return-void

    .line 13
    :cond_2
    :try_start_4
    invoke-direct {v9, v0, v6}, Lnet/lingala/zip4j/util/c;->f(Le3/o;I)Ljava/io/RandomAccessFile;

    move-result-object v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 14
    :try_start_5
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Ljava/lang/Long;-><init>(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v3, 0x4

    if-nez v6, :cond_3

    .line 15
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 16
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v8

    invoke-virtual {v8}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 17
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v8

    invoke-virtual {v8}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    new-array v8, v3, [B

    .line 18
    invoke-virtual {v7, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19
    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v9, 0x0

    .line 20
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v8

    move-wide/from16 v16, v4

    int-to-long v3, v8

    const-wide/32 v18, 0x8074b50

    cmp-long v5, v3, v18

    if-nez v5, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/16 v18, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :cond_3
    move-wide/from16 v16, v4

    const/4 v9, 0x0

    :cond_4
    move/from16 v18, v2

    const/4 v3, 0x0

    :goto_2
    if-ne v6, v12, :cond_5

    .line 21
    new-instance v1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Le3/o;->e()Le3/f;

    move-result-object v2

    invoke-virtual {v2}, Le3/f;->f()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    move-object v8, v1

    int-to-long v4, v3

    .line 22
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v13

    move-wide/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-wide/from16 v6, v19

    move-object v9, v8

    const/4 v14, 0x0

    move-object/from16 v8, p3

    :try_start_8
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLf3/a;)V

    .line 23
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v1, v21

    add-long v4, v16, v1

    .line 24
    invoke-virtual/range {p3 .. p3}, Lf3/a;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x3

    .line 25
    invoke-virtual {v10, v0}, Lf3/a;->setResult(I)V

    .line 26
    invoke-virtual {v10, v14}, Lf3/a;->u(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v13, :cond_6

    .line 27
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 28
    :catch_4
    :cond_6
    :try_start_a
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    return-void

    .line 29
    :cond_7
    :try_start_b
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 30
    :try_start_c
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_6
    add-int/lit8 v6, v23, 0x1

    const-wide/16 v14, 0x0

    move-object/from16 v9, p0

    move/from16 v2, v18

    move-object/from16 v1, v24

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v13

    move-object/from16 v7, v24

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v1, v13

    move-object/from16 v7, v24

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v1, v13

    move-object/from16 v7, v24

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v24, v7

    goto :goto_3

    :catch_9
    move-exception v0

    move-object/from16 v24, v7

    goto :goto_4

    :catch_a
    move-exception v0

    move-object/from16 v24, v7

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v7, v1

    :goto_3
    move-object v1, v13

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v7, v1

    :goto_4
    move-object v1, v13

    goto :goto_6

    :catch_c
    move-exception v0

    move-object v7, v1

    :goto_5
    move-object v1, v13

    goto :goto_7

    .line 31
    :cond_8
    :try_start_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "corrupt zip model, archive not a split zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    move-object v7, v1

    goto :goto_8

    :catch_d
    move-exception v0

    move-object v7, v1

    .line 32
    :goto_6
    :try_start_e
    invoke-virtual {v10, v0}, Lf3/a;->b(Ljava/lang/Throwable;)V

    .line 33
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_e
    move-exception v0

    move-object v7, v1

    .line 34
    :goto_7
    invoke-virtual {v10, v0}, Lf3/a;->b(Ljava/lang/Throwable;)V

    .line 35
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    :goto_8
    if-eqz v1, :cond_9

    .line 36
    :try_start_f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_9

    :catch_f
    nop

    :cond_9
    :goto_9
    if-eqz v7, :cond_a

    .line 37
    :try_start_10
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_10

    .line 38
    :catch_10
    :cond_a
    throw v0

    .line 39
    :cond_b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "archive not a split zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v10, v0}, Lf3/a;->b(Ljava/lang/Throwable;)V

    .line 41
    throw v0

    .line 42
    :cond_c
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "one of the input parameters is null, cannot merge split zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v10, v0}, Lf3/a;->b(Ljava/lang/Throwable;)V

    .line 44
    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method private l(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "outFile is null, cannot create outputstream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private n(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "cannot rename modified zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "cannot delete old zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private p(Le3/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le3/f;->n(I)V

    .line 3
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Le3/f;->o(I)V

    .line 4
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Le3/f;->s(I)V

    .line 7
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p1

    invoke-virtual {p1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 9
    invoke-virtual {v0, p1}, Le3/f;->t(I)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null - cannot update end of central directory for split zip model"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 13
    :goto_1
    throw p1
.end method

.method private q(Le3/o;Ljava/util/ArrayList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v0

    invoke-virtual {v0}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 3
    :goto_2
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v6

    invoke-virtual {v6}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le3/h;

    invoke-virtual {v6}, Le3/h;->i()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 4
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v5

    invoke-virtual {v5}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le3/h;

    .line 5
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v6

    invoke-virtual {v6}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le3/h;

    invoke-virtual {v6}, Le3/h;->u()J

    move-result-wide v6

    add-long/2addr v6, v3

    int-to-long v3, p3

    sub-long/2addr v6, v3

    .line 6
    invoke-virtual {v5, v6, v7}, Le3/h;->a0(J)V

    .line 7
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v3

    invoke-virtual {v3}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le3/h;

    invoke-virtual {v3, v1}, Le3/h;->M(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 9
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "corrupt zip model - getCentralDirectory, cannot update split zip model"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 11
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private r(Le3/o;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le3/l;->e(I)V

    const-wide/16 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v0

    invoke-virtual {v0}, Le3/l;->b()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 6
    invoke-virtual {p2, v0, v1}, Le3/l;->f(J)V

    .line 7
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Le3/l;->h(I)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model is null, cannot update split Zip64 end of central directory locator"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private s(Le3/o;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le3/m;->m(I)V

    .line 3
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Le3/m;->n(I)V

    .line 4
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v2

    invoke-virtual {v2}, Le3/f;->i()I

    move-result v2

    int-to-long v2, v2

    .line 6
    invoke-virtual {v0, v2, v3}, Le3/m;->t(J)V

    const-wide/16 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 8
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object p1

    invoke-virtual {p1}, Le3/m;->d()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 10
    invoke-virtual {p2, v0, v1}, Le3/m;->o(J)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model is null, cannot update split Zip64 end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private t(Le3/o;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Le3/o;->x(Z)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/c;->q(Le3/o;Ljava/util/ArrayList;Z)V

    .line 3
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/util/c;->p(Le3/o;)V

    .line 4
    invoke-virtual {p1}, Le3/o;->o()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/c;->r(Le3/o;Ljava/util/ArrayList;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/c;->s(Le3/o;Ljava/util/ArrayList;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model is null, cannot update split zip model"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public h(Le3/o;Lf3/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p2, v0}, Lf3/a;->p(I)V

    .line 2
    invoke-virtual {p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lf3/a;->r(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/util/c;->b(Le3/o;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lf3/a;->v(J)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Lf3/a;->u(I)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model is null, cannot calculate total work for merge op"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Le3/o;Le3/h;Lf3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p3, v0}, Lf3/a;->p(I)V

    .line 2
    invoke-virtual {p2}, Le3/h;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lf3/a;->r(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/util/c;->c(Le3/o;Le3/h;)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lf3/a;->v(J)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p3, p1}, Lf3/a;->u(I)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null, cannot calculate total work"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Le3/o;Le3/h;Lf3/a;)Ljava/util/HashMap;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v10, p3

    const-string v11, "cannot close input stream or output stream when trying to delete a file from zip file"

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 1
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const/4 v15, 0x1

    .line 2
    :try_start_0
    invoke-static/range {p1 .. p2}, Lnet/lingala/zip4j/util/h;->v(Le3/o;Le3/h;)I

    move-result v8

    if-ltz v8, :cond_11

    .line 3
    invoke-virtual/range {p1 .. p1}, Le3/o;->n()Z

    move-result v2

    if-nez v2, :cond_10

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    rem-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_27
    .catchall {:try_start_0 .. :try_end_0} :catchall_12

    .line 6
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_23
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    move-object v7, v2

    .line 7
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_21
    .catchall {:try_start_2 .. :try_end_2} :catchall_f

    if-nez v2, :cond_f

    .line 8
    :try_start_3
    new-instance v6, Lnet/lingala/zip4j/io/g;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v2}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1a
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    .line 9
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_18
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :try_start_5
    const-string v2, "r"

    .line 10
    invoke-direct {v9, v0, v2}, Lnet/lingala/zip4j/util/c;->e(Le3/o;Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v5
    :try_end_5
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_16
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    .line 11
    :try_start_6
    new-instance v2, Lc3/a;

    invoke-direct {v2, v5}, Lc3/a;-><init>(Ljava/io/RandomAccessFile;)V

    .line 12
    invoke-virtual {v2, v1}, Lc3/a;->o(Le3/h;)Le3/i;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 13
    invoke-virtual/range {p2 .. p2}, Le3/h;->u()J

    move-result-wide v2

    .line 14
    invoke-virtual/range {p2 .. p2}, Le3/h;->A()Le3/n;

    move-result-object v16
    :try_end_6
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    const-wide/16 v17, -0x1

    if-eqz v16, :cond_0

    .line 15
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Le3/h;->A()Le3/n;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Le3/n;->d()J

    move-result-wide v19

    cmp-long v16, v19, v17

    if-eqz v16, :cond_0

    .line 16
    invoke-virtual/range {p2 .. p2}, Le3/h;->A()Le3/n;

    move-result-object v1

    invoke-virtual {v1}, Le3/n;->d()J

    move-result-wide v2
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v14, v5

    move-object v2, v6

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v5

    move-object v14, v6

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v5

    move-object v14, v6

    goto/16 :goto_16

    :cond_0
    :goto_1
    move-wide/from16 v19, v2

    .line 17
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Le3/o;->e()Le3/f;

    move-result-object v1

    invoke-virtual {v1}, Le3/f;->f()J

    move-result-wide v1

    .line 18
    invoke-virtual/range {p1 .. p1}, Le3/o;->o()Z

    move-result v3
    :try_end_8
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_14
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-eqz v3, :cond_1

    .line 19
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Le3/o;->k()Le3/m;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 20
    invoke-virtual/range {p1 .. p1}, Le3/o;->k()Le3/m;

    move-result-object v1

    invoke-virtual {v1}, Le3/m;->d()J

    move-result-wide v1
    :try_end_9
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_1
    move-wide/from16 v21, v1

    .line 21
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v15

    const-wide/16 v23, 0x1

    if-ne v8, v2, :cond_2

    sub-long v2, v21, v23

    :goto_2
    move-wide/from16 v25, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v8, 0x1

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/h;
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_14
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz v2, :cond_3

    .line 24
    :try_start_b
    invoke-virtual {v2}, Le3/h;->u()J

    move-result-wide v25

    sub-long v25, v25, v23

    .line 25
    invoke-virtual {v2}, Le3/h;->A()Le3/n;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 26
    invoke-virtual {v2}, Le3/h;->A()Le3/n;

    move-result-object v3

    invoke-virtual {v3}, Le3/n;->d()J

    move-result-wide v27

    cmp-long v3, v27, v17

    if-eqz v3, :cond_4

    .line 27
    invoke-virtual {v2}, Le3/h;->A()Le3/n;

    move-result-object v2

    invoke-virtual {v2}, Le3/n;->d()J

    move-result-wide v2
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-long v2, v2, v23

    goto :goto_2

    :cond_3
    move-wide/from16 v25, v17

    :cond_4
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v16, v19, v2

    if-ltz v16, :cond_d

    cmp-long v16, v25, v2

    if-ltz v16, :cond_d

    if-nez v8, :cond_6

    .line 28
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_c
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-le v1, v15, :cond_5

    add-long v27, v25, v23

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v29, v4

    move-object/from16 v16, v5

    move-wide/from16 v4, v27

    move-object/from16 p2, v6

    move-object v14, v7

    move-wide/from16 v6, v21

    move v13, v8

    move-object/from16 v8, p3

    .line 29
    :try_start_d
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLf3/a;)V
    :try_end_d
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_7

    :cond_5
    move-object/from16 v29, v4

    move-object/from16 v16, v5

    move-object/from16 p2, v6

    move-object v14, v7

    move v13, v8

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v16, v5

    move-object/from16 p2, v6

    move-object v14, v7

    :goto_4
    move-object/from16 v2, p2

    move-object v4, v14

    move-object/from16 v14, v16

    move-object/from16 v1, v29

    goto/16 :goto_1e

    :catch_2
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v16, v5

    move-object/from16 p2, v6

    move-object v14, v7

    :goto_5
    move-object v4, v14

    move-object/from16 v1, v29

    const/4 v13, 0x0

    move-object/from16 v14, p2

    goto/16 :goto_21

    :catch_3
    move-exception v0

    move-object/from16 v29, v4

    move-object/from16 v16, v5

    move-object/from16 p2, v6

    move-object v14, v7

    :goto_6
    move-object v4, v14

    move-object/from16 v1, v29

    const/4 v13, 0x0

    move-object/from16 v14, p2

    goto/16 :goto_24

    :cond_6
    move-object/from16 v29, v4

    move-object/from16 v16, v5

    move-object/from16 p2, v6

    move-object v14, v7

    move v13, v8

    .line 30
    :try_start_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_e .. :try_end_e} :catch_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    sub-int/2addr v1, v15

    if-ne v13, v1, :cond_7

    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v6, v19

    move-object/from16 v8, p3

    .line 31
    :try_start_f
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLf3/a;)V
    :try_end_f
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_6

    :cond_7
    const-wide/16 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v6, v19

    move-object/from16 v8, p3

    .line 32
    :try_start_10
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLf3/a;)V

    add-long v4, v25, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v6, v21

    move-object/from16 v8, p3

    .line 33
    invoke-direct/range {v1 .. v8}, Lnet/lingala/zip4j/util/c;->d(Ljava/io/RandomAccessFile;Ljava/io/OutputStream;JJLf3/a;)V

    .line 34
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lf3/a;->m()Z

    move-result v1
    :try_end_10
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v1, :cond_9

    const/4 v0, 0x3

    .line 35
    :try_start_11
    invoke-virtual {v10, v0}, Lf3/a;->setResult(I)V
    :try_end_11
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    const/4 v3, 0x0

    .line 36
    :try_start_12
    invoke-virtual {v10, v3}, Lf3/a;->u(I)V
    :try_end_12
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v16, :cond_8

    .line 37
    :try_start_13
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    .line 38
    :cond_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v4, 0x0

    return-object v4

    .line 41
    :catch_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_4

    :catch_7
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_5

    :catch_8
    move-exception v0

    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    .line 42
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Le3/o;->e()Le3/f;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/io/g;->d()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Le3/f;->p(J)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Le3/o;->e()Le3/f;

    move-result-object v1

    .line 44
    invoke-virtual/range {p1 .. p1}, Le3/o;->e()Le3/f;

    move-result-object v2

    invoke-virtual {v2}, Le3/f;->i()I

    move-result v2

    sub-int/2addr v2, v15

    .line 45
    invoke-virtual {v1, v2}, Le3/f;->s(I)V

    .line 46
    invoke-virtual/range {p1 .. p1}, Le3/o;->e()Le3/f;

    move-result-object v1

    .line 47
    invoke-virtual/range {p1 .. p1}, Le3/o;->e()Le3/f;

    move-result-object v2

    invoke-virtual {v2}, Le3/f;->j()I

    move-result v2

    sub-int/2addr v2, v15

    .line 48
    invoke-virtual {v1, v2}, Le3/f;->t(I)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v8, v13

    .line 50
    :goto_8
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v8, v1, :cond_b

    .line 51
    new-instance v1, Lc3/b;

    invoke-direct {v1}, Lc3/b;-><init>()V
    :try_end_14
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v2, p2

    .line 52
    :try_start_15
    invoke-virtual {v1, v0, v2}, Lc3/b;->d(Le3/o;Ljava/io/OutputStream;)V
    :try_end_15
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    const-string v1, "offsetCentralDir"

    .line 53
    invoke-virtual/range {p1 .. p1}, Le3/o;->e()Le3/f;

    move-result-object v0

    invoke-virtual {v0}, Le3/f;->f()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v12, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-eqz v16, :cond_a

    .line 55
    :try_start_17
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    .line 56
    :cond_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    move-object/from16 v1, v29

    .line 57
    invoke-direct {v9, v1, v14}, Lnet/lingala/zip4j/util/c;->n(Ljava/io/File;Ljava/lang/String;)V

    return-object v12

    .line 58
    :catch_9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    move-object/from16 v1, v29

    move-object v4, v14

    move-object/from16 v14, v16

    const/4 v13, 0x1

    goto/16 :goto_25

    :catch_a
    move-exception v0

    move-object/from16 v1, v29

    move-object v4, v14

    const/4 v13, 0x1

    goto/16 :goto_11

    :catch_b
    move-exception v0

    move-object/from16 v1, v29

    move-object v4, v14

    const/4 v13, 0x1

    goto/16 :goto_13

    :catchall_5
    move-exception v0

    goto/16 :goto_9

    :catch_c
    move-exception v0

    goto/16 :goto_a

    :catch_d
    move-exception v0

    goto/16 :goto_b

    :cond_b
    move-object/from16 v2, p2

    move-object/from16 v1, v29

    .line 59
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v4

    invoke-virtual {v4}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le3/h;

    invoke-virtual {v4}, Le3/h;->u()J

    move-result-wide v4

    .line 60
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v6

    invoke-virtual {v6}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le3/h;

    invoke-virtual {v6}, Le3/h;->A()Le3/n;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 61
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v6

    invoke-virtual {v6}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le3/h;

    invoke-virtual {v6}, Le3/h;->A()Le3/n;

    move-result-object v6

    invoke-virtual {v6}, Le3/n;->d()J

    move-result-wide v6

    cmp-long v13, v6, v17

    if-eqz v13, :cond_c

    .line 62
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v4

    invoke-virtual {v4}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le3/h;

    invoke-virtual {v4}, Le3/h;->A()Le3/n;

    move-result-object v4

    invoke-virtual {v4}, Le3/n;->d()J

    move-result-wide v4

    .line 63
    :cond_c
    invoke-virtual/range {p1 .. p1}, Le3/o;->b()Le3/c;

    move-result-object v6

    invoke-virtual {v6}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le3/h;

    sub-long v21, v25, v19

    sub-long v4, v4, v21

    sub-long v4, v4, v23

    invoke-virtual {v6, v4, v5}, Le3/h;->a0(J)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v29, v1

    move-object/from16 p2, v2

    goto/16 :goto_8

    :catchall_6
    move-exception v0

    move-object/from16 v2, p2

    :goto_9
    move-object/from16 v1, v29

    goto :goto_d

    :catch_e
    move-exception v0

    move-object/from16 v2, p2

    :goto_a
    move-object/from16 v1, v29

    goto/16 :goto_10

    :catch_f
    move-exception v0

    move-object/from16 v2, p2

    :goto_b
    move-object/from16 v1, v29

    goto/16 :goto_12

    :catchall_7
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v1, v29

    goto :goto_c

    :catch_10
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v1, v29

    goto :goto_e

    :catch_11
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v1, v29

    goto :goto_f

    :cond_d
    move-object v1, v4

    move-object/from16 v16, v5

    move-object v2, v6

    move-object v14, v7

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "invalid offset for start and end of local file, cannot remove file"

    invoke-direct {v0, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v1, v4

    move-object/from16 v16, v5

    move-object v2, v6

    move-object v14, v7

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v4, "invalid local file header, cannot remove file from archive"

    invoke-direct {v0, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_18 .. :try_end_18} :catch_13
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_d

    :catch_12
    move-exception v0

    goto/16 :goto_10

    :catch_13
    move-exception v0

    goto/16 :goto_12

    :catchall_9
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v5

    move-object v2, v6

    move-object v14, v7

    :goto_c
    const/4 v3, 0x0

    :goto_d
    move-object v4, v14

    move-object/from16 v14, v16

    goto/16 :goto_1e

    :catch_14
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v5

    move-object v2, v6

    move-object v14, v7

    :goto_e
    const/4 v3, 0x0

    goto :goto_10

    :catch_15
    move-exception v0

    move-object v1, v4

    move-object/from16 v16, v5

    move-object v2, v6

    move-object v14, v7

    :goto_f
    const/4 v3, 0x0

    goto :goto_12

    :catchall_a
    move-exception v0

    move-object v1, v4

    move-object v2, v6

    move-object v14, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    move-object/from16 v30, v14

    move-object v14, v4

    move-object/from16 v4, v30

    goto/16 :goto_25

    :catch_16
    move-exception v0

    move-object v1, v4

    move-object v2, v6

    move-object v14, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v16, v4

    goto :goto_10

    :catch_17
    move-exception v0

    move-object v1, v4

    move-object v2, v6

    move-object v14, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v16, v4

    goto :goto_12

    :catchall_b
    move-exception v0

    move-object v2, v6

    move-object v14, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v4

    const/4 v13, 0x0

    move-object v4, v14

    move-object v14, v1

    goto/16 :goto_25

    :catch_18
    move-exception v0

    move-object v2, v6

    move-object v14, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v4

    move-object/from16 v16, v1

    :goto_10
    move-object v4, v14

    const/4 v13, 0x0

    :goto_11
    move-object v14, v2

    goto/16 :goto_21

    :catch_19
    move-exception v0

    move-object v2, v6

    move-object v14, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v4

    move-object/from16 v16, v1

    :goto_12
    move-object v4, v14

    const/4 v13, 0x0

    :goto_13
    move-object v14, v2

    goto/16 :goto_24

    :catchall_c
    move-exception v0

    move-object v14, v7

    const/4 v3, 0x0

    goto/16 :goto_17

    :catch_1a
    move-exception v0

    move-object v14, v7

    const/4 v3, 0x0

    goto/16 :goto_19

    :catch_1b
    move-exception v0

    move-object v14, v7

    const/4 v3, 0x0

    goto/16 :goto_1b

    :catch_1c
    move-exception v0

    move-object v14, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 66
    :try_start_19
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    move-object v14, v7

    move v13, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 68
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    rem-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_19
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_19 .. :try_end_19} :catch_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1f
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    .line 69
    :try_start_1a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1a .. :try_end_1a} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1d
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    move v8, v13

    goto/16 :goto_0

    :catchall_d
    move-exception v0

    move-object v1, v4

    move-object v2, v1

    move-object v14, v2

    :goto_14
    move-object v4, v7

    goto/16 :goto_1e

    :catch_1d
    move-exception v0

    move-object v1, v4

    move-object v14, v1

    move-object/from16 v16, v14

    :goto_15
    move-object v4, v7

    goto/16 :goto_20

    :catch_1e
    move-exception v0

    move-object v1, v4

    move-object v14, v1

    move-object/from16 v16, v14

    :goto_16
    move-object v4, v7

    goto/16 :goto_23

    :catchall_e
    move-exception v0

    goto :goto_18

    :catch_1f
    move-exception v0

    goto :goto_1a

    :catch_20
    move-exception v0

    goto :goto_1c

    :catchall_f
    move-exception v0

    move-object v14, v7

    :goto_17
    const/4 v4, 0x0

    :goto_18
    move-object v1, v4

    move-object v2, v1

    const/4 v13, 0x0

    move-object v4, v14

    move-object v14, v2

    goto/16 :goto_25

    :catch_21
    move-exception v0

    move-object v14, v7

    :goto_19
    const/4 v4, 0x0

    :goto_1a
    move-object v1, v4

    move-object/from16 v16, v1

    const/4 v13, 0x0

    move-object v4, v14

    move-object/from16 v14, v16

    goto/16 :goto_21

    :catch_22
    move-exception v0

    move-object v14, v7

    :goto_1b
    const/4 v4, 0x0

    :goto_1c
    move-object v1, v4

    move-object/from16 v16, v1

    const/4 v13, 0x0

    move-object v4, v14

    move-object/from16 v14, v16

    goto/16 :goto_24

    :catchall_10
    move-exception v0

    const/4 v4, 0x0

    move-object v1, v4

    move-object v14, v1

    const/4 v13, 0x0

    move-object v4, v2

    move-object v2, v14

    goto/16 :goto_25

    :catch_23
    move-exception v0

    const/4 v4, 0x0

    move-object v1, v4

    move-object v14, v1

    move-object/from16 v16, v14

    const/4 v13, 0x0

    move-object v4, v2

    goto :goto_21

    :catch_24
    move-exception v0

    const/4 v4, 0x0

    move-object v1, v4

    move-object v14, v1

    move-object/from16 v16, v14

    const/4 v13, 0x0

    move-object v4, v2

    goto :goto_24

    :cond_10
    const/4 v4, 0x0

    .line 70
    :try_start_1b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v4, 0x0

    .line 71
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header not found in zip model, cannot remove file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1b .. :try_end_1b} :catch_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_25
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    :catchall_11
    move-exception v0

    goto :goto_1d

    :catch_25
    move-exception v0

    goto :goto_1f

    :catch_26
    move-exception v0

    goto :goto_22

    :catchall_12
    move-exception v0

    const/4 v4, 0x0

    :goto_1d
    move-object v1, v4

    move-object v2, v1

    move-object v14, v2

    :goto_1e
    const/4 v13, 0x0

    goto :goto_25

    :catch_27
    move-exception v0

    const/4 v4, 0x0

    :goto_1f
    move-object v1, v4

    move-object v14, v1

    move-object/from16 v16, v14

    :goto_20
    const/4 v13, 0x0

    .line 72
    :goto_21
    :try_start_1c
    invoke-virtual {v10, v0}, Lf3/a;->b(Ljava/lang/Throwable;)V

    .line 73
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_28
    move-exception v0

    const/4 v4, 0x0

    :goto_22
    move-object v1, v4

    move-object v14, v1

    move-object/from16 v16, v14

    :goto_23
    const/4 v13, 0x0

    .line 74
    :goto_24
    invoke-virtual {v10, v0}, Lf3/a;->b(Ljava/lang/Throwable;)V

    .line 75
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    :catchall_13
    move-exception v0

    move-object v2, v14

    move-object/from16 v14, v16

    :goto_25
    if-eqz v14, :cond_12

    .line 76
    :try_start_1d
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    :cond_12
    if-eqz v2, :cond_13

    .line 77
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_29

    goto :goto_26

    .line 78
    :catch_29
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v11}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_26
    if-eqz v13, :cond_14

    .line 79
    invoke-direct {v9, v1, v4}, Lnet/lingala/zip4j/util/c;->n(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_27

    .line 80
    :cond_14
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 82
    :goto_27
    throw v0

    .line 83
    :cond_15
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "input parameters is null in maintain zip file, cannot remove file from archive"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :goto_28
    throw v0

    :goto_29
    goto :goto_28
.end method

.method public k(Le3/o;Ljava/io/File;Lf3/a;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    new-instance p4, Lnet/lingala/zip4j/util/b;

    const-string v2, "Zip4j"

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/util/b;-><init>(Lnet/lingala/zip4j/util/c;Ljava/lang/String;Le3/o;Ljava/io/File;Lf3/a;)V

    .line 2
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/c;->g(Le3/o;Ljava/io/File;Lf3/a;)V

    :goto_0
    return-void
.end method

.method public m(Le3/o;Le3/h;Lf3/a;Z)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    new-instance p4, Lnet/lingala/zip4j/util/a;

    const-string v2, "Zip4j"

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/util/a;-><init>(Lnet/lingala/zip4j/util/c;Ljava/lang/String;Le3/o;Le3/h;Lf3/a;)V

    .line 2
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/lingala/zip4j/util/c;->j(Le3/o;Le3/h;Lf3/a;)Ljava/util/HashMap;

    move-result-object p1

    .line 4
    invoke-virtual {p3}, Lf3/a;->c()V

    return-object p1
.end method

.method public o(Le3/o;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p2, :cond_5

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "windows-1254"

    .line 3
    invoke-static {v2}, Lnet/lingala/zip4j/util/h;->B(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    move v1, p2

    move-object p2, v0

    move-object v0, v4

    goto :goto_0

    .line 7
    :catch_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    :goto_0
    const v2, 0xffff

    if-gt v1, v2, :cond_3

    .line 9
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v2

    invoke-virtual {v2, p2}, Le3/f;->k(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p2

    invoke-virtual {p2, v0}, Le3/f;->l([B)V

    .line 11
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p2

    invoke-virtual {p2, v1}, Le3/f;->m(I)V

    const/4 p2, 0x0

    .line 12
    :try_start_1
    new-instance v0, Lc3/b;

    invoke-direct {v0}, Lc3/b;-><init>()V

    .line 13
    new-instance v1, Lnet/lingala/zip4j/io/g;

    invoke-virtual {p1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-virtual {p1}, Le3/o;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object p2

    invoke-virtual {p2}, Le3/m;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/io/g;->k(J)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p2

    invoke-virtual {p2}, Le3/f;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/io/g;->k(J)V

    .line 17
    :goto_1
    invoke-virtual {v0, p1, v1}, Lc3/b;->e(Le3/o;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/g;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p2, v1

    goto :goto_2

    :catch_3
    move-exception p1

    move-object p2, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    .line 19
    :goto_2
    :try_start_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_5
    move-exception p1

    .line 20
    :goto_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz p2, :cond_2

    .line 21
    :try_start_5
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/g;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 22
    :catch_6
    :cond_2
    throw p1

    .line 23
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "comment length exceeds maximum length"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zipModel is null, cannot update Zip file with comment"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "comment is null, cannot update Zip file with comment"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
