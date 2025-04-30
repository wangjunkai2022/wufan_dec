.class public Lnet/lingala/zip4j/io/c;
.super Lnet/lingala/zip4j/io/b;
.source "CipherOutputStream.java"


# instance fields
.field protected a:Ljava/io/OutputStream;

.field private b:Ljava/io/File;

.field protected c:Le3/h;

.field protected d:Le3/i;

.field private e:Lnet/lingala/zip4j/crypto/d;

.field protected f:Le3/p;

.field protected g:Le3/o;

.field private h:J

.field protected i:Ljava/util/zip/CRC32;

.field private j:J

.field private k:[B

.field private l:I

.field private m:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Le3/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/b;-><init>()V

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    .line 3
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/c;->p(Le3/o;)V

    .line 4
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->i:Ljava/util/zip/CRC32;

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->h:J

    .line 6
    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->j:J

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->k:[B

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lnet/lingala/zip4j/io/c;->l:I

    .line 9
    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->m:J

    return-void
.end method

.method private b()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Le3/h;

    invoke-direct {v0}, Le3/h;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    const v1, 0x2014b50

    .line 2
    invoke-virtual {v0, v1}, Le3/h;->c0(I)V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Le3/h;->e0(I)V

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v1}, Le3/h;->f0(I)V

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->k()Z

    move-result v0

    const/16 v1, 0x63

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->e()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v1}, Le3/h;->H(I)V

    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-direct {p0, v2}, Lnet/lingala/zip4j/io/c;->i(Le3/p;)Le3/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Le3/h;->F(Le3/a;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v2}, Le3/p;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Le3/h;->H(I)V

    .line 10
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->k()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v2}, Le3/h;->N(Z)V

    .line 12
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v3}, Le3/p;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Le3/h;->O(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/h;->D(J)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Le3/h;->Z(I)V

    .line 15
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 17
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileNameInZip is null or empty"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    .line 19
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v4}, Le3/p;->j()Ljava/util/TimeZone;

    move-result-object v4

    .line 20
    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/h;->w(Ljava/io/File;Ljava/util/TimeZone;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/h;->D(J)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Le3/h;->Z(I)V

    .line 21
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Le3/h;->d0(J)V

    .line 22
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v3}, Le3/p;->h()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v4}, Le3/p;->d()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-static {v0, v3, v4}, Lnet/lingala/zip4j/util/h;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_1
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 25
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v3, v0}, Le3/h;->U(Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {v3}, Le3/o;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 27
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    .line 28
    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {v4}, Le3/o;->f()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/h;->o(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Le3/h;->V(I)V

    goto :goto_2

    .line 30
    :cond_4
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->n(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Le3/h;->V(I)V

    .line 31
    :goto_2
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    instance-of v4, v3, Lnet/lingala/zip4j/io/g;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 32
    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    check-cast v3, Lnet/lingala/zip4j/io/g;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/g;->b()I

    move-result v3

    invoke-virtual {v4, v3}, Le3/h;->M(I)V

    goto :goto_3

    .line 33
    :cond_5
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v3, v5}, Le3/h;->M(I)V

    .line 34
    :goto_3
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v3}, Le3/p;->n()Z

    move-result v3

    if-nez v3, :cond_6

    .line 35
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    invoke-direct {p0, v3}, Lnet/lingala/zip4j/io/c;->m(Ljava/io/File;)I

    move-result v3

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x4

    new-array v4, v4, [B

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 36
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v3, v4}, Le3/h;->P([B)V

    .line 37
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v3}, Le3/p;->n()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 38
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\\"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v3, v0}, Le3/h;->L(Z)V

    goto :goto_6

    .line 39
    :cond_8
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-virtual {v0, v3}, Le3/h;->L(Z)V

    .line 40
    :goto_6
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0}, Le3/h;->C()Z

    move-result v0

    const/16 v3, 0x8

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v6, v7}, Le3/h;->G(J)V

    .line 42
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v6, v7}, Le3/h;->d0(J)V

    goto :goto_9

    .line 43
    :cond_9
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->n()Z

    move-result v0

    if-nez v0, :cond_f

    .line 44
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->r(Ljava/io/File;)J

    move-result-wide v8

    .line 45
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->c()I

    move-result v0

    if-nez v0, :cond_e

    .line 46
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->e()I

    move-result v0

    if-nez v0, :cond_a

    .line 47
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    const-wide/16 v6, 0xc

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Le3/h;->G(J)V

    goto :goto_8

    .line 48
    :cond_a
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->e()I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 49
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->a()I

    move-result v0

    if-eq v0, v2, :cond_c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/16 v0, 0x10

    goto :goto_7

    .line 50
    :cond_b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid aes key strength, cannot determine key sizes"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/16 v0, 0x8

    .line 51
    :goto_7
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    int-to-long v6, v0

    add-long/2addr v6, v8

    const-wide/16 v10, 0xa

    add-long/2addr v6, v10

    const-wide/16 v10, 0x2

    add-long/2addr v6, v10

    invoke-virtual {v1, v6, v7}, Le3/h;->G(J)V

    goto :goto_8

    .line 52
    :cond_d
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v6, v7}, Le3/h;->G(J)V

    goto :goto_8

    .line 53
    :cond_e
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v6, v7}, Le3/h;->G(J)V

    .line 54
    :goto_8
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v8, v9}, Le3/h;->d0(J)V

    .line 55
    :cond_f
    :goto_9
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 56
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->e()I

    move-result v0

    if-nez v0, :cond_10

    .line 57
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v1}, Le3/p;->i()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Le3/h;->I(J)V

    :cond_10
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 58
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->D()Z

    move-result v1

    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v4}, Le3/p;->c()I

    move-result v4

    .line 59
    invoke-direct {p0, v1, v4}, Lnet/lingala/zip4j/io/c;->k(ZI)[I

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/f;->a([I)B

    move-result v1

    aput-byte v1, v0, v5

    .line 60
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {v1}, Le3/o;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "UTF8"

    if-eqz v1, :cond_11

    .line 61
    iget-object v6, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {v6}, Le3/o;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    :cond_11
    if-nez v1, :cond_13

    .line 62
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/h;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    aput-byte v3, v0, v2

    goto :goto_a

    :cond_13
    aput-byte v5, v0, v2

    .line 63
    :goto_a
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1, v0}, Le3/h;->X([B)V

    return-void

    .line 64
    :cond_14
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileName is null or empty. unable to create file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le3/i;

    invoke-direct {v0}, Le3/i;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    const v1, 0x4034b50

    .line 3
    invoke-virtual {v0, v1}, Le3/i;->P(I)V

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->z()I

    move-result v1

    invoke-virtual {v0, v1}, Le3/i;->R(I)V

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Le3/i;->z(I)V

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Le3/i;->M(I)V

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le3/i;->Q(J)V

    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Le3/i;->J(I)V

    .line 9
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le3/i;->I(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Le3/i;->D(Z)V

    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Le3/i;->E(I)V

    .line 12
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->d()Le3/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le3/i;->x(Le3/a;)V

    .line 13
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le3/i;->A(J)V

    .line 14
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le3/i;->y(J)V

    .line 15
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v1}, Le3/h;->r()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Le3/i;->L([B)V

    return-void

    .line 16
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null, cannot create local file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/d;->a([BII)I
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 5
    iget-wide p1, p0, Lnet/lingala/zip4j/io/c;->h:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->h:J

    .line 6
    iget-wide p1, p0, Lnet/lingala/zip4j/io/c;->j:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/c;->j:J

    return-void
.end method

.method private i(Le3/p;)Le3/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Le3/a;

    invoke-direct {v0}, Le3/a;-><init>()V

    const-wide/32 v1, 0x9901

    .line 2
    invoke-virtual {v0, v1, v2}, Le3/a;->j(J)V

    const/4 v1, 0x7

    .line 3
    invoke-virtual {v0, v1}, Le3/a;->i(I)V

    const-string v1, "AE"

    .line 4
    invoke-virtual {v0, v1}, Le3/a;->k(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Le3/a;->l(I)V

    .line 6
    invoke-virtual {p1}, Le3/p;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Le3/a;->g(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Le3/p;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Le3/a;->g(I)V

    .line 10
    :goto_0
    invoke-virtual {p1}, Le3/p;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Le3/a;->h(I)V

    return-object v0

    .line 11
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid AES key strength, cannot generate AES Extra data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip parameters are null, cannot generate AES Extra Data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k(ZI)[I
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    aput v2, v1, v3

    goto :goto_0

    :cond_0
    aput v3, v1, v3

    :goto_0
    if-eq p2, v0, :cond_1

    aput v3, v1, v2

    const/4 p1, 0x2

    aput v3, v1, p1

    :cond_1
    const/4 p1, 0x3

    aput v2, v1, p1

    return-object v1
.end method

.method private m(Ljava/io/File;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x12

    return p1

    :cond_1
    const/16 p1, 0x10

    return p1

    .line 4
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 5
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    return p1

    :cond_5
    return v1

    .line 7
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input file is null, cannot get file attributes"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->e()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Lnet/lingala/zip4j/crypto/b;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v1}, Le3/p;->g()[C

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v2}, Le3/p;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/b;-><init>([CI)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid encprytion method"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/crypto/f;

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v1}, Le3/p;->g()[C

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    invoke-virtual {v2}, Le3/i;->m()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/f;-><init>([CI)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    :goto_0
    return-void
.end method

.method private p(Le3/o;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Le3/o;

    invoke-direct {p1}, Le3/o;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    .line 3
    :goto_0
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    new-instance v0, Le3/f;

    invoke-direct {v0}, Le3/f;-><init>()V

    invoke-virtual {p1, v0}, Le3/o;->t(Le3/f;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    new-instance v0, Le3/c;

    invoke-direct {v0}, Le3/c;-><init>()V

    invoke-virtual {p1, v0}, Le3/o;->q(Le3/c;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p1

    invoke-virtual {p1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Le3/c;->d(Ljava/util/ArrayList;)V

    .line 9
    :cond_3
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->g()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Le3/o;->v(Ljava/util/List;)V

    .line 11
    :cond_4
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    instance-of v0, p1, Lnet/lingala/zip4j/io/g;

    if-eqz v0, :cond_5

    .line 12
    check-cast p1, Lnet/lingala/zip4j/io/g;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/g;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Le3/o;->x(Z)V

    .line 14
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/io/g;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/g;->e()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le3/o;->y(J)V

    .line 15
    :cond_5
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->e()Le3/f;

    move-result-object p1

    const-wide/32 v0, 0x6054b50

    invoke-virtual {p1, v0, v1}, Le3/f;->q(J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/io/c;->l:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->k:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/c;->g([BII)V

    .line 3
    iput v2, p0, Lnet/lingala/zip4j/io/c;->l:I

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->k()Z

    move-result v0

    const/16 v1, 0x63

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->e()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    instance-of v2, v0, Lnet/lingala/zip4j/crypto/b;

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/crypto/b;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/b;->f()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 8
    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->j:J

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/lingala/zip4j/io/c;->j:J

    .line 9
    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->h:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/lingala/zip4j/io/c;->h:J

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid encrypter for AES encrypted file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->j:J

    invoke-virtual {v0, v2, v3}, Le3/h;->G(J)V

    .line 12
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->j:J

    invoke-virtual {v0, v2, v3}, Le3/i;->y(J)V

    .line 13
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->m:J

    invoke-virtual {v0, v2, v3}, Le3/h;->d0(J)V

    .line 15
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    invoke-virtual {v0}, Le3/i;->q()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/lingala/zip4j/io/c;->m:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    invoke-virtual {v0, v4, v5}, Le3/i;->Q(J)V

    .line 17
    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0}, Le3/h;->D()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_4

    .line 19
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0}, Le3/h;->j()I

    move-result v0

    if-ne v0, v1, :cond_4

    move-wide v2, v4

    .line 20
    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->e()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 22
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v4, v5}, Le3/h;->I(J)V

    .line 23
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    invoke-virtual {v0, v4, v5}, Le3/i;->A(J)V

    goto :goto_1

    .line 24
    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v2, v3}, Le3/h;->I(J)V

    .line 25
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    invoke-virtual {v0, v2, v3}, Le3/i;->A(J)V

    .line 26
    :goto_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {v0}, Le3/o;->g()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {v0}, Le3/o;->b()Le3/c;

    move-result-object v0

    invoke-virtual {v0}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lc3/b;

    invoke-direct {v0}, Lc3/b;-><init>()V

    .line 29
    iget-wide v1, p0, Lnet/lingala/zip4j/io/c;->h:J

    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v6, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v3, v6}, Lc3/b;->k(Le3/i;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v1, v6

    iput-wide v1, p0, Lnet/lingala/zip4j/io/c;->h:J

    .line 30
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->i:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 31
    iput-wide v4, p0, Lnet/lingala/zip4j/io/c;->j:J

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    .line 33
    iput-wide v4, p0, Lnet/lingala/zip4j/io/c;->m:J

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    int-to-long v0, p1

    .line 1
    iget-wide v2, p0, Lnet/lingala/zip4j/io/c;->j:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    sub-long/2addr v2, v0

    .line 2
    iput-wide v2, p0, Lnet/lingala/zip4j/io/c;->j:J

    :cond_1
    return-void
.end method

.method public h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {v0}, Le3/o;->e()Le3/f;

    move-result-object v0

    iget-wide v1, p0, Lnet/lingala/zip4j/io/c;->h:J

    invoke-virtual {v0, v1, v2}, Le3/f;->p(J)V

    .line 2
    new-instance v0, Lc3/b;

    invoke-direct {v0}, Lc3/b;-><init>()V

    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v2}, Lc3/b;->d(Le3/o;Ljava/io/OutputStream;)V

    return-void
.end method

.method public n()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    return-object v0
.end method

.method public q(Ljava/io/File;Le3/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le3/p;->n()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p2}, Le3/p;->n()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file does not exist"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_3
    :goto_1
    :try_start_0
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    .line 6
    invoke-virtual {p2}, Le3/p;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le3/p;

    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    .line 7
    invoke-virtual {p2}, Le3/p;->n()Z

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1, v1}, Le3/p;->s(Z)V

    .line 10
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1, v0}, Le3/p;->t(I)V

    .line 11
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1, v1}, Le3/p;->q(I)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1}, Le3/p;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 13
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1}, Le3/p;->f()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1}, Le3/p;->f()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    :cond_5
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1, v1}, Le3/p;->s(Z)V

    .line 16
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1, v0}, Le3/p;->t(I)V

    .line 17
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1, v1}, Le3/p;->q(I)V

    .line 18
    :cond_6
    :goto_2
    invoke-direct {p0}, Lnet/lingala/zip4j/io/c;->b()V

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/io/c;->d()V

    .line 20
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->n()Z

    move-result p1

    const-wide/16 v2, 0x4

    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 22
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p1

    invoke-virtual {p1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 23
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    invoke-virtual {p1}, Le3/o;->b()Le3/c;

    move-result-object p1

    invoke-virtual {p1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    const/4 p1, 0x4

    new-array p1, p1, [B

    const v0, 0x8074b50

    .line 24
    invoke-static {p1, v1, v0}, Lnet/lingala/zip4j/util/f;->l([BII)V

    .line 25
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 26
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    .line 27
    :cond_8
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    instance-of v0, p1, Lnet/lingala/zip4j/io/g;

    if-eqz v0, :cond_a

    .line 28
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    .line 29
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {p1, v2, v3}, Le3/h;->a0(J)V

    goto :goto_3

    .line 30
    :cond_9
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    check-cast p1, Lnet/lingala/zip4j/io/g;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/g;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le3/h;->a0(J)V

    goto :goto_3

    .line 31
    :cond_a
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    .line 32
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {p1, v2, v3}, Le3/h;->a0(J)V

    goto :goto_3

    .line 33
    :cond_b
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->c:Le3/h;

    invoke-virtual {p1, v0, v1}, Le3/h;->a0(J)V

    .line 34
    :goto_3
    new-instance p1, Lc3/b;

    invoke-direct {p1}, Lc3/b;-><init>()V

    .line 35
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->g:Le3/o;

    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->d:Le3/i;

    iget-object v4, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, v2, v3, v4}, Lc3/b;->m(Le3/o;Le3/i;Ljava/io/OutputStream;)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    .line 36
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {p1}, Le3/p;->k()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 37
    invoke-direct {p0}, Lnet/lingala/zip4j/io/c;->o()V

    .line 38
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    if-eqz p1, :cond_d

    .line 39
    invoke-virtual {p2}, Le3/p;->e()I

    move-result p1

    if-nez p1, :cond_c

    .line 40
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    check-cast p1, Lnet/lingala/zip4j/crypto/f;

    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/f;->e()[B

    move-result-object p1

    .line 41
    iget-object p2, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 42
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    array-length p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    .line 43
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->j:J

    array-length p1, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->j:J

    goto :goto_4

    .line 44
    :cond_c
    invoke-virtual {p2}, Le3/p;->e()I

    move-result p1

    const/16 p2, 0x63

    if-ne p1, p2, :cond_d

    .line 45
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    check-cast p1, Lnet/lingala/zip4j/crypto/b;

    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/b;->h()[B

    move-result-object p1

    .line 46
    iget-object p2, p0, Lnet/lingala/zip4j/io/c;->e:Lnet/lingala/zip4j/crypto/d;

    check-cast p2, Lnet/lingala/zip4j/crypto/b;

    invoke-virtual {p2}, Lnet/lingala/zip4j/crypto/b;->e()[B

    move-result-object p2

    .line 47
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 48
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 49
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->h:J

    .line 50
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->j:J

    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->j:J

    .line 51
    :cond_d
    :goto_4
    iget-object p1, p0, Lnet/lingala/zip4j/io/c;->i:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    return-void

    .line 52
    :cond_e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file name is empty for external stream"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 54
    throw p1

    :catch_2
    move-exception p1

    .line 55
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public r(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/io/c;->b:Ljava/io/File;

    return-void
.end method

.method protected s(I)V
    .locals 4

    if-lez p1, :cond_0

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/io/c;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/c;->m:J

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/c;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/c;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/c;->f:Le3/p;

    invoke-virtual {v0}, Le3/p;->e()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_3

    .line 7
    iget v0, p0, Lnet/lingala/zip4j/io/c;->l:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    rsub-int/lit8 v2, v0, 0x10

    if-lt p3, v2, :cond_1

    .line 8
    iget-object v2, p0, Lnet/lingala/zip4j/io/c;->k:[B

    rsub-int/lit8 v3, v0, 0x10

    invoke-static {p1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object p2, p0, Lnet/lingala/zip4j/io/c;->k:[B

    array-length v0, p2

    invoke-direct {p0, p2, v1, v0}, Lnet/lingala/zip4j/io/c;->g([BII)V

    .line 10
    iget p2, p0, Lnet/lingala/zip4j/io/c;->l:I

    rsub-int/lit8 p2, p2, 0x10

    sub-int/2addr p3, p2

    .line 11
    iput v1, p0, Lnet/lingala/zip4j/io/c;->l:I

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/io/c;->k:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget p1, p0, Lnet/lingala/zip4j/io/c;->l:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/lingala/zip4j/io/c;->l:I

    return-void

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 14
    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_3

    add-int v2, p3, p2

    sub-int/2addr v2, v0

    .line 15
    iget-object v3, p0, Lnet/lingala/zip4j/io/c;->k:[B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iput v0, p0, Lnet/lingala/zip4j/io/c;->l:I

    sub-int/2addr p3, v0

    :cond_3
    if-eqz p3, :cond_4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/c;->g([BII)V

    :cond_4
    return-void
.end method
