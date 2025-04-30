.class public Lnet/lingala/zip4j/zip/b;
.super Ljava/lang/Object;
.source "ZipEngine.java"


# instance fields
.field private a:Le3/o;


# direct methods
.method public constructor <init>(Le3/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    return-void

    .line 3
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null in ZipEngine constructor"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lnet/lingala/zip4j/zip/b;Ljava/util/ArrayList;Le3/p;Lf3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/b;->h(Ljava/util/ArrayList;Le3/p;Lf3/a;)V

    return-void
.end method

.method private e(Ljava/util/ArrayList;Le3/p;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/io/File;

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p2}, Le3/p;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p2}, Le3/p;->e()I

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    mul-long v3, v3, v5

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-static {v3}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    move-result-wide v3

    :goto_1
    add-long/2addr v0, v3

    .line 8
    iget-object v3, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v3}, Le3/o;->b()Le3/c;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v3}, Le3/o;->b()Le3/c;

    move-result-object v3

    invoke-virtual {v3}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    iget-object v3, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v3}, Le3/o;->b()Le3/c;

    move-result-object v3

    invoke-virtual {v3}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 11
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Le3/p;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Le3/p;->d()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v3, v4, v5}, Lnet/lingala/zip4j/util/h;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-static {v4, v3}, Lnet/lingala/zip4j/util/h;->p(Le3/o;Ljava/lang/String;)Le3/h;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 14
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v5}, Le3/o;->l()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    move-result-wide v4

    invoke-virtual {v3}, Le3/h;->e()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 15
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file list is null, cannot calculate total work"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private f(Le3/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Le3/p;->c()I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Le3/p;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unsupported compression type"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Le3/p;->c()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p1}, Le3/p;->b()I

    move-result v0

    if-gez v0, :cond_3

    invoke-virtual {p1}, Le3/p;->b()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid compression level. compression level dor deflate should be in the range of 0-9"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {p1}, Le3/p;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {p1}, Le3/p;->e()I

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {p1}, Le3/p;->e()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unsupported encryption method"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    :goto_2
    invoke-virtual {p1}, Le3/p;->g()[C

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Le3/p;->g()[C

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input password is empty or null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 v0, -0x1

    .line 13
    invoke-virtual {p1, v0}, Le3/p;->o(I)V

    .line 14
    invoke-virtual {p1, v0}, Le3/p;->t(I)V

    :goto_3
    return-void

    .line 15
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "cannot validate zip parameters"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g()Le3/f;
    .locals 3

    .line 1
    new-instance v0, Le3/f;

    invoke-direct {v0}, Le3/f;-><init>()V

    const-wide/32 v1, 0x6054b50

    .line 2
    invoke-virtual {v0, v1, v2}, Le3/f;->q(J)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Le3/f;->n(I)V

    .line 4
    invoke-virtual {v0, v1}, Le3/f;->s(I)V

    .line 5
    invoke-virtual {v0, v1}, Le3/f;->t(I)V

    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Le3/f;->p(J)V

    return-object v0
.end method

.method private h(Ljava/util/ArrayList;Le3/p;Lf3/a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v0}, Le3/o;->e()Le3/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-direct {p0}, Lnet/lingala/zip4j/zip/b;->g()Le3/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Le3/o;->t(Le3/f;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/zip/b;->f(Le3/p;)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/b;->j(Ljava/util/ArrayList;Le3/p;Lf3/a;)V

    .line 6
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v1

    .line 7
    new-instance v2, Lnet/lingala/zip4j/io/g;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v4}, Le3/o;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v4}, Le3/o;->h()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/io/File;J)V

    .line 8
    new-instance v3, Lnet/lingala/zip4j/io/i;

    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-direct {v3, v2, v4}, Lnet/lingala/zip4j/io/i;-><init>(Ljava/io/OutputStream;Le3/o;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_2

    .line 9
    :try_start_1
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v1}, Le3/o;->e()Le3/f;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v1}, Le3/o;->e()Le3/f;

    move-result-object v1

    invoke-virtual {v1}, Le3/f;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/io/g;->k(J)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/16 v1, 0x1000

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 12
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 13
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->h()V

    .line 14
    invoke-virtual {p3}, Lf3/a;->c()V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 16
    :catch_0
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    .line 17
    :cond_4
    :try_start_4
    invoke-virtual {p3}, Lf3/a;->m()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_6

    .line 18
    invoke-virtual {p3, v6}, Lf3/a;->setResult(I)V

    .line 19
    invoke-virtual {p3, v2}, Lf3/a;->u(I)V
    :try_end_4
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_5

    .line 20
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 21
    :catch_2
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    return-void

    .line 22
    :cond_6
    :try_start_7
    invoke-virtual {p2}, Le3/p;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le3/p;

    .line 23
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Lf3/a;->r(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_9

    .line 25
    invoke-virtual {v5}, Le3/p;->k()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Le3/p;->e()I

    move-result v7

    if-nez v7, :cond_8

    .line 26
    invoke-virtual {p3, v6}, Lf3/a;->p(I)V

    .line 27
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p3}, Lnet/lingala/zip4j/util/d;->b(Ljava/lang/String;Lf3/a;)J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v5, v8}, Le3/p;->B(I)V

    .line 28
    invoke-virtual {p3, v2}, Lf3/a;->p(I)V

    .line 29
    invoke-virtual {p3}, Lf3/a;->m()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 30
    invoke-virtual {p3, v6}, Lf3/a;->setResult(I)V

    .line 31
    invoke-virtual {p3, v2}, Lf3/a;->u(I)V
    :try_end_7
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_7

    .line 32
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 33
    :catch_4
    :cond_7
    :try_start_9
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    return-void

    .line 34
    :cond_8
    :try_start_a
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-static {v7}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_9

    .line 35
    invoke-virtual {v5, v2}, Le3/p;->q(I)V

    .line 36
    :cond_9
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-virtual {v3, v7, v5}, Lnet/lingala/zip4j/io/d;->q(Ljava/io/File;Le3/p;)V

    .line 37
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 38
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->a()V

    goto :goto_3

    .line 39
    :cond_a
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 40
    :goto_2
    :try_start_b
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_b

    .line 41
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->a()V

    .line 42
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    move-object v0, v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 43
    :cond_b
    invoke-virtual {p3}, Lf3/a;->m()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 44
    invoke-virtual {p3, v6}, Lf3/a;->setResult(I)V

    .line 45
    invoke-virtual {p3, v2}, Lf3/a;->u(I)V
    :try_end_b
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 46
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 47
    :catch_6
    :try_start_d
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :catch_7
    return-void

    .line 48
    :cond_c
    :try_start_e
    invoke-virtual {v3, v1, v2, v0}, Lnet/lingala/zip4j/io/i;->write([BII)V

    int-to-long v7, v0

    .line 49
    invoke-virtual {p3, v7, v8}, Lf3/a;->w(J)V
    :try_end_e
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_8
    move-exception p1

    goto :goto_4

    :catch_9
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_a
    move-exception p1

    move-object v5, v0

    :goto_4
    move-object v0, v3

    goto :goto_6

    :catch_b
    move-exception p1

    move-object v5, v0

    :goto_5
    move-object v0, v3

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v3, v0

    goto :goto_9

    :catch_c
    move-exception p1

    move-object v5, v0

    .line 50
    :goto_6
    :try_start_f
    invoke-virtual {p3, p1}, Lf3/a;->b(Ljava/lang/Throwable;)V

    .line 51
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_d
    move-exception p1

    move-object v5, v0

    .line 52
    :goto_7
    invoke-virtual {p3, p1}, Lf3/a;->b(Ljava/lang/Throwable;)V

    .line 53
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception p1

    move-object v3, v0

    :goto_8
    move-object v0, v5

    :goto_9
    if-eqz v0, :cond_d

    .line 54
    :try_start_10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_a

    :catch_e
    nop

    :cond_d
    :goto_a
    if-eqz v3, :cond_e

    .line 55
    :try_start_11
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f

    .line 56
    :catch_f
    :cond_e
    throw p1

    .line 57
    :cond_f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "no files to add"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_10
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null when adding files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method private i()Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v0}, Le3/o;->l()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 8
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid output path"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j(Ljava/util/ArrayList;Le3/p;Lf3/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const-string v0, "offsetCentralDir"

    .line 1
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Le3/o;->b()Le3/c;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v5, :cond_2

    if-eqz v4, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    .line 6
    :cond_2
    :try_start_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 7
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p2}, Le3/p;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Le3/p;->d()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v5, v6, v7}, Lnet/lingala/zip4j/util/h;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-static {v6, v5}, Lnet/lingala/zip4j/util/h;->p(Le3/o;Ljava/lang/String;)Le3/h;

    move-result-object v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    move-object v4, v1

    .line 12
    :cond_3
    new-instance v6, Lnet/lingala/zip4j/util/c;

    invoke-direct {v6}, Lnet/lingala/zip4j/util/c;-><init>()V

    const/4 v7, 0x2

    .line 13
    invoke-virtual {p3, v7}, Lf3/a;->p(I)V

    .line 14
    iget-object v7, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v6, v7, v5, p3}, Lnet/lingala/zip4j/util/c;->j(Le3/o;Le3/h;Lf3/a;)Ljava/util/HashMap;

    move-result-object v5

    .line 15
    invoke-virtual {p3}, Lf3/a;->m()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 p1, 0x3

    .line 16
    invoke-virtual {p3, p1}, Lf3/a;->setResult(I)V

    .line 17
    invoke-virtual {p3, v2}, Lf3/a;->u(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    .line 18
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_4
    return-void

    .line 19
    :cond_5
    :try_start_4
    invoke-virtual {p3, v2}, Lf3/a;->p(I)V

    if-nez v4, :cond_6

    .line 20
    invoke-direct {p0}, Lnet/lingala/zip4j/zip/b;->i()Ljava/io/RandomAccessFile;

    move-result-object v4

    if-eqz v5, :cond_6

    .line 21
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_6

    .line 22
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 23
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-ltz v9, :cond_6

    .line 24
    :try_start_6
    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_1

    .line 25
    :catch_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Error while parsing offset central directory. Cannot update already existing file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :catch_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "NumberFormatException while parsing offset central directory. Cannot update already existing file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    .line 27
    :try_start_7
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    if-eqz v4, :cond_7

    .line 28
    :try_start_8
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 29
    :catch_5
    :cond_7
    throw p1

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;Le3/p;Lf3/a;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p3, v0}, Lf3/a;->p(I)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p3, v1}, Lf3/a;->u(I)V

    .line 4
    invoke-virtual {p3, v1}, Lf3/a;->setResult(I)V

    if-eqz p4, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/zip/b;->e(Ljava/util/ArrayList;Le3/p;)J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lf3/a;->v(J)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lf3/a;->r(Ljava/lang/String;)V

    .line 7
    new-instance p4, Lnet/lingala/zip4j/zip/a;

    const-string v2, "Zip4j"

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/lingala/zip4j/zip/a;-><init>(Lnet/lingala/zip4j/zip/b;Ljava/lang/String;Ljava/util/ArrayList;Le3/p;Lf3/a;)V

    .line 8
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/zip/b;->h(Ljava/util/ArrayList;Le3/p;Lf3/a;)V

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "no files to add"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null when adding files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/io/File;Le3/p;Lf3/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p2}, Le3/p;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p2, v1}, Le3/p;->r(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Le3/p;->m()Z

    move-result v0

    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/h;->u(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Le3/p;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_4
    invoke-virtual {p0, v0, p2, p3, p4}, Lnet/lingala/zip4j/zip/b;->b(Ljava/util/ArrayList;Le3/p;Lf3/a;Z)V

    return-void

    .line 15
    :cond_5
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "cannot read folder: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file is not a folder, user addFileToZip method to add files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input folder does not exist"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null, cannot add folder to zip"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/io/InputStream;Le3/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/zip/b;->f(Le3/p;)V

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v1}, Le3/o;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v1

    .line 3
    new-instance v2, Lnet/lingala/zip4j/io/g;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v4}, Le3/o;->l()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v4}, Le3/o;->h()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lnet/lingala/zip4j/io/g;-><init>(Ljava/io/File;J)V

    .line 4
    new-instance v3, Lnet/lingala/zip4j/io/i;

    iget-object v4, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-direct {v3, v2, v4}, Lnet/lingala/zip4j/io/i;-><init>(Ljava/io/OutputStream;Le3/o;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 5
    :try_start_1
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v1}, Le3/o;->e()Le3/f;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lnet/lingala/zip4j/zip/b;->a:Le3/o;

    invoke-virtual {v1}, Le3/o;->e()Le3/f;

    move-result-object v1

    invoke-virtual {v1}, Le3/f;->f()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/io/g;->k(J)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 8
    invoke-virtual {v3, v0, p2}, Lnet/lingala/zip4j/io/d;->q(Ljava/io/File;Le3/p;)V

    .line 9
    invoke-virtual {p2}, Le3/p;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p2}, Le3/p;->f()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 11
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 12
    invoke-virtual {v3, v1, v0, p2}, Lnet/lingala/zip4j/io/i;->write([BII)V

    goto :goto_1

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->a()V

    .line 14
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/d;->h()V
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v3}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v0, v3

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v0, v3

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 16
    :goto_3
    :try_start_3
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 17
    :goto_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_5
    if-eqz v0, :cond_4

    .line 18
    :try_start_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/c;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 19
    :catch_5
    :cond_4
    throw p1

    .line 20
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "one of the input parameters is null, cannot add stream to zip"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method
