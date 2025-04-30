.class public Lnet/lingala/zip4j/unzip/d;
.super Ljava/lang/Object;
.source "UnzipEngine.java"


# instance fields
.field private a:Le3/o;

.field private b:Le3/h;

.field private c:I

.field private d:Le3/i;

.field private e:Lnet/lingala/zip4j/crypto/c;

.field private f:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Le3/o;Le3/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    .line 4
    iput-object p2, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    .line 5
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/unzip/d;->f:Ljava/util/zip/CRC32;

    return-void

    .line 6
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid parameters passed to StoreUnzip. One or more of the parameters were null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Le3/a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Le3/a;->a()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 p1, 0x10

    return p1

    .line 2
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unable to determine salt length: invalid aes key strength"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0xc

    return p1

    :cond_2
    const/16 p1, 0x8

    return p1

    .line 3
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unable to determine salt length: AESExtraDataRecord is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/d;->d()Ljava/io/RandomAccessFile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v3}, Le3/o;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 3
    :cond_0
    new-instance v1, Lc3/a;

    invoke-direct {v1, v0}, Lc3/a;-><init>(Ljava/io/RandomAccessFile;)V

    .line 4
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v1, v2}, Lc3/a;->o(Le3/h;)Le3/i;

    move-result-object v1

    iput-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Le3/i;->c()I

    move-result v1

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v2}, Le3/h;->f()I

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v0, 0x1

    return v0

    .line 7
    :cond_2
    :try_start_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "error reading local file header. Is this a valid zip file?"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 8
    :try_start_4
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    .line 9
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 10
    :catch_3
    :cond_3
    throw v1
.end method

.method private d()Ljava/io/RandomAccessFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v0}, Le3/o;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v0}, Le3/h;->i()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 4
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v2}, Le3/o;->l()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v3}, Le3/o;->e()Le3/f;

    move-result-object v3

    invoke-virtual {v3}, Le3/f;->d()I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v0}, Le3/o;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x9

    const-string v5, "."

    if-lt v0, v3, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ".z"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, ".z0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget v0, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 11
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 12
    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/f;->e([BI)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x8074b50

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid first part split file signature"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 15
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private e(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, " - Wrong Password?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 5
    :goto_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :goto_2
    if-eqz p2, :cond_2

    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 6
    :catch_1
    :cond_2
    throw p1

    :cond_3
    :goto_3
    if-eqz p2, :cond_4

    goto :goto_1

    :catch_2
    :cond_4
    :goto_4
    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le3/o;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v0}, Le3/o;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/d;->d()Ljava/io/RandomAccessFile;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v2}, Le3/o;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input parameter is null in getFilePointer"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(Ljava/io/RandomAccessFile;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [B

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private h(Ljava/io/RandomAccessFile;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v0}, Le3/i;->a()Le3/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v0}, Le3/i;->a()Le3/a;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/unzip/d;->a(Le3/a;)I

    move-result v0

    new-array v0, v0, [B

    .line 4
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v1}, Le3/i;->n()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {p2}, Le3/h;->p()Ljava/lang/String;

    move-result-object p2

    .line 3
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, "file.separator"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/unzip/d;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7
    :cond_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid output path"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private o(Ljava/io/RandomAccessFile;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v0, 0xc

    :try_start_0
    new-array v1, v0, [B

    .line 1
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v2}, Le3/i;->n()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private q(Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/d;->r(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 4
    throw p1

    .line 5
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "local file header is null, cannot initialize input stream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private r(Ljava/io/RandomAccessFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Le3/i;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v0}, Le3/i;->f()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lnet/lingala/zip4j/crypto/e;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/d;->o(Ljava/io/RandomAccessFile;)[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/lingala/zip4j/crypto/e;-><init>(Le3/h;[B)V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v0}, Le3/i;->f()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 6
    new-instance v0, Lnet/lingala/zip4j/crypto/a;

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/d;->h(Ljava/io/RandomAccessFile;)[B

    move-result-object v2

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/unzip/d;->g(Ljava/io/RandomAccessFile;)[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/lingala/zip4j/crypto/a;-><init>(Le3/i;[B[B)V

    iput-object v0, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "unsupported encryption method"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 8
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "local file header is null, cannot init decrypter"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Le3/h;->j()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lnet/lingala/zip4j/crypto/a;

    if-eqz v1, :cond_4

    .line 4
    check-cast v0, Lnet/lingala/zip4j/crypto/a;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/a;->d()[B

    move-result-object v0

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    check-cast v1, Lnet/lingala/zip4j/crypto/a;

    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/a;->g()[B

    move-result-object v1

    const/16 v2, 0xa

    new-array v3, v2, [B

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    .line 6
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 8
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "invalid CRC (MAC) for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v2}, Le3/h;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "CRC (MAC) check failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v2}, Le3/h;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 11
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v2}, Le3/h;->g()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 12
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "invalid CRC for file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v1}, Le3/h;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v1}, Le3/i;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v1}, Le3/i;->f()I

    move-result v1

    if-nez v1, :cond_3

    .line 15
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " - Wrong Password?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    return-void
.end method

.method public i()Lnet/lingala/zip4j/crypto/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    return-object v0
.end method

.method public j()Le3/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    return-object v0
.end method

.method public k()Lnet/lingala/zip4j/io/h;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "r"

    .line 2
    invoke-direct {p0, v1}, Lnet/lingala/zip4j/unzip/d;->f(Ljava/lang/String;)Ljava/io/RandomAccessFile;

    move-result-object v0

    const-string v1, "local header and file header do not match"

    .line 3
    invoke-direct {p0}, Lnet/lingala/zip4j/unzip/d;->c()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/unzip/d;->q(Ljava/io/RandomAccessFile;)V

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v1}, Le3/i;->b()J

    move-result-wide v1

    .line 6
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v3}, Le3/i;->n()J

    move-result-wide v3

    .line 7
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v5}, Le3/i;->u()Z

    move-result v5

    const/16 v6, 0x63

    if-eqz v5, :cond_2

    .line 8
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v5}, Le3/i;->f()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 9
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    instance-of v7, v5, Lnet/lingala/zip4j/crypto/a;

    if-eqz v7, :cond_0

    .line 10
    check-cast v5, Lnet/lingala/zip4j/crypto/a;

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/a;->f()I

    move-result v5

    .line 11
    iget-object v7, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    check-cast v7, Lnet/lingala/zip4j/crypto/a;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/a;->e()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0xa

    int-to-long v7, v5

    sub-long/2addr v1, v7

    .line 12
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    check-cast v5, Lnet/lingala/zip4j/crypto/a;

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/a;->f()I

    move-result v5

    .line 13
    iget-object v7, p0, Lnet/lingala/zip4j/unzip/d;->e:Lnet/lingala/zip4j/crypto/c;

    check-cast v7, Lnet/lingala/zip4j/crypto/a;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/a;->e()I

    move-result v7

    add-int/2addr v5, v7

    int-to-long v7, v5

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "invalid decryptor when trying to calculate compressed size for AES encrypted file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v3}, Le3/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_1
    iget-object v5, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    invoke-virtual {v5}, Le3/i;->f()I

    move-result v5

    if-nez v5, :cond_2

    const-wide/16 v7, 0xc

    sub-long/2addr v1, v7

    :goto_0
    add-long/2addr v3, v7

    :cond_2
    move-wide v7, v1

    move-wide v4, v3

    .line 18
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v1}, Le3/h;->f()I

    move-result v1

    .line 19
    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v2}, Le3/h;->j()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 20
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v1}, Le3/h;->d()Le3/a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 21
    iget-object v1, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v1}, Le3/h;->d()Le3/a;

    move-result-object v1

    invoke-virtual {v1}, Le3/a;->b()I

    move-result v1

    goto :goto_1

    .line 22
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "AESExtraDataRecord does not exist for AES encrypted file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    invoke-virtual {v3}, Le3/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_4
    :goto_1
    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz v1, :cond_6

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 24
    new-instance v1, Lnet/lingala/zip4j/io/h;

    new-instance v9, Lnet/lingala/zip4j/io/e;

    move-object v2, v9

    move-object v3, v0

    move-wide v6, v7

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lnet/lingala/zip4j/io/e;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/d;)V

    invoke-direct {v1, v9}, Lnet/lingala/zip4j/io/h;-><init>(Lnet/lingala/zip4j/io/a;)V

    return-object v1

    .line 25
    :cond_5
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "compression type not supported"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_6
    new-instance v1, Lnet/lingala/zip4j/io/h;

    new-instance v9, Lnet/lingala/zip4j/io/f;

    move-object v2, v9

    move-object v3, v0

    move-wide v6, v7

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lnet/lingala/zip4j/io/f;-><init>(Ljava/io/RandomAccessFile;JJLnet/lingala/zip4j/unzip/d;)V

    invoke-direct {v1, v9}, Lnet/lingala/zip4j/io/h;-><init>(Lnet/lingala/zip4j/io/a;)V

    return-object v1

    .line 27
    :cond_7
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    if-eqz v0, :cond_8

    .line 28
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    :catch_1
    :cond_8
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v1

    if-eqz v0, :cond_9

    .line 30
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 31
    :catch_3
    :cond_9
    throw v1

    .line 32
    :cond_a
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null, cannot get inputstream"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Le3/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->d:Le3/i;

    return-object v0
.end method

.method public p()Le3/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    return-object v0
.end method

.method public s()Ljava/io/RandomAccessFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v0}, Le3/o;->l()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    iget-object v2, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v2}, Le3/o;->e()Le3/f;

    move-result-object v2

    invoke-virtual {v2}, Le3/f;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    invoke-virtual {v0}, Le3/o;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    const/16 v2, 0x9

    const-string v3, "."

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ".z"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ".z0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    iget v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/lingala/zip4j/unzip/d;->c:I

    .line 8
    :try_start_0
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "zip split file does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public t(Lf3/a;Ljava/lang/String;Ljava/lang/String;Le3/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->a:Le3/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    if-eqz v0, :cond_2

    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1000

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0}, Lnet/lingala/zip4j/unzip/d;->k()Lnet/lingala/zip4j/io/h;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/d;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 4
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 5
    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/unzip/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 6
    iget-object p1, p0, Lnet/lingala/zip4j/unzip/d;->b:Le3/h;

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2, p3}, Lnet/lingala/zip4j/unzip/d;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, p4}, Lnet/lingala/zip4j/unzip/e;->b(Le3/h;Ljava/io/File;Le3/k;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/unzip/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 8
    :try_start_2
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v5, v3

    .line 9
    invoke-virtual {p1, v5, v6}, Lf3/a;->w(J)V

    .line 10
    invoke-virtual {p1}, Lf3/a;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p2, 0x3

    .line 11
    invoke-virtual {p1, p2}, Lf3/a;->setResult(I)V

    .line 12
    invoke-virtual {p1, v4}, Lf3/a;->u(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    invoke-direct {p0, v2, v1}, Lnet/lingala/zip4j/unzip/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void

    :catchall_0
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p2, v1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p2, v1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object p2, v1

    .line 14
    :goto_0
    :try_start_3
    new-instance p3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p3, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_3
    move-exception p1

    move-object p2, v1

    .line 15
    :goto_1
    new-instance p3, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p3, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    .line 16
    :goto_2
    invoke-direct {p0, v1, p2}, Lnet/lingala/zip4j/unzip/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 17
    throw p1

    .line 18
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid parameters passed during unzipping file. One or more of the parameters were null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update(I)V

    return-void
.end method

.method public v([BII)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/unzip/d;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_0
    return-void
.end method
