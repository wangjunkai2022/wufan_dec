.class public Lnet/lingala/zip4j/unzip/e;
.super Ljava/lang/Object;
.source "UnzipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Le3/h;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lnet/lingala/zip4j/unzip/e;->b(Le3/h;Ljava/io/File;Le3/k;)V

    return-void
.end method

.method public static b(Le3/h;Ljava/io/File;Le3/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Le3/k;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lnet/lingala/zip4j/unzip/e;->d(Le3/h;Ljava/io/File;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 4
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/e;->c(Le3/h;Ljava/io/File;ZZZZ)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p2}, Le3/k;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 6
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/e;->c(Le3/h;Ljava/io/File;ZZZZ)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p2}, Le3/k;->e()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 8
    invoke-virtual {p2}, Le3/k;->d()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    .line 9
    invoke-virtual {p2}, Le3/k;->b()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 10
    invoke-virtual {p2}, Le3/k;->f()Z

    move-result p2

    xor-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move-object v2, p1

    .line 11
    invoke-static/range {v1 .. v6}, Lnet/lingala/zip4j/unzip/e;->c(Le3/h;Ljava/io/File;ZZZZ)V

    :goto_0
    return-void

    .line 12
    :cond_4
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot set file properties: file doesnot exist"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_5
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot set file properties: output file is null"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_6
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "cannot set file properties: file header is null"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Le3/h;Ljava/io/File;ZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p0, :cond_f

    .line 1
    invoke-virtual {p0}, Le3/h;->k()[B

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-byte p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_a

    const/16 v0, 0x12

    if-eq p0, v0, :cond_c

    const/16 v0, 0x26

    if-eq p0, v0, :cond_7

    const/16 p5, 0x30

    if-eq p0, p5, :cond_6

    const/16 p5, 0x32

    if-eq p0, p5, :cond_4

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p4, :cond_1

    .line 3
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->E(Ljava/io/File;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->G(Ljava/io/File;)V

    :cond_2
    if-eqz p3, :cond_e

    .line 5
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->F(Ljava/io/File;)V

    goto :goto_0

    :pswitch_1
    if-eqz p4, :cond_3

    .line 6
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->E(Ljava/io/File;)V

    :cond_3
    if-eqz p2, :cond_e

    .line 7
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->G(Ljava/io/File;)V

    goto :goto_0

    :cond_4
    :pswitch_2
    if-eqz p4, :cond_5

    .line 8
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->E(Ljava/io/File;)V

    :cond_5
    if-eqz p3, :cond_e

    .line 9
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->F(Ljava/io/File;)V

    goto :goto_0

    :cond_6
    :pswitch_3
    if-eqz p4, :cond_e

    .line 10
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->E(Ljava/io/File;)V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 11
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->G(Ljava/io/File;)V

    :cond_8
    if-eqz p3, :cond_9

    .line 12
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->F(Ljava/io/File;)V

    :cond_9
    if-eqz p5, :cond_e

    .line 13
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->H(Ljava/io/File;)V

    goto :goto_0

    :cond_a
    if-eqz p2, :cond_b

    .line 14
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->G(Ljava/io/File;)V

    :cond_b
    if-eqz p3, :cond_e

    .line 15
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->F(Ljava/io/File;)V

    goto :goto_0

    :cond_c
    if-eqz p3, :cond_e

    .line 16
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->F(Ljava/io/File;)V

    goto :goto_0

    :cond_d
    if-eqz p2, :cond_e

    .line 17
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->G(Ljava/io/File;)V

    :cond_e
    :goto_0
    return-void

    .line 18
    :cond_f
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string p1, "invalid file header. cannot set file attributes"

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Le3/h;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le3/h;->t()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le3/h;->t()I

    move-result p0

    invoke-static {p0}, Lnet/lingala/zip4j/util/h;->j(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_1
    return-void
.end method
