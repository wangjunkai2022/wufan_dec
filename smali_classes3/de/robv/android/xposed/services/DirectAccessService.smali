.class public final Lde/robv/android/xposed/services/DirectAccessService;
.super Lde/robv/android/xposed/services/BaseService;
.source "DirectAccessService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lde/robv/android/xposed/services/BaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFileAccess(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filename",
            "mode"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return p1

    :cond_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    return p1

    :cond_2
    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result p2

    if-nez p2, :cond_3

    return p1

    :cond_3
    return v1
.end method

.method public checkFileExists(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public getFileInputStream(Ljava/lang/String;JJ)Lde/robv/android/xposed/services/FileResult;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filename",
            "previousSize",
            "previousTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v0, p2, v3

    if-nez v0, :cond_0

    cmp-long p2, p4, v5

    if-nez p2, :cond_0

    .line 5
    new-instance p1, Lde/robv/android/xposed/services/FileResult;

    invoke-direct {p1, v3, v4, v5, v6}, Lde/robv/android/xposed/services/FileResult;-><init>(JJ)V

    return-object p1

    .line 6
    :cond_0
    new-instance p2, Lde/robv/android/xposed/services/FileResult;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance p3, Ljava/io/FileInputStream;

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x4000

    invoke-direct {v2, p3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lde/robv/android/xposed/services/FileResult;-><init>(Ljava/io/InputStream;JJ)V

    return-object p2
.end method

.method public getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x4000

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public hasDirectFileAccess()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readFile(Ljava/lang/String;IIJJ)Lde/robv/android/xposed/services/FileResult;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filename",
            "offset",
            "length",
            "previousSize",
            "previousTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v5, p4, v1

    if-nez v5, :cond_0

    cmp-long p4, p6, v3

    if-nez p4, :cond_0

    .line 14
    new-instance p1, Lde/robv/android/xposed/services/FileResult;

    invoke-direct {p1, v1, v2, v3, v4}, Lde/robv/android/xposed/services/FileResult;-><init>(JJ)V

    return-object p1

    :cond_0
    if-gtz p2, :cond_1

    if-gtz p3, :cond_1

    .line 15
    new-instance p7, Lde/robv/android/xposed/services/FileResult;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/services/DirectAccessService;->readFile(Ljava/lang/String;)[B

    move-result-object p2

    move-object p1, p7

    move-wide p3, v1

    move-wide p5, v3

    invoke-direct/range {p1 .. p6}, Lde/robv/android/xposed/services/FileResult;-><init>([BJJ)V

    return-object p7

    :cond_1
    const-string p4, " is out of range for "

    if-lez p2, :cond_3

    int-to-long p5, p2

    cmp-long p7, p5, v1

    if-gez p7, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Offset "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_3
    :goto_0
    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    if-lez p3, :cond_6

    add-int p5, p2, p3

    int-to-long p5, p5

    cmp-long p7, p5, v1

    if-gtz p7, :cond_5

    goto :goto_1

    .line 17
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Length "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_1
    if-gtz p3, :cond_7

    int-to-long p3, p2

    sub-long p3, v1, p3

    long-to-int p3, p3

    .line 18
    :cond_7
    new-array p3, p3, [B

    .line 19
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    int-to-long p4, p2

    .line 20
    invoke-virtual {p1, p4, p5}, Ljava/io/FileInputStream;->skip(J)J

    .line 21
    invoke-virtual {p1, p3}, Ljava/io/FileInputStream;->read([B)I

    .line 22
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 23
    new-instance p7, Lde/robv/android/xposed/services/FileResult;

    move-object p1, p7

    move-object p2, p3

    move-wide p3, v1

    move-wide p5, v3

    invoke-direct/range {p1 .. p6}, Lde/robv/android/xposed/services/FileResult;-><init>([BJJ)V

    return-object p7
.end method

.method public readFile(Ljava/lang/String;JJ)Lde/robv/android/xposed/services/FileResult;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filename",
            "previousSize",
            "previousTime"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v0, p2, v3

    if-nez v0, :cond_0

    cmp-long p2, p4, v5

    if-nez p2, :cond_0

    .line 9
    new-instance p1, Lde/robv/android/xposed/services/FileResult;

    invoke-direct {p1, v3, v4, v5, v6}, Lde/robv/android/xposed/services/FileResult;-><init>(JJ)V

    return-object p1

    .line 10
    :cond_0
    new-instance p2, Lde/robv/android/xposed/services/FileResult;

    invoke-virtual {p0, p1}, Lde/robv/android/xposed/services/DirectAccessService;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lde/robv/android/xposed/services/FileResult;-><init>([BJJ)V

    return-object p2
.end method

.method public readFile(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p1, p1, [B

    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p1
.end method

.method public statFile(Ljava/lang/String;)Lde/robv/android/xposed/services/FileResult;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Lde/robv/android/xposed/services/FileResult;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {p1, v1, v2, v3, v4}, Lde/robv/android/xposed/services/FileResult;-><init>(JJ)V

    return-object p1
.end method
