.class public Lc3/a;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Le3/o;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    .line 3
    iput-object p1, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    return-void
.end method

.method private a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    aput-byte p1, v0, v1

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid byte length, cannot expand to 8 bytes"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input parameter is null, cannot expand to 8 bytes"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/util/ArrayList;)Le3/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le3/g;

    if-nez v3, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {v3}, Le3/g;->b()J

    move-result-wide v4

    const-wide/32 v6, 0x9901

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 4
    invoke-virtual {v3}, Le3/g;->a()[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    new-instance p1, Le3/a;

    invoke-direct {p1}, Le3/a;-><init>()V

    .line 6
    invoke-virtual {p1, v6, v7}, Le3/a;->j(J)V

    .line 7
    invoke-virtual {v3}, Le3/g;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Le3/a;->i(I)V

    .line 8
    invoke-virtual {v3}, Le3/g;->a()[B

    move-result-object v0

    .line 9
    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v2

    invoke-virtual {p1, v2}, Le3/a;->l(I)V

    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 10
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Le3/a;->k(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 12
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Le3/a;->g(I)V

    const/4 v1, 0x5

    .line 13
    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v0

    invoke-virtual {p1, v0}, Le3/a;->h(I)V

    return-object p1

    .line 14
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "corrput AES extra data records"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private e(Le3/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Le3/h;->l()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le3/h;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Le3/h;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lc3/a;->b(Ljava/util/ArrayList;)Le3/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Le3/h;->F(Le3/a;)V

    const/16 v0, 0x63

    .line 4
    invoke-virtual {p1, v0}, Le3/h;->O(I)V

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Le3/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Le3/i;->g()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le3/i;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Le3/i;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lc3/a;->b(Ljava/util/ArrayList;)Le3/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Le3/i;->x(Le3/a;)V

    const/16 v0, 0x63

    .line 4
    invoke-virtual {p1, v0}, Le3/i;->E(I)V

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(Le3/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Le3/h;->m()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lc3/a;->m(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Le3/h;->Q(Ljava/util/ArrayList;)V

    return-void

    .line 4
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid file handler when trying to read extra data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(Le3/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Le3/i;->i()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lc3/a;->m(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Le3/i;->F(Ljava/util/ArrayList;)V

    return-void

    .line 4
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid file handler when trying to read extra data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(Le3/h;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p1}, Le3/h;->l()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Le3/h;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Le3/h;->l()Ljava/util/ArrayList;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Le3/h;->x()J

    move-result-wide v3

    .line 4
    invoke-virtual {p1}, Le3/h;->e()J

    move-result-wide v5

    .line 5
    invoke-virtual {p1}, Le3/h;->u()J

    move-result-wide v7

    .line 6
    invoke-virtual {p1}, Le3/h;->i()I

    move-result v9

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v9}, Lc3/a;->r(Ljava/util/ArrayList;JJJI)Le3/n;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p1, v0}, Le3/h;->g0(Le3/n;)V

    .line 9
    invoke-virtual {v0}, Le3/n;->f()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v0}, Le3/n;->f()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Le3/h;->d0(J)V

    .line 11
    :cond_1
    invoke-virtual {v0}, Le3/n;->a()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {v0}, Le3/n;->a()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Le3/h;->G(J)V

    .line 13
    :cond_2
    invoke-virtual {v0}, Le3/n;->d()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {v0}, Le3/n;->d()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Le3/h;->a0(J)V

    .line 15
    :cond_3
    invoke-virtual {v0}, Le3/n;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 16
    invoke-virtual {v0}, Le3/n;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Le3/h;->M(I)V

    :cond_4
    :goto_0
    return-void

    .line 17
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j(Le3/i;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Le3/i;->g()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Le3/i;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Le3/i;->g()Ljava/util/ArrayList;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Le3/i;->q()J

    move-result-wide v3

    .line 4
    invoke-virtual {p1}, Le3/i;->b()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    move-object v1, p0

    .line 5
    invoke-direct/range {v1 .. v9}, Lc3/a;->r(Ljava/util/ArrayList;JJJI)Le3/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Le3/i;->T(Le3/n;)V

    .line 7
    invoke-virtual {v0}, Le3/n;->f()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v0}, Le3/n;->f()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Le3/i;->Q(J)V

    .line 9
    :cond_1
    invoke-virtual {v0}, Le3/n;->a()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v0}, Le3/n;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le3/i;->y(J)V

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k()Le3/c;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "file.separator"

    const-string v2, ":"

    .line 1
    iget-object v3, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_f

    .line 2
    iget-object v3, v1, Lc3/a;->b:Le3/o;

    invoke-virtual {v3}, Le3/o;->e()Le3/f;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 3
    :try_start_0
    new-instance v3, Le3/c;

    invoke-direct {v3}, Le3/c;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v5, v1, Lc3/a;->b:Le3/o;

    invoke-virtual {v5}, Le3/o;->e()Le3/f;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Le3/f;->f()J

    move-result-wide v6

    .line 7
    invoke-virtual {v5}, Le3/f;->i()I

    move-result v5

    .line 8
    iget-object v8, v1, Lc3/a;->b:Le3/o;

    invoke-virtual {v8}, Le3/o;->o()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 9
    iget-object v5, v1, Lc3/a;->b:Le3/o;

    invoke-virtual {v5}, Le3/o;->k()Le3/m;

    move-result-object v5

    invoke-virtual {v5}, Le3/m;->d()J

    move-result-wide v6

    .line 10
    iget-object v5, v1, Lc3/a;->b:Le3/o;

    invoke-virtual {v5}, Le3/o;->k()Le3/m;

    move-result-object v5

    invoke-virtual {v5}, Le3/m;->h()J

    move-result-wide v8

    long-to-int v5, v8

    .line 11
    :cond_0
    iget-object v8, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x2

    new-array v8, v7, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v5, :cond_3

    .line 12
    invoke-virtual {v3, v4}, Le3/c;->d(Ljava/util/ArrayList;)V

    .line 13
    new-instance v0, Le3/e;

    invoke-direct {v0}, Le3/e;-><init>()V

    .line 14
    iget-object v2, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v2, v6}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 15
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v6, 0x5054b50

    cmp-long v10, v4, v6

    if-eqz v10, :cond_1

    return-object v3

    .line 16
    :cond_1
    invoke-virtual {v0, v2}, Le3/e;->d(I)V

    .line 17
    iget-object v2, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v2, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 18
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Le3/e;->f(I)V

    if-lez v2, :cond_2

    .line 20
    new-array v2, v2, [B

    .line 21
    iget-object v4, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v4, v2}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 22
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Le3/e;->e(Ljava/lang/String;)V

    :cond_2
    return-object v3

    .line 23
    :cond_3
    new-instance v11, Le3/h;

    invoke-direct {v11}, Le3/h;-><init>()V

    .line 24
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 25
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v12

    int-to-long v13, v12

    const-wide/32 v15, 0x2014b50    # 1.6619997E-316

    const/4 v7, 0x1

    cmp-long v17, v13, v15

    if-nez v17, :cond_d

    .line 26
    invoke-virtual {v11, v12}, Le3/h;->c0(I)V

    .line 27
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 28
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Le3/h;->e0(I)V

    .line 29
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 30
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Le3/h;->f0(I)V

    .line 31
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 32
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v12

    and-int/lit16 v12, v12, 0x800

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v11, v12}, Le3/h;->W(Z)V

    .line 33
    aget-byte v12, v8, v9

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_5

    .line 34
    invoke-virtual {v11, v7}, Le3/h;->N(Z)V

    .line 35
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    invoke-virtual {v11, v13}, Le3/h;->X([B)V

    shr-int/lit8 v12, v12, 0x3

    if-ne v12, v7, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    .line 36
    :goto_2
    invoke-virtual {v11, v12}, Le3/h;->K(Z)V

    .line 37
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 38
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Le3/h;->H(I)V

    .line 39
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 40
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v12

    invoke-virtual {v11, v12}, Le3/h;->Z(I)V

    .line 41
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 42
    invoke-static {v6, v9}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Le3/h;->I(J)V

    .line 43
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v11, v12}, Le3/h;->J([B)V

    .line 44
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 45
    invoke-direct {v1, v6}, Lc3/a;->a([B)[B

    move-result-object v12

    .line 46
    invoke-static {v12, v9}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Le3/h;->G(J)V

    .line 47
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v6}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 48
    invoke-direct {v1, v6}, Lc3/a;->a([B)[B

    move-result-object v12

    .line 49
    invoke-static {v12, v9}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Le3/h;->d0(J)V

    .line 50
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 51
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v12

    .line 52
    invoke-virtual {v11, v12}, Le3/h;->V(I)V

    .line 53
    iget-object v13, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 54
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v13

    .line 55
    invoke-virtual {v11, v13}, Le3/h;->R(I)V

    .line 56
    iget-object v13, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 57
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v13

    .line 58
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v14}, Le3/h;->S(Ljava/lang/String;)V

    .line 59
    iget-object v14, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 60
    invoke-static {v8, v9}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v14

    invoke-virtual {v11, v14}, Le3/h;->M(I)V

    .line 61
    iget-object v14, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v8}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 62
    invoke-virtual {v8}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-virtual {v11, v14}, Le3/h;->Y([B)V

    .line 63
    iget-object v14, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v6}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 64
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    invoke-virtual {v11, v14}, Le3/h;->P([B)V

    .line 65
    iget-object v14, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v6}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 66
    invoke-direct {v1, v6}, Lc3/a;->a([B)[B

    move-result-object v14

    .line 67
    invoke-static {v14, v9}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v14

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    invoke-virtual {v11, v14, v15}, Le3/h;->a0(J)V

    if-lez v12, :cond_b

    .line 68
    new-array v12, v12, [B

    .line 69
    iget-object v14, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v14, v12}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 70
    iget-object v14, v1, Lc3/a;->b:Le3/o;

    invoke-virtual {v14}, Le3/o;->f()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 71
    new-instance v14, Ljava/lang/String;

    iget-object v15, v1, Lc3/a;->b:Le3/o;

    invoke-virtual {v15}, Le3/o;->f()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v12, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_3

    .line 72
    :cond_7
    invoke-virtual {v11}, Le3/h;->E()Z

    move-result v14

    invoke-static {v12, v14}, Lnet/lingala/zip4j/util/h;->h([BZ)Ljava/lang/String;

    move-result-object v14

    :goto_3
    if-eqz v14, :cond_a

    .line 73
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_8

    .line 74
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v15, 0x2

    add-int/2addr v12, v15

    invoke-virtual {v14, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_8
    const/4 v15, 0x2

    .line 75
    :goto_4
    invoke-virtual {v11, v14}, Le3/h;->U(Ljava/lang/String;)V

    const-string v12, "/"

    .line 76
    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "\\"

    invoke-virtual {v14, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const/4 v7, 0x0

    :cond_9
    invoke-virtual {v11, v7}, Le3/h;->L(Z)V

    goto :goto_5

    .line 77
    :cond_a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "fileName is null when reading central directory"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/4 v15, 0x2

    const/4 v7, 0x0

    .line 78
    invoke-virtual {v11, v7}, Le3/h;->U(Ljava/lang/String;)V

    .line 79
    :goto_5
    invoke-direct {v1, v11}, Lc3/a;->g(Le3/h;)V

    .line 80
    invoke-direct {v1, v11}, Lc3/a;->i(Le3/h;)V

    .line 81
    invoke-direct {v1, v11}, Lc3/a;->e(Le3/h;)V

    if-lez v13, :cond_c

    .line 82
    new-array v7, v13, [B

    .line 83
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v7}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 84
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Le3/h;->S(Ljava/lang/String;)V

    .line 85
    :cond_c
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x2

    goto/16 :goto_0

    .line 86
    :cond_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Expected central directory entry not found (#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/2addr v10, v7

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 87
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 88
    :cond_e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "EndCentralRecord was null, maybe a corrupt zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "random access file was null"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private l()Le3/f;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    :try_start_0
    new-array v2, v1, [B

    .line 2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x16

    sub-long/2addr v3, v5

    .line 3
    new-instance v0, Le3/f;

    invoke-direct {v0}, Le3/f;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    :goto_0
    iget-object v7, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v8, 0x1

    sub-long v8, v3, v8

    invoke-virtual {v7, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x1

    add-int/2addr v6, v3

    .line 5
    iget-object v4, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v4, v2}, Lnet/lingala/zip4j/util/f;->f(Ljava/io/DataInput;[B)I

    move-result v4

    int-to-long v10, v4

    const-wide/32 v12, 0x6054b50

    cmp-long v4, v10, v12

    if-eqz v4, :cond_1

    const/16 v4, 0xbb8

    if-le v6, v4, :cond_0

    goto :goto_1

    :cond_0
    move-wide v3, v8

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v6, v12

    if-nez v2, :cond_4

    new-array v2, v1, [B

    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 7
    invoke-virtual {v0, v12, v13}, Le3/f;->q(J)V

    .line 8
    iget-object v6, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 9
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Le3/f;->n(I)V

    .line 10
    iget-object v6, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 11
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Le3/f;->o(I)V

    .line 12
    iget-object v6, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 13
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Le3/f;->t(I)V

    .line 14
    iget-object v6, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 15
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Le3/f;->s(I)V

    .line 16
    iget-object v6, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v2}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 17
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Le3/f;->r(I)V

    .line 18
    iget-object v6, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v2}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 19
    invoke-direct {p0, v2}, Lc3/a;->a([B)[B

    move-result-object v2

    .line 20
    invoke-static {v2, v5}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le3/f;->p(J)V

    .line 21
    iget-object v2, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v4}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 22
    invoke-static {v4, v5}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v2

    .line 23
    invoke-virtual {v0, v2}, Le3/f;->m(I)V

    if-lez v2, :cond_2

    .line 24
    new-array v2, v2, [B

    .line 25
    iget-object v4, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v2}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 26
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Le3/f;->k(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v2}, Le3/f;->l([B)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Le3/f;->k(Ljava/lang/String;)V

    .line 29
    :goto_2
    invoke-virtual {v0}, Le3/f;->d()I

    move-result v2

    if-lez v2, :cond_3

    .line 30
    iget-object v2, p0, Lc3/a;->b:Le3/o;

    invoke-virtual {v2, v3}, Le3/o;->x(Z)V

    goto :goto_3

    .line 31
    :cond_3
    iget-object v2, p0, Lc3/a;->b:Le3/o;

    invoke-virtual {v2, v5}, Le3/o;->x(Z)V

    :goto_3
    return-object v0

    .line 32
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "zip headers not found. probably not a zip file"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 33
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v3, "Probably not a zip file or a corrupted zip file"

    invoke-direct {v2, v3, v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 34
    :cond_5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const/4 v1, 0x3

    const-string v2, "random access file was null"

    invoke-direct {v0, v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private m(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-array v1, p1, [B

    .line 2
    iget-object v2, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v5, Le3/g;

    invoke-direct {v5}, Le3/g;-><init>()V

    .line 5
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v6

    int-to-long v6, v6

    .line 6
    invoke-virtual {v5, v6, v7}, Le3/g;->e(J)V

    add-int/lit8 v4, v4, 0x2

    .line 7
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v6

    add-int/lit8 v7, v6, 0x2

    if-le v7, p1, :cond_3

    .line 8
    invoke-static {v1, v4}, Lnet/lingala/zip4j/util/f;->h([BI)S

    move-result v6

    add-int/lit8 v7, v6, 0x2

    if-le v7, p1, :cond_3

    .line 9
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    return-object v2

    :cond_2
    return-object v0

    .line 10
    :cond_3
    invoke-virtual {v5, v6}, Le3/g;->f(I)V

    add-int/lit8 v4, v4, 0x2

    if-lez v6, :cond_4

    .line 11
    new-array v7, v6, [B

    .line 12
    invoke-static {v1, v4, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-virtual {v5, v7}, Le3/g;->d([B)V

    :cond_4
    add-int/2addr v4, v6

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private n(Ljava/io/RandomAccessFile;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "unexpected end of file when reading short buff"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "IOException when reading short buff"

    invoke-direct {p2, v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private p()Le3/l;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Le3/l;

    invoke-direct {v0}, Le3/l;-><init>()V

    .line 3
    invoke-direct {p0}, Lc3/a;->s()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 4
    iget-object v3, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v3, v1}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    const/4 v3, 0x0

    .line 5
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x7064b50

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 6
    iget-object v6, p0, Lc3/a;->b:Le3/o;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Le3/o;->C(Z)V

    .line 7
    invoke-virtual {v0, v4, v5}, Le3/l;->g(J)V

    .line 8
    iget-object v4, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v1}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 9
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v4

    .line 10
    invoke-virtual {v0, v4}, Le3/l;->e(I)V

    .line 11
    iget-object v4, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4, v2}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 12
    invoke-static {v2, v3}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v4

    .line 13
    invoke-virtual {v0, v4, v5}, Le3/l;->f(J)V

    .line 14
    iget-object v2, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 15
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Le3/l;->h(I)V

    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lc3/a;->b:Le3/o;

    invoke-virtual {v0, v3}, Le3/o;->C(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 18
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid file handler when trying to read Zip64EndCentralDirLocator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private q()Le3/m;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/a;->b:Le3/o;

    invoke-virtual {v0}, Le3/o;->j()Le3/l;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lc3/a;->b:Le3/o;

    invoke-virtual {v0}, Le3/o;->j()Le3/l;

    move-result-object v0

    invoke-virtual {v0}, Le3/l;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 3
    :try_start_0
    iget-object v4, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    new-instance v0, Le3/m;

    invoke-direct {v0}, Le3/m;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, 0x8

    new-array v5, v5, [B

    .line 5
    iget-object v6, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v6, v4}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    const/4 v6, 0x0

    .line 6
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v7

    int-to-long v7, v7

    const-wide/32 v9, 0x6064b50

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    .line 7
    invoke-virtual {v0, v7, v8}, Le3/m;->p(J)V

    .line 8
    iget-object v7, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v5}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 9
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v7

    .line 10
    invoke-virtual {v0, v7, v8}, Le3/m;->r(J)V

    .line 11
    iget-object v7, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v1}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 12
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v7

    invoke-virtual {v0, v7}, Le3/m;->u(I)V

    .line 13
    iget-object v7, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v7, v1}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 14
    invoke-static {v1, v6}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Le3/m;->v(I)V

    .line 15
    iget-object v1, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v4}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 16
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v1

    invoke-virtual {v0, v1}, Le3/m;->m(I)V

    .line 17
    iget-object v1, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v4}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 18
    invoke-static {v4, v6}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Le3/m;->n(I)V

    .line 20
    iget-object v1, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 21
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v7

    .line 22
    invoke-virtual {v0, v7, v8}, Le3/m;->t(J)V

    .line 23
    iget-object v1, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 24
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v7

    .line 25
    invoke-virtual {v0, v7, v8}, Le3/m;->s(J)V

    .line 26
    iget-object v1, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 27
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Le3/m;->q(J)V

    .line 28
    iget-object v1, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v1, v5}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 29
    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v4

    .line 30
    invoke-virtual {v0, v4, v5}, Le3/m;->o(J)V

    .line 31
    invoke-virtual {v0}, Le3/m;->g()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    long-to-int v1, v4

    .line 32
    new-array v1, v1, [B

    .line 33
    iget-object v2, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v2, v1}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 34
    invoke-virtual {v0, v1}, Le3/m;->l([B)V

    :cond_0
    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid signature for zip64 end of central directory record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 37
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid offset for start of end of central directory record"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip64 end of central directory locator"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private r(Ljava/util/ArrayList;JJJI)Le3/n;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object/from16 v2, p1

    .line 2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le3/g;

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    invoke-virtual {v3}, Le3/g;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_8

    .line 4
    new-instance v1, Le3/n;

    invoke-direct {v1}, Le3/n;-><init>()V

    .line 5
    invoke-virtual {v3}, Le3/g;->a()[B

    move-result-object v2

    .line 6
    invoke-virtual {v3}, Le3/g;->c()I

    move-result v4

    if-gtz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v4, 0x8

    new-array v5, v4, [B

    const/4 v6, 0x4

    new-array v7, v6, [B

    const-wide/32 v8, 0xffff

    and-long v10, p2, v8

    const/4 v12, 0x1

    cmp-long v13, v10, v8

    if-nez v13, :cond_3

    .line 7
    invoke-virtual {v3}, Le3/g;->c()I

    move-result v10

    if-lez v10, :cond_3

    .line 8
    invoke-static {v2, v0, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v10

    .line 10
    invoke-virtual {v1, v10, v11}, Le3/n;->l(J)V

    const/16 v10, 0x8

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    and-long v13, p4, v8

    cmp-long v15, v13, v8

    if-nez v15, :cond_4

    .line 11
    invoke-virtual {v3}, Le3/g;->c()I

    move-result v13

    if-ge v10, v13, :cond_4

    .line 12
    invoke-static {v2, v10, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v13

    .line 14
    invoke-virtual {v1, v13, v14}, Le3/n;->g(J)V

    add-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    :cond_4
    and-long v13, p6, v8

    cmp-long v15, v13, v8

    if-nez v15, :cond_5

    .line 15
    invoke-virtual {v3}, Le3/g;->c()I

    move-result v8

    if-ge v10, v8, :cond_5

    .line 16
    invoke-static {v2, v10, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    invoke-static {v5, v0}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v4

    .line 18
    invoke-virtual {v1, v4, v5}, Le3/n;->j(J)V

    add-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    :cond_5
    const v4, 0xffff

    and-int v5, p8, v4

    if-ne v5, v4, :cond_6

    .line 19
    invoke-virtual {v3}, Le3/g;->c()I

    move-result v3

    if-ge v10, v3, :cond_6

    .line 20
    invoke-static {v2, v10, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    invoke-static {v7, v0}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v0

    .line 22
    invoke-virtual {v1, v0}, Le3/n;->h(I)V

    goto :goto_2

    :cond_6
    move v12, v11

    :goto_2
    if-eqz v12, :cond_7

    return-object v1

    :cond_7
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private s()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    .line 1
    iget-object v1, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x16

    sub-long/2addr v1, v3

    .line 2
    :goto_0
    iget-object v3, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x1

    sub-long v4, v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    iget-object v1, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1, v0}, Lnet/lingala/zip4j/util/f;->f(Ljava/io/DataInput;[B)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v6, 0x6054b50

    cmp-long v3, v1, v6

    if-nez v3, :cond_0

    .line 4
    iget-object v0, p0, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    sub-long/2addr v1, v3

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x8

    sub-long/2addr v1, v5

    sub-long/2addr v1, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    move-wide v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public c()Le3/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc3/a;->d(Ljava/lang/String;)Le3/o;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Le3/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Le3/o;

    invoke-direct {v0}, Le3/o;-><init>()V

    iput-object v0, p0, Lc3/a;->b:Le3/o;

    .line 2
    invoke-virtual {v0, p1}, Le3/o;->u(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    invoke-direct {p0}, Lc3/a;->l()Le3/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Le3/o;->t(Le3/f;)V

    .line 4
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    invoke-direct {p0}, Lc3/a;->p()Le3/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Le3/o;->A(Le3/l;)V

    .line 5
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    invoke-virtual {p1}, Le3/o;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    invoke-direct {p0}, Lc3/a;->q()Le3/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Le3/o;->B(Le3/m;)V

    .line 7
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    invoke-virtual {p1}, Le3/o;->k()Le3/m;

    move-result-object p1

    invoke-virtual {p1}, Le3/m;->b()I

    move-result p1

    if-lez p1, :cond_0

    .line 9
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Le3/o;->x(Z)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le3/o;->x(Z)V

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    invoke-direct {p0}, Lc3/a;->k()Le3/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Le3/o;->q(Le3/c;)V

    .line 12
    iget-object p1, p0, Lc3/a;->b:Le3/o;

    return-object p1
.end method

.method public o(Le3/h;)Le3/i;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "file.separator"

    const-string v2, ":"

    if-eqz p1, :cond_f

    .line 1
    iget-object v3, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_f

    .line 2
    invoke-virtual/range {p1 .. p1}, Le3/h;->u()J

    move-result-wide v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Le3/h;->A()Le3/n;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Le3/h;->A()Le3/n;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Le3/n;->d()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_0

    .line 6
    invoke-virtual/range {p1 .. p1}, Le3/h;->u()J

    move-result-wide v3

    :cond_0
    cmp-long v5, v3, v6

    if-ltz v5, :cond_e

    .line 7
    :try_start_0
    iget-object v5, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    new-instance v5, Le3/i;

    invoke-direct {v5}, Le3/i;-><init>()V

    const/4 v8, 0x2

    new-array v9, v8, [B

    const/4 v10, 0x4

    new-array v11, v10, [B

    .line 9
    iget-object v12, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v12, v11}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    const/4 v12, 0x0

    .line 10
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v13

    int-to-long v14, v13

    const-wide/32 v16, 0x4034b50

    cmp-long v18, v14, v16

    if-nez v18, :cond_d

    .line 11
    invoke-virtual {v5, v13}, Le3/i;->P(I)V

    .line 12
    iget-object v13, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v9}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 13
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v13

    invoke-virtual {v5, v13}, Le3/i;->R(I)V

    .line 14
    iget-object v13, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v13, v9}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 15
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v13

    and-int/lit16 v13, v13, 0x800

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v5, v13}, Le3/i;->K(Z)V

    .line 16
    aget-byte v13, v9, v12

    and-int/lit8 v15, v13, 0x1

    if-eqz v15, :cond_2

    .line 17
    invoke-virtual {v5, v14}, Le3/i;->D(Z)V

    .line 18
    :cond_2
    invoke-virtual {v5, v9}, Le3/i;->L([B)V

    .line 19
    invoke-static {v13}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v15

    .line 20
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v10, :cond_4

    const/4 v6, 0x3

    .line 21
    invoke-virtual {v15, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Le3/i;->C(Z)V

    .line 22
    :cond_4
    iget-object v6, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v9}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 23
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v6

    invoke-virtual {v5, v6}, Le3/i;->z(I)V

    .line 24
    iget-object v6, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 25
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v6

    invoke-virtual {v5, v6}, Le3/i;->M(I)V

    .line 26
    iget-object v6, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 27
    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Le3/i;->A(J)V

    .line 28
    invoke-virtual {v11}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v6}, Le3/i;->B([B)V

    .line 29
    iget-object v6, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 30
    invoke-direct {v1, v11}, Lc3/a;->a([B)[B

    move-result-object v6

    .line 31
    invoke-static {v6, v12}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Le3/i;->y(J)V

    .line 32
    iget-object v6, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v11}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 33
    invoke-direct {v1, v11}, Lc3/a;->a([B)[B

    move-result-object v6

    .line 34
    invoke-static {v6, v12}, Lnet/lingala/zip4j/util/f;->g([BI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Le3/i;->Q(J)V

    .line 35
    iget-object v6, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v6, v9}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 36
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v6

    .line 37
    invoke-virtual {v5, v6}, Le3/i;->J(I)V

    .line 38
    iget-object v7, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v7, v9}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 39
    invoke-static {v9, v12}, Lnet/lingala/zip4j/util/f;->i([BI)I

    move-result v7

    .line 40
    invoke-virtual {v5, v7}, Le3/i;->H(I)V

    const/16 v9, 0x1e

    if-lez v6, :cond_7

    .line 41
    new-array v10, v6, [B

    .line 42
    iget-object v11, v1, Lc3/a;->a:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v11, v10}, Lc3/a;->n(Ljava/io/RandomAccessFile;[B)[B

    .line 43
    invoke-virtual {v5}, Le3/i;->v()Z

    move-result v11

    invoke-static {v10, v11}, Lnet/lingala/zip4j/util/h;->h([BZ)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 44
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_5

    .line 45
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 46
    :cond_5
    invoke-virtual {v5, v10}, Le3/i;->I(Ljava/lang/String;)V

    add-int/2addr v9, v6

    goto :goto_2

    .line 47
    :cond_6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "file name is null, cannot assign file name to local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 48
    invoke-virtual {v5, v0}, Le3/i;->I(Ljava/lang/String;)V

    .line 49
    :goto_2
    invoke-direct {v1, v5}, Lc3/a;->h(Le3/i;)V

    add-int/2addr v9, v7

    int-to-long v6, v9

    add-long/2addr v3, v6

    .line 50
    invoke-virtual {v5, v3, v4}, Le3/i;->N(J)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Le3/h;->v()[C

    move-result-object v0

    invoke-virtual {v5, v0}, Le3/i;->O([C)V

    .line 52
    invoke-direct {v1, v5}, Lc3/a;->j(Le3/i;)V

    .line 53
    invoke-direct {v1, v5}, Lc3/a;->f(Le3/i;)V

    .line 54
    invoke-virtual {v5}, Le3/i;->u()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 55
    invoke-virtual {v5}, Le3/i;->f()I

    move-result v0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_9

    const/16 v0, 0x40

    and-int/lit8 v2, v13, 0x40

    if-ne v2, v0, :cond_8

    .line 56
    invoke-virtual {v5, v14}, Le3/i;->E(I)V

    goto :goto_3

    .line 57
    :cond_8
    invoke-virtual {v5, v12}, Le3/i;->E(I)V

    .line 58
    :cond_9
    :goto_3
    invoke-virtual {v5}, Le3/i;->d()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_a

    .line 59
    invoke-virtual/range {p1 .. p1}, Le3/h;->g()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Le3/i;->A(J)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Le3/h;->h()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Le3/i;->B([B)V

    .line 61
    :cond_a
    invoke-virtual {v5}, Le3/i;->b()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_b

    .line 62
    invoke-virtual/range {p1 .. p1}, Le3/h;->e()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Le3/i;->y(J)V

    .line 63
    :cond_b
    invoke-virtual {v5}, Le3/i;->q()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_c

    .line 64
    invoke-virtual/range {p1 .. p1}, Le3/h;->x()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Le3/i;->Q(J)V

    :cond_c
    return-object v5

    .line 65
    :cond_d
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "invalid local header signature for file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Le3/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 66
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 67
    :cond_e
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid local header offset"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_f
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "invalid read parameters for local header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
