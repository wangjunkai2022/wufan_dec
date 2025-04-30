.class public Lcom/tencent/cos/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeFileStream(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static getFileContent(Ljava/io/InputStream;JI)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/cos/utils/FileUtils;->getFileContentByte(Ljava/io/InputStream;JI)[B

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/String;

    const-string p2, "ISO-8859-1"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public static getFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/tencent/cos/utils/FileUtils;->getFileLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {p0, v1, v2, v0}, Lcom/tencent/cos/utils/FileUtils;->getFileContent(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileContent(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/tencent/cos/utils/FileUtils;->getFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/cos/utils/FileUtils;->getFileContent(Ljava/io/InputStream;JI)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-static {p0}, Lcom/tencent/cos/utils/FileUtils;->closeFileStream(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/tencent/cos/utils/FileUtils;->closeFileStream(Ljava/io/InputStream;)V

    throw p1
.end method

.method public static getFileContentByte(Ljava/io/InputStream;JI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-ltz p3, :cond_2

    .line 1
    new-array v0, p3, [B

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 p1, 0x0

    if-gez p0, :cond_0

    new-array p0, p1, [B

    return-object p0

    :cond_0
    if-ge p0, p3, :cond_1

    .line 4
    new-array p2, p0, [B

    .line 5
    invoke-static {v0, p1, p2, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p2

    :cond_1
    return-object v0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "getFileContent param error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFileContentByte(Ljava/lang/String;JI)[B
    .locals 4

    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-array v1, p3, [B

    .line 8
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p0, 0x0

    .line 10
    invoke-virtual {v2, v1, p0, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-ge p1, p3, :cond_1

    if-lez p1, :cond_1

    .line 11
    new-array p2, p1, [B

    .line 12
    invoke-static {v1, p0, p2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, p2

    .line 13
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v2, v0

    .line 15
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 16
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_4
    move-exception p0

    move-object v2, v0

    .line 17
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    .line 18
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_5
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_3

    .line 20
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :cond_3
    :goto_6
    throw p0
.end method

.method public static getFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFileLength(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/tencent/cos/utils/FileUtils;->isLegalFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\u6587\u4ef6\u4e0d\u5b58\u5728\u3001\u6216\u4e0d\u53ef\u8bfb\u3001\u6216\u8005\u662f\u4e00\u4e2a\u76ee\u5f55"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isLegalFile(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
