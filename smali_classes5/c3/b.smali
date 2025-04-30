.class public Lc3/b;
.super Ljava/lang/Object;
.source "HeaderWriter.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    .line 2
    iput v0, p0, Lc3/b;->a:I

    return-void
.end method

.method private a(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input byte array list is null, cannot conver to byte array"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private b([BLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    aget-byte v1, p1, v0

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null, cannot copy byte array to array list"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private c(Ljava/util/ArrayList;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/h;

    .line 3
    invoke-virtual {v2}, Le3/h;->i()I

    move-result v2

    if-ne v2, p2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private f(Le3/o;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p2, Lnet/lingala/zip4j/io/g;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v0

    .line 3
    move-object v1, p2

    check-cast v1, Lnet/lingala/zip4j/io/g;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/g;->d()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, v1, v2}, Le3/f;->p(J)V

    .line 5
    check-cast p2, Lnet/lingala/zip4j/io/g;

    invoke-virtual {p2}, Lnet/lingala/zip4j/io/g;->b()I

    move-result v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Le3/o;->o()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object p2

    if-nez p2, :cond_1

    .line 8
    new-instance p2, Le3/m;

    invoke-direct {p2}, Le3/m;-><init>()V

    invoke-virtual {p1, p2}, Le3/o;->B(Le3/m;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object p2

    if-nez p2, :cond_2

    .line 10
    new-instance p2, Le3/l;

    invoke-direct {p2}, Le3/l;-><init>()V

    invoke-virtual {p1, p2}, Le3/o;->A(Le3/l;)V

    .line 11
    :cond_2
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object p2

    invoke-virtual {p2, v0}, Le3/l;->e(I)V

    .line 12
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object p2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Le3/l;->h(I)V

    .line 13
    :cond_3
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p2

    invoke-virtual {p2, v0}, Le3/f;->n(I)V

    .line 14
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Le3/f;->o(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private g(Lnet/lingala/zip4j/io/g;Le3/i;JJ[BZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    invoke-virtual {p2}, Le3/i;->w()Z

    move-result p8

    if-eqz p8, :cond_2

    .line 2
    array-length p8, p7

    const/16 v0, 0x8

    if-ne p8, v0, :cond_1

    add-long/2addr p3, p5

    const-wide/16 v0, 0x4

    add-long/2addr p3, v0

    add-long/2addr p3, v0

    const-wide/16 v0, 0x2

    add-long/2addr p3, v0

    add-long/2addr p3, v0

    .line 3
    invoke-virtual {p2}, Le3/i;->k()I

    move-result p2

    int-to-long v2, p2

    add-long/2addr p3, v2

    add-long/2addr p3, v0

    add-long/2addr p3, v0

    const-wide/16 v0, 0x8

    add-long/2addr p3, v0

    const-wide/16 v2, 0x16

    cmp-long p2, p5, v2

    if-nez p2, :cond_0

    add-long/2addr p3, v0

    .line 4
    :cond_0
    invoke-virtual {p1, p3, p4}, Lnet/lingala/zip4j/io/g;->k(J)V

    .line 5
    invoke-virtual {p1, p7}, Lnet/lingala/zip4j/io/g;->write([B)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "attempting to write a non 8-byte compressed size block for a zip64 file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    add-long/2addr p3, p5

    .line 7
    invoke-virtual {p1, p3, p4}, Lnet/lingala/zip4j/io/g;->k(J)V

    .line 8
    invoke-virtual {p1, p7}, Lnet/lingala/zip4j/io/g;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid output stream, cannot update compressed size for local file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(Le3/o;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v0

    invoke-virtual {v0}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v0

    invoke-virtual {v0}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v2

    invoke-virtual {v2}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v2

    invoke-virtual {v2}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/h;

    .line 6
    invoke-direct {p0, p1, v2, p2, p3}, Lc3/b;->l(Le3/o;Le3/h;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    .line 7
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot write central directory"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private j(Le3/o;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    :try_start_0
    new-array p2, p2, [B

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 1
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v3

    invoke-virtual {v3}, Le3/f;->g()J

    move-result-wide v3

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v4}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 2
    invoke-direct {p0, v1, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 3
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v4

    invoke-virtual {v4}, Le3/f;->d()I

    move-result v4

    int-to-short v4, v4

    invoke-static {p2, v3, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 4
    invoke-direct {p0, p2, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 5
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v4

    invoke-virtual {v4}, Le3/f;->e()I

    move-result v4

    int-to-short v4, v4

    invoke-static {p2, v3, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 6
    invoke-direct {p0, p2, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 7
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v4

    invoke-virtual {v4}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v4

    invoke-virtual {v4}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 10
    invoke-virtual {p1}, Le3/o;->n()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v5

    invoke-virtual {v5}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v5

    .line 12
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v6

    invoke-virtual {v6}, Le3/f;->d()I

    move-result v6

    .line 13
    invoke-direct {p0, v5, v6}, Lc3/b;->c(Ljava/util/ArrayList;I)I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    int-to-short v5, v5

    .line 14
    invoke-static {p2, v3, v5}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 15
    invoke-direct {p0, p2, p6}, Lc3/b;->b([BLjava/util/List;)V

    int-to-short v4, v4

    .line 16
    invoke-static {p2, v3, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 17
    invoke-direct {p0, p2, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 18
    invoke-static {v1, v3, p3}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 19
    invoke-direct {p0, v1, p6}, Lc3/b;->b([BLjava/util/List;)V

    const-wide v4, 0xffffffffL

    cmp-long p3, p4, v4

    if-lez p3, :cond_1

    .line 20
    invoke-static {v2, v3, v4, v5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 21
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-direct {p0, v1, p6}, Lc3/b;->b([BLjava/util/List;)V

    goto :goto_1

    .line 23
    :cond_1
    invoke-static {v2, v3, p4, p5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 24
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-direct {p0, v1, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 26
    :goto_1
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p3

    invoke-virtual {p3}, Le3/f;->a()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 27
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p3

    invoke-virtual {p3}, Le3/f;->c()I

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    int-to-short p4, p3

    .line 28
    invoke-static {p2, v3, p4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 29
    invoke-direct {p0, p2, p6}, Lc3/b;->b([BLjava/util/List;)V

    if-lez p3, :cond_3

    .line 30
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p1

    invoke-virtual {p1}, Le3/f;->b()[B

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lc3/b;->b([BLjava/util/List;)V

    :cond_3
    return-void

    .line 31
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 32
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 33
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model or output stream is null, cannot write end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private l(Le3/o;Le3/h;Ljava/io/OutputStream;Ljava/util/List;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [B

    const/4 v4, 0x4

    new-array v5, v4, [B

    const/16 v6, 0x8

    new-array v7, v6, [B

    new-array v8, v2, [B

    new-array v9, v4, [B

    .line 1
    invoke-virtual/range {p2 .. p2}, Le3/h;->w()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v11, v10}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 2
    invoke-direct {v1, v5, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Le3/h;->y()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v3, v11, v10}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 4
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 5
    invoke-virtual/range {p2 .. p2}, Le3/h;->z()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v3, v11, v10}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 6
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Le3/h;->r()[B

    move-result-object v10

    invoke-direct {v1, v10, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 8
    invoke-virtual/range {p2 .. p2}, Le3/h;->f()I

    move-result v10

    int-to-short v10, v10

    invoke-static {v3, v11, v10}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 9
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 10
    invoke-virtual/range {p2 .. p2}, Le3/h;->t()I

    move-result v10

    .line 11
    invoke-static {v5, v11, v10}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 12
    invoke-direct {v1, v5, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 13
    invoke-virtual/range {p2 .. p2}, Le3/h;->g()J

    move-result-wide v12

    long-to-int v10, v12

    invoke-static {v5, v11, v10}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 14
    invoke-direct {v1, v5, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Le3/h;->e()J

    move-result-wide v12

    const/4 v10, 0x1

    const-wide v14, 0xffffffffL

    cmp-long v16, v12, v14

    if-gez v16, :cond_1

    .line 16
    invoke-virtual/range {p2 .. p2}, Le3/h;->x()J

    move-result-wide v12

    const-wide/16 v16, 0x32

    add-long v12, v12, v16

    cmp-long v16, v12, v14

    if-ltz v16, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual/range {p2 .. p2}, Le3/h;->e()J

    move-result-wide v12

    invoke-static {v7, v11, v12, v13}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 18
    invoke-static {v7, v11, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    invoke-direct {v1, v5, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 20
    invoke-virtual/range {p2 .. p2}, Le3/h;->x()J

    move-result-wide v12

    invoke-static {v7, v11, v12, v13}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 21
    invoke-static {v7, v11, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-direct {v1, v5, v0}, Lc3/b;->b([BLjava/util/List;)V

    const/4 v5, 0x0

    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    invoke-static {v7, v11, v14, v15}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 24
    invoke-static {v7, v11, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-direct {v1, v5, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 26
    invoke-direct {v1, v5, v0}, Lc3/b;->b([BLjava/util/List;)V

    const/4 v5, 0x1

    .line 27
    :goto_1
    invoke-virtual/range {p2 .. p2}, Le3/h;->q()I

    move-result v12

    int-to-short v12, v12

    invoke-static {v3, v11, v12}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 28
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    new-array v12, v4, [B

    .line 29
    invoke-virtual/range {p2 .. p2}, Le3/h;->u()J

    move-result-wide v16

    cmp-long v13, v16, v14

    if-lez v13, :cond_2

    .line 30
    invoke-static {v7, v11, v14, v15}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 31
    invoke-static {v7, v11, v12, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x1

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual/range {p2 .. p2}, Le3/h;->u()J

    move-result-wide v13

    invoke-static {v7, v11, v13, v14}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 33
    invoke-static {v7, v11, v12, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    :goto_2
    if-nez v5, :cond_4

    if-eqz v13, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    const/16 v4, 0x14

    :cond_5
    if-eqz v13, :cond_6

    add-int/lit8 v4, v4, 0x8

    .line 34
    :cond_6
    :goto_4
    invoke-virtual/range {p2 .. p2}, Le3/h;->d()Le3/a;

    move-result-object v14

    if-eqz v14, :cond_7

    add-int/lit8 v4, v4, 0xb

    :cond_7
    int-to-short v4, v4

    .line 35
    invoke-static {v3, v11, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 36
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 37
    invoke-direct {v1, v8, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 38
    invoke-virtual/range {p2 .. p2}, Le3/h;->i()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v3, v11, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 39
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 40
    invoke-direct {v1, v8, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 41
    invoke-virtual/range {p2 .. p2}, Le3/h;->k()[B

    move-result-object v4

    if-eqz v4, :cond_8

    .line 42
    invoke-virtual/range {p2 .. p2}, Le3/h;->k()[B

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lc3/b;->b([BLjava/util/List;)V

    goto :goto_5

    .line 43
    :cond_8
    invoke-direct {v1, v9, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 44
    :goto_5
    invoke-direct {v1, v12, v0}, Lc3/b;->b([BLjava/util/List;)V

    const/16 v4, 0x2e

    .line 45
    invoke-virtual/range {p1 .. p1}, Le3/o;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 46
    invoke-virtual/range {p2 .. p2}, Le3/h;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Le3/o;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 47
    invoke-direct {v1, v8, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 48
    array-length v8, v8

    goto :goto_6

    .line 49
    :cond_9
    invoke-virtual/range {p2 .. p2}, Le3/h;->p()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/lingala/zip4j/util/h;->g(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v1, v8, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Le3/h;->p()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnet/lingala/zip4j/util/h;->n(Ljava/lang/String;)I

    move-result v8

    :goto_6
    add-int/2addr v4, v8

    if-nez v5, :cond_a

    if-eqz v13, :cond_e

    :cond_a
    move-object/from16 v8, p1

    .line 51
    invoke-virtual {v8, v10}, Le3/o;->C(Z)V

    .line 52
    invoke-static {v3, v11, v10}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 53
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    add-int/lit8 v4, v4, 0x2

    if-eqz v5, :cond_b

    const/16 v8, 0x10

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    :goto_7
    if-eqz v13, :cond_c

    add-int/lit8 v8, v8, 0x8

    :cond_c
    int-to-short v8, v8

    .line 54
    invoke-static {v3, v11, v8}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 55
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    add-int/2addr v4, v2

    if-eqz v5, :cond_d

    .line 56
    invoke-virtual/range {p2 .. p2}, Le3/h;->x()J

    move-result-wide v8

    invoke-static {v7, v11, v8, v9}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 57
    invoke-direct {v1, v7, v0}, Lc3/b;->b([BLjava/util/List;)V

    add-int/lit8 v4, v4, 0x8

    .line 58
    invoke-virtual/range {p2 .. p2}, Le3/h;->e()J

    move-result-wide v8

    invoke-static {v7, v11, v8, v9}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 59
    invoke-direct {v1, v7, v0}, Lc3/b;->b([BLjava/util/List;)V

    add-int/2addr v4, v6

    :cond_d
    if-eqz v13, :cond_e

    .line 60
    invoke-virtual/range {p2 .. p2}, Le3/h;->u()J

    move-result-wide v5

    invoke-static {v7, v11, v5, v6}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 61
    invoke-direct {v1, v7, v0}, Lc3/b;->b([BLjava/util/List;)V

    add-int/lit8 v4, v4, 0x8

    .line 62
    :cond_e
    invoke-virtual/range {p2 .. p2}, Le3/h;->d()Le3/a;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 63
    invoke-virtual/range {p2 .. p2}, Le3/h;->d()Le3/a;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Le3/a;->d()J

    move-result-wide v5

    long-to-int v6, v5

    int-to-short v5, v6

    invoke-static {v3, v11, v5}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 65
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 66
    invoke-virtual {v2}, Le3/a;->c()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v3, v11, v5}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 67
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 68
    invoke-virtual {v2}, Le3/a;->f()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v3, v11, v5}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 69
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 70
    invoke-virtual {v2}, Le3/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v1, v5, v0}, Lc3/b;->b([BLjava/util/List;)V

    new-array v5, v10, [B

    .line 71
    invoke-virtual {v2}, Le3/a;->a()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    .line 72
    invoke-direct {v1, v5, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 73
    invoke-virtual {v2}, Le3/a;->b()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v3, v11, v2}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 74
    invoke-direct {v1, v3, v0}, Lc3/b;->b([BLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0xb

    :cond_f
    return v4

    :catch_0
    move-exception v0

    .line 75
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 76
    :cond_10
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameters is null, cannot write local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n(Le3/o;Ljava/io/OutputStream;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    :try_start_0
    new-array p2, p2, [B

    const/16 v0, 0x8

    new-array v0, v0, [B

    const v1, 0x7064b50

    const/4 v2, 0x0

    .line 1
    invoke-static {p2, v2, v1}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 2
    invoke-direct {p0, p2, p3}, Lc3/b;->b([BLjava/util/List;)V

    .line 3
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v1

    invoke-virtual {v1}, Le3/l;->a()I

    move-result v1

    invoke-static {p2, v2, v1}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 4
    invoke-direct {p0, p2, p3}, Lc3/b;->b([BLjava/util/List;)V

    .line 5
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v1

    invoke-virtual {v1}, Le3/l;->b()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 6
    invoke-direct {p0, v0, p3}, Lc3/b;->b([BLjava/util/List;)V

    .line 7
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object p1

    invoke-virtual {p1}, Le3/l;->d()I

    move-result p1

    invoke-static {p2, v2, p1}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 8
    invoke-direct {p0, p2, p3}, Lc3/b;->b([BLjava/util/List;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 10
    throw p1

    .line 11
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model or output stream is null, cannot write zip64 end of central directory locator"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private o(Le3/o;Ljava/io/OutputStream;IJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    :try_start_0
    new-array v0, p2, [B

    new-array p2, p2, [B

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/16 v2, 0x8

    new-array v2, v2, [B

    const v3, 0x6064b50

    const/4 v4, 0x0

    .line 1
    invoke-static {v1, v4, v3}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 2
    invoke-direct {p0, v1, p6}, Lc3/b;->b([BLjava/util/List;)V

    const-wide/16 v5, 0x2c

    .line 3
    invoke-static {v2, v4, v5, v6}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 4
    invoke-direct {p0, v2, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 5
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v3

    invoke-virtual {v3}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v3

    invoke-virtual {v3}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 8
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p2

    invoke-virtual {p2}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le3/h;

    invoke-virtual {p2}, Le3/h;->y()I

    move-result p2

    int-to-short p2, p2

    .line 9
    invoke-static {v0, v4, p2}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 10
    invoke-direct {p0, v0, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 11
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p2

    invoke-virtual {p2}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le3/h;

    invoke-virtual {p2}, Le3/h;->z()I

    move-result p2

    int-to-short p2, p2

    .line 12
    invoke-static {v0, v4, p2}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 13
    invoke-direct {p0, v0, p6}, Lc3/b;->b([BLjava/util/List;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p2, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 15
    invoke-direct {p0, p2, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 16
    :goto_0
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p2

    invoke-virtual {p2}, Le3/f;->d()I

    move-result p2

    invoke-static {v1, v4, p2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 17
    invoke-direct {p0, v1, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 18
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p2

    invoke-virtual {p2}, Le3/f;->e()I

    move-result p2

    invoke-static {v1, v4, p2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 19
    invoke-direct {p0, v1, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 20
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 21
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p2

    invoke-virtual {p2}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 22
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p2

    invoke-virtual {p2}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 23
    invoke-virtual {p1}, Le3/o;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object v0

    invoke-virtual {v0}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p1

    invoke-virtual {p1}, Le3/f;->d()I

    move-result p1

    .line 26
    invoke-direct {p0, v0, p1}, Lc3/b;->c(Ljava/util/ArrayList;I)I

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    int-to-long v0, p1

    .line 27
    invoke-static {v2, v4, v0, v1}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 28
    invoke-direct {p0, v2, p6}, Lc3/b;->b([BLjava/util/List;)V

    int-to-long p1, p2

    .line 29
    invoke-static {v2, v4, p1, p2}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 30
    invoke-direct {p0, v2, p6}, Lc3/b;->b([BLjava/util/List;)V

    int-to-long p1, p3

    .line 31
    invoke-static {v2, v4, p1, p2}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 32
    invoke-direct {p0, v2, p6}, Lc3/b;->b([BLjava/util/List;)V

    .line 33
    invoke-static {v2, v4, p4, p5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 34
    invoke-direct {p0, v2, p6}, Lc3/b;->b([BLjava/util/List;)V

    return-void

    .line 35
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid central directory/file headers, cannot write end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 36
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 37
    throw p1

    .line 38
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip model or output stream is null, cannot write zip64 end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private p(Le3/o;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    :try_start_0
    instance-of v0, p2, Lnet/lingala/zip4j/io/g;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lnet/lingala/zip4j/io/g;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lc3/b;->d(Le3/o;Ljava/io/OutputStream;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 6
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid buff to write as zip headers"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Le3/o;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lc3/b;->f(Le3/o;Ljava/io/OutputStream;)V

    .line 2
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v0

    invoke-virtual {v0}, Le3/f;->f()J

    move-result-wide v8

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lc3/b;->i(Le3/o;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v10

    .line 5
    invoke-virtual {p1}, Le3/o;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Le3/m;

    invoke-direct {v1}, Le3/m;-><init>()V

    invoke-virtual {p1, v1}, Le3/o;->B(Le3/m;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Le3/l;

    invoke-direct {v1}, Le3/l;-><init>()V

    invoke-virtual {p1, v1}, Le3/o;->A(Le3/l;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v1

    int-to-long v2, v10

    add-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Le3/l;->f(J)V

    .line 11
    instance-of v1, p2, Lnet/lingala/zip4j/io/g;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lnet/lingala/zip4j/io/g;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/g;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Le3/l;->e(I)V

    .line 13
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v1

    move-object v3, p2

    check-cast v3, Lnet/lingala/zip4j/io/g;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/g;->b()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Le3/l;->h(I)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Le3/l;->e(I)V

    .line 15
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v1

    invoke-virtual {v1, v2}, Le3/l;->h(I)V

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v10

    move-wide v5, v8

    move-object v7, v0

    .line 16
    invoke-direct/range {v1 .. v7}, Lc3/b;->o(Le3/o;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lc3/b;->n(Le3/o;Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v10

    move-wide v5, v8

    move-object v7, v0

    .line 18
    invoke-direct/range {v1 .. v7}, Lc3/b;->j(Le3/o;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 19
    invoke-direct {p0, v0}, Lc3/b;->a(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc3/b;->p(Le3/o;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21
    throw p1

    .line 22
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Le3/o;Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object v0

    invoke-virtual {v0}, Le3/f;->f()J

    move-result-wide v8

    .line 3
    invoke-direct {p0, p1, p2, v7}, Lc3/b;->i(Le3/o;Ljava/io/OutputStream;Ljava/util/List;)I

    move-result v10

    .line 4
    invoke-virtual {p1}, Le3/o;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Le3/m;

    invoke-direct {v0}, Le3/m;-><init>()V

    invoke-virtual {p1, v0}, Le3/o;->B(Le3/m;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Le3/l;

    invoke-direct {v0}, Le3/l;-><init>()V

    invoke-virtual {p1, v0}, Le3/o;->A(Le3/l;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Le3/o;->j()Le3/l;

    move-result-object v0

    int-to-long v1, v10

    add-long/2addr v1, v8

    invoke-virtual {v0, v1, v2}, Le3/l;->f(J)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move-wide v4, v8

    move-object v6, v7

    .line 10
    invoke-direct/range {v0 .. v6}, Lc3/b;->o(Le3/o;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 11
    invoke-direct {p0, p1, p2, v7}, Lc3/b;->n(Le3/o;Ljava/io/OutputStream;Ljava/util/List;)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move-wide v4, v8

    move-object v6, v7

    .line 12
    invoke-direct/range {v0 .. v6}, Lc3/b;->j(Le3/o;Ljava/io/OutputStream;IJLjava/util/List;)V

    .line 13
    invoke-direct {p0, v7}, Lc3/b;->a(Ljava/util/List;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lc3/b;->p(Le3/o;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 15
    throw p1

    .line 16
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file without validations"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Le3/i;JILe3/o;[BILnet/lingala/zip4j/io/g;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move/from16 v0, p4

    move/from16 v1, p7

    if-eqz p1, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_5

    if-eqz p5, :cond_5

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p8 .. p8}, Lnet/lingala/zip4j/io/g;->b()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p5 .. p5}, Le3/o;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/h;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_0

    .line 6
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".z0"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ".z"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_0
    new-instance v2, Lnet/lingala/zip4j/io/g;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/io/File;)V

    move-object v10, v2

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    const/4 v11, 0x0

    .line 9
    :goto_1
    invoke-virtual {v10}, Lnet/lingala/zip4j/io/g;->d()J

    move-result-wide v12

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    int-to-long v6, v0

    .line 10
    invoke-virtual/range {p5 .. p5}, Le3/o;->o()Z

    move-result v9

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v8, p6

    .line 11
    invoke-direct/range {v1 .. v9}, Lc3/b;->g(Lnet/lingala/zip4j/io/g;Le3/i;JJ[BZ)V

    goto :goto_2

    :cond_3
    int-to-long v0, v0

    add-long v0, p2, v0

    .line 12
    invoke-virtual {v10, v0, v1}, Lnet/lingala/zip4j/io/g;->k(J)V

    move-object/from16 v0, p6

    .line 13
    invoke-virtual {v10, v0}, Lnet/lingala/zip4j/io/g;->write([B)V

    :goto_2
    if-eqz v11, :cond_4

    .line 14
    invoke-virtual {v10}, Lnet/lingala/zip4j/io/g;->close()V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p8

    .line 15
    invoke-virtual {v0, v12, v13}, Lnet/lingala/zip4j/io/g;->k(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 17
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid input parameters, cannot update local file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(Le3/i;Ljava/io/OutputStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const v2, 0x8074b50

    const/4 v3, 0x0

    .line 2
    invoke-static {v1, v3, v2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 3
    invoke-direct {p0, v1, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 4
    invoke-virtual {p1}, Le3/i;->d()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v1, v3, v2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 5
    invoke-direct {p0, v1, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 6
    invoke-virtual {p1}, Le3/i;->b()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    move-wide v4, v6

    :cond_0
    long-to-int v2, v4

    .line 7
    invoke-static {v1, v3, v2}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 8
    invoke-direct {p0, v1, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 9
    invoke-virtual {p1}, Le3/i;->q()J

    move-result-wide v4

    cmp-long p1, v4, v6

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v6, v4

    :goto_0
    long-to-int p1, v6

    .line 10
    invoke-static {v1, v3, p1}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 11
    invoke-direct {p0, v1, v0}, Lc3/b;->b([BLjava/util/List;)V

    .line 12
    invoke-direct {p0, v0}, Lc3/b;->a(Ljava/util/List;)[B

    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 14
    array-length p1, p1

    return p1

    .line 15
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot write extended local header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Le3/o;Le3/i;Ljava/io/OutputStream;)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_6

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x4

    new-array v5, v4, [B

    const/16 v6, 0x8

    new-array v7, v6, [B

    new-array v6, v6, [B

    .line 2
    invoke-virtual/range {p2 .. p2}, Le3/i;->p()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v5, v9, v8}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 3
    invoke-direct {p0, v5, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Le3/i;->r()I

    move-result v8

    int-to-short v8, v8

    invoke-static {v3, v9, v8}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 5
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 6
    invoke-virtual/range {p2 .. p2}, Le3/i;->l()[B

    move-result-object v8

    invoke-direct {p0, v8, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Le3/i;->c()I

    move-result v8

    int-to-short v8, v8

    invoke-static {v3, v9, v8}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 8
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 9
    invoke-virtual/range {p2 .. p2}, Le3/i;->m()I

    move-result v8

    .line 10
    invoke-static {v5, v9, v8}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 11
    invoke-direct {p0, v5, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 12
    invoke-virtual/range {p2 .. p2}, Le3/i;->d()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-static {v5, v9, v8}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 13
    invoke-direct {p0, v5, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 14
    invoke-virtual/range {p2 .. p2}, Le3/i;->q()J

    move-result-wide v10

    const-wide/16 v12, 0x32

    add-long/2addr v10, v12

    const-wide v12, 0xffffffffL

    const/4 v8, 0x1

    cmp-long v14, v10, v12

    if-ltz v14, :cond_0

    .line 15
    invoke-static {v7, v9, v12, v13}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 16
    invoke-static {v7, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-direct {p0, v5, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 18
    invoke-direct {p0, v5, v2}, Lc3/b;->b([BLjava/util/List;)V

    move-object/from16 v10, p1

    .line 19
    invoke-virtual {v10, v8}, Le3/o;->C(Z)V

    .line 20
    invoke-virtual {v0, v8}, Le3/i;->S(Z)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    .line 21
    invoke-virtual/range {p2 .. p2}, Le3/i;->b()J

    move-result-wide v11

    invoke-static {v7, v9, v11, v12}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 22
    invoke-static {v7, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-direct {p0, v5, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 24
    invoke-virtual/range {p2 .. p2}, Le3/i;->q()J

    move-result-wide v11

    invoke-static {v7, v9, v11, v12}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 25
    invoke-static {v7, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-direct {p0, v5, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 27
    invoke-virtual {v0, v9}, Le3/i;->S(Z)V

    const/4 v4, 0x0

    .line 28
    :goto_0
    invoke-virtual/range {p2 .. p2}, Le3/i;->k()I

    move-result v5

    int-to-short v5, v5

    invoke-static {v3, v9, v5}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 29
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    if-eqz v4, :cond_1

    const/16 v5, 0x14

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 30
    :goto_1
    invoke-virtual/range {p2 .. p2}, Le3/i;->a()Le3/a;

    move-result-object v11

    if-eqz v11, :cond_2

    add-int/lit8 v5, v5, 0xb

    :cond_2
    int-to-short v5, v5

    .line 31
    invoke-static {v3, v9, v5}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 32
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Le3/o;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 34
    invoke-virtual/range {p2 .. p2}, Le3/i;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Le3/o;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 35
    invoke-direct {p0, v5, v2}, Lc3/b;->b([BLjava/util/List;)V

    goto :goto_2

    .line 36
    :cond_3
    invoke-virtual/range {p2 .. p2}, Le3/i;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/lingala/zip4j/util/h;->g(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lc3/b;->b([BLjava/util/List;)V

    :goto_2
    if-eqz v4, :cond_4

    .line 37
    invoke-static {v3, v9, v8}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 38
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    const/16 v4, 0x10

    .line 39
    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 40
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 41
    invoke-virtual/range {p2 .. p2}, Le3/i;->q()J

    move-result-wide v4

    invoke-static {v7, v9, v4, v5}, Lnet/lingala/zip4j/util/f;->m([BIJ)V

    .line 42
    invoke-direct {p0, v7, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 43
    invoke-direct {p0, v6, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 44
    :cond_4
    invoke-virtual/range {p2 .. p2}, Le3/i;->a()Le3/a;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 45
    invoke-virtual/range {p2 .. p2}, Le3/i;->a()Le3/a;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Le3/a;->d()J

    move-result-wide v4

    long-to-int v5, v4

    int-to-short v4, v5

    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 47
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 48
    invoke-virtual {v0}, Le3/a;->c()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 49
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 50
    invoke-virtual {v0}, Le3/a;->f()I

    move-result v4

    int-to-short v4, v4

    invoke-static {v3, v9, v4}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 51
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 52
    invoke-virtual {v0}, Le3/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lc3/b;->b([BLjava/util/List;)V

    new-array v4, v8, [B

    .line 53
    invoke-virtual {v0}, Le3/a;->a()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    .line 54
    invoke-direct {p0, v4, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 55
    invoke-virtual {v0}, Le3/a;->b()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v3, v9, v0}, Lnet/lingala/zip4j/util/f;->n([BIS)V

    .line 56
    invoke-direct {p0, v3, v2}, Lc3/b;->b([BLjava/util/List;)V

    .line 57
    :cond_5
    invoke-direct {p0, v2}, Lc3/b;->a(Ljava/util/List;)[B

    move-result-object v0

    move-object/from16 v2, p3

    .line 58
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 59
    array-length v0, v0
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 60
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 61
    throw v0

    .line 62
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameters are null, cannot write local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
