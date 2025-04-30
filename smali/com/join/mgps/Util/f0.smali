.class public Lcom/join/mgps/Util/f0;
.super Ljava/lang/Object;
.source "FileOpenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Lcom/join/mgps/Util/f0;->delete(Ljava/io/File;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 10
    :goto_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 12
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceDir   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 5
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    aget-object v2, v0, v1

    .line 7
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v2, v3}, Lcom/join/mgps/Util/f0;->d(Ljava/io/File;Ljava/io/File;)V

    .line 9
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v2, v3}, Lcom/join/mgps/Util/f0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceDir   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 5
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    aget-object v2, v0, v1

    .line 7
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v2, v3, p2}, Lcom/join/mgps/Util/f0;->c(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 9
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v2, v3, p2}, Lcom/join/mgps/Util/f0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private static c(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".iso"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ISO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".pbp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".wsc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ws"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".nds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".z64"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".n64"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x1400000

    cmp-long p2, v0, v2

    if-lez p2, :cond_3

    return-void

    .line 8
    :cond_3
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 10
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 11
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v1, 0x1400

    new-array v1, v1, [B

    .line 12
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x0

    .line 13
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 15
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 16
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 17
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 18
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private static d(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x1400

    new-array v2, v2, [B

    .line 6
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 7
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 9
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 10
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 12
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 9
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 10
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/join/mgps/Util/f0;->delete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 13
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 15
    :cond_3
    :goto_2
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-void
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    aget-object v1, p0, v0

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 9
    invoke-virtual {v4, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/papa91/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 11
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 12
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_3

    .line 13
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    aget-object v2, v0, v3

    invoke-static {v2, v1, p1}, Lcom/join/mgps/Util/f0;->c(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 16
    :cond_1
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sorceDir   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "targetDir   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    invoke-static {v1, v2, p1}, Lcom/join/mgps/Util/f0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static declared-synchronized g(Ljava/lang/String;)Z
    .locals 5

    const-class v0, Lcom/join/mgps/Util/f0;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 5
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :cond_3
    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static h(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, v0, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "/"

    const-string v1, "mgpapa/papaweb/"

    const-string v2, "papawebFile.zip"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 9
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 12
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 13
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x1000

    new-array v4, p0, [B

    .line 15
    :goto_0
    invoke-virtual {v2, v4, v3, p0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_1

    .line 16
    invoke-virtual {v1, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 19
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 21
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    :goto_2
    invoke-static {v6, v0}, Lcom/join/mgps/Util/s2;->g(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    .line 23
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 24
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return p0

    :catchall_0
    move-exception p0

    move-object v4, v1

    goto :goto_8

    :catch_3
    move-exception p0

    move-object v4, v1

    goto :goto_4

    :catch_4
    move-exception p0

    move-object v4, v1

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_5
    move-exception p0

    .line 26
    :goto_4
    :try_start_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 27
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return v3

    :catch_7
    move-exception p0

    .line 29
    :goto_6
    :try_start_9
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 30
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_7

    :catch_8
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return v3

    .line 32
    :goto_8
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    :goto_9
    goto :goto_b

    :goto_a
    throw p0

    :goto_b
    goto :goto_a
.end method

.method private static j(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "hookj"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string v0, "nbbatman"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "uccops"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "inhunt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ssoldier"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "fba_v2.cfg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "ftsc3"

    const-string v1, "lkrexe2"

    const-string v2, "lkrexe3"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "vba"

    const/16 v3, 0x17

    if-lt v1, v3, :cond_0

    return-object v2

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kdygmyhbs3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 4
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "kdyg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_2

    return-object v3

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    .line 5
    aget-object v5, v0, v4

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move-object v5, v0

    const/4 v4, 0x0

    :goto_1
    const/16 v6, 0x64

    if-gt v4, v6, :cond_7

    .line 7
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 9
    new-instance v7, Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    if-eqz v5, :cond_5

    .line 10
    invoke-virtual {v7, v5}, Ljava/sql/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move-object v5, v7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gt v1, v6, :cond_a

    .line 11
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "vba."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 13
    new-instance v7, Ljava/sql/Date;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    if-eqz v0, :cond_8

    .line 14
    invoke-virtual {v7, v0}, Ljava/sql/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move-object v0, v7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    if-eqz v5, :cond_c

    if-eqz v0, :cond_c

    .line 15
    invoke-virtual {v5, v0}, Ljava/sql/Date;->after(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object v3

    :cond_b
    return-object v2

    :cond_c
    if-nez v5, :cond_d

    return-object v2

    :cond_d
    return-object v3
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/f0;->u(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/f0;->j(Ljava/lang/String;)Z

    move-result v1

    .line 8
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/f0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v4, v5

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 11
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "papa91"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x2f

    .line 14
    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/2addr v8, v5

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 16
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 19
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_4
    new-instance v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 22
    array-length v6, p1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_9

    aget-object v8, p1, v7

    .line 23
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 24
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v12}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "save.*dat"

    .line 25
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 26
    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 27
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    const-string v12, ".fs"

    .line 28
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, ".sav"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, ".dsv"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, ".brm"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, ".srm"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, ".eep"

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v11, :cond_8

    .line 29
    :cond_6
    new-instance v10, Lcom/join/mgps/dto/RomArchived;

    invoke-direct {v10}, Lcom/join/mgps/dto/RomArchived;-><init>()V

    .line 30
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/join/mgps/dto/RomArchived;->setArchivedPath(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v10}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 32
    new-instance v8, Ljava/io/File;

    invoke-virtual {v10}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 34
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/join/mgps/dto/RomArchived;->setSize(J)V

    .line 35
    invoke-static {v8}, Lcom/join/mgps/Util/v0;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/join/mgps/dto/RomArchived;->setMd5(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/join/mgps/dto/RomArchived;->setFileName(Ljava/lang/String;)V

    .line 37
    :cond_7
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 38
    :cond_9
    invoke-static {v9, v4, v1}, Lcom/join/mgps/Util/f0;->v(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v0

    :cond_a
    const-string p1, ";"

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 41
    array-length p1, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_11

    aget-object v2, p0, v1

    const-string v4, ","

    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 43
    new-instance v4, Lcom/join/mgps/dto/RomArchived;

    invoke-direct {v4}, Lcom/join/mgps/dto/RomArchived;-><init>()V

    const/4 v6, 0x0

    .line 44
    :goto_5
    :try_start_0
    array-length v7, v2

    if-ge v6, v7, :cond_e

    if-nez v6, :cond_b

    .line 45
    aget-object v7, v2, v3

    invoke-virtual {v4, v7}, Lcom/join/mgps/dto/RomArchived;->setArchivedPath(Ljava/lang/String;)V

    :cond_b
    if-ne v6, v5, :cond_c

    .line 46
    aget-object v7, v2, v5

    invoke-virtual {v4, v7}, Lcom/join/mgps/dto/RomArchived;->setArchivedImagePath(Ljava/lang/String;)V

    :cond_c
    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    .line 47
    aget-object v7, v2, v7

    invoke-virtual {v4, v7}, Lcom/join/mgps/dto/RomArchived;->setArchivedTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :catch_0
    move-exception v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    const-wide/16 v6, 0x0

    .line 49
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 50
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/join/mgps/dto/RomArchived;->setFileName(Ljava/lang/String;)V

    .line 54
    invoke-static {v2}, Lcom/join/mgps/Util/v0;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/join/mgps/dto/RomArchived;->setMd5(Ljava/lang/String;)V

    .line 55
    :cond_f
    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 56
    new-instance v2, Ljava/io/File;

    invoke-virtual {v4}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 59
    :cond_10
    invoke-virtual {v4, v6, v7}, Lcom/join/mgps/dto/RomArchived;->setSize(J)V

    .line 60
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_11
    return-object v0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RomArchived;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->v3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/f0;->u(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/f0;->j(Ljava/lang/String;)Z

    move-result v1

    .line 8
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 9
    invoke-static {p1}, Lcom/join/mgps/Util/f0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v4

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "papa91"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v6, 0x2f

    .line 14
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v4

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 16
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 19
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_4
    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 22
    invoke-static {v7, v2, v1}, Lcom/join/mgps/Util/f0;->w(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v0

    :cond_5
    const-string p1, ";"

    .line 24
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 25
    array-length p1, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_c

    aget-object v2, p0, v1

    const-string v5, ","

    .line 26
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 27
    new-instance v5, Lcom/join/mgps/dto/RomArchived;

    invoke-direct {v5}, Lcom/join/mgps/dto/RomArchived;-><init>()V

    const/4 v6, 0x0

    .line 28
    :goto_3
    :try_start_0
    array-length v7, v2

    if-ge v6, v7, :cond_9

    if-nez v6, :cond_6

    .line 29
    aget-object v7, v2, v3

    invoke-virtual {v5, v7}, Lcom/join/mgps/dto/RomArchived;->setArchivedPath(Ljava/lang/String;)V

    :cond_6
    if-ne v6, v4, :cond_7

    .line 30
    aget-object v7, v2, v4

    invoke-virtual {v5, v7}, Lcom/join/mgps/dto/RomArchived;->setArchivedImagePath(Ljava/lang/String;)V

    :cond_7
    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 31
    aget-object v7, v2, v7

    invoke-virtual {v5, v7}, Lcom/join/mgps/dto/RomArchived;->setArchivedTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    const-wide/16 v6, 0x0

    .line 33
    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 34
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/join/mgps/dto/RomArchived;->setFileName(Ljava/lang/String;)V

    .line 38
    invoke-static {v2}, Lcom/join/mgps/Util/v0;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/join/mgps/dto/RomArchived;->setMd5(Ljava/lang/String;)V

    .line 39
    :cond_a
    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 40
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Lcom/join/mgps/dto/RomArchived;->getArchivedImagePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 43
    :cond_b
    invoke-virtual {v5, v6, v7}, Lcom/join/mgps/dto/RomArchived;->setSize(J)V

    .line 44
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_c
    return-object v0
.end method

.method private static n(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "_data"

    const-string v2, "_display_name"

    .line 1
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, v1

    .line 3
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    .line 5
    :try_start_0
    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v0

    :goto_0
    const/4 v4, 0x1

    .line 6
    aget-object v1, v1, v4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 8
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    :cond_2
    invoke-static {p1, p0, v1}, Lcom/join/mgps/Util/f0;->p(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public static o(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcom/join/mgps/Util/f0;->n(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static p(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/f0;->h(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 6
    :catch_0
    :cond_0
    throw p0

    :catch_1
    move-object p1, v1

    :catch_2
    if-eqz p1, :cond_1

    goto :goto_0

    :catch_3
    :cond_1
    :goto_2
    return-object v1
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 3
    aget-object v1, p0, v0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/join/mgps/Util/f0;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object p2
.end method

.method public static r(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 4
    aget-object v3, p0, v2

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/join/mgps/Util/f0;->r(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object p2

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object p2
.end method

.method public static s(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->w1(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/papa91/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    .line 3
    aget-object v1, p0, v0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, ""

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".iso"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".ISO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".cue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".pbp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".img"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".mdf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".wsc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ws"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/join/mgps/Util/f0;->t(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object p1
.end method

.method private static u(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "szfy"

    const-string v1, "sgz3"

    const-string v2, "lb3"

    const-string v3, "qgqs97"

    const-string v4, "qgqs98"

    const-string v5, "mhzx4"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    .line 2
    aget-object v4, v0, v2

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "md_v2.cfg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static v(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, ""

    if-eqz v0, :cond_13

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    .line 7
    :goto_0
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    move v7, v6

    .line 8
    :goto_1
    array-length v8, v2

    if-ge v7, v8, :cond_3

    .line 9
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    .line 10
    aget-object v8, v2, v7

    .line 11
    aget-object v9, v2, v4

    aput-object v9, v2, v7

    .line 12
    aput-object v8, v2, v4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "vba"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v4

    move-object v4, v0

    move-object/from16 v0, v18

    goto :goto_2

    :cond_5
    move-object v4, v0

    :goto_2
    const-string v6, "_v2"

    if-eqz p2, :cond_6

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    const/4 v7, 0x0

    move-object v8, v7

    const/4 v9, 0x0

    .line 17
    :goto_3
    array-length v10, v2

    if-ge v9, v10, :cond_12

    .line 18
    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_11

    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    goto/16 :goto_7

    .line 19
    :cond_7
    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 22
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_lob"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 23
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 24
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 25
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "_net"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 26
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 27
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 28
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 29
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 30
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_a
    move-object v13, v0

    move-object v14, v4

    .line 31
    :goto_4
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 32
    aget-object v13, v2, v9

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aget-object v15, v2, v9

    .line 33
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    .line 34
    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, -0x1

    .line 35
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v13, -0x1

    :goto_5
    if-eq v13, v15, :cond_11

    .line 36
    new-instance v15, Ljava/sql/Date;

    aget-object v16, v2, v9

    move-object/from16 p0, v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v15, v5, v6}, Ljava/sql/Date;-><init>(J)V

    .line 37
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    const-string v15, ","

    if-nez v13, :cond_b

    .line 39
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v2, v9

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v2, v9

    .line 40
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".png,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 p2, v4

    goto/16 :goto_8

    :cond_b
    const/16 v13, 0x2f

    move-object/from16 v16, v0

    .line 42
    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-nez v7, :cond_c

    .line 43
    new-instance v7, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const/4 v13, 0x0

    :goto_6
    const-string v0, "TmpState"

    if-nez v8, :cond_d

    .line 44
    new-instance v8, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 45
    :cond_d
    new-instance v13, Ljava/io/File;

    move-object/from16 p2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 47
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    :cond_e
    const/16 v0, 0x2f

    .line 48
    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    .line 50
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".png"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 53
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 54
    aget-object v12, v2, v9

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 55
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v2, v9

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 56
    aget-object v13, v2, v9

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    move-object/from16 v17, v3

    .line 57
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    aget-object v0, v2, v9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 59
    aget-object v0, v2, v9

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 60
    invoke-virtual {v3, v13, v14}, Ljava/io/File;->setLastModified(J)Z

    .line 61
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 63
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 65
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 66
    invoke-virtual {v3, v12, v13}, Ljava/io/File;->setLastModified(J)Z

    .line 67
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8

    :cond_11
    :goto_7
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 p2, v4

    move-object/from16 p0, v6

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, p0

    move-object/from16 v4, p2

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_12
    if-eqz v7, :cond_13

    if-eqz v8, :cond_13

    .line 69
    invoke-static {v8, v7}, Lcom/join/mgps/Util/f0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_9
    return-object v1
.end method

.method private static w(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, ""

    if-eqz v0, :cond_11

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/"

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    .line 7
    :goto_0
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_4

    add-int/lit8 v6, v4, 0x1

    move v7, v6

    .line 8
    :goto_1
    array-length v8, v2

    if-ge v7, v8, :cond_3

    .line 9
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    .line 10
    aget-object v8, v2, v7

    .line 11
    aget-object v9, v2, v4

    aput-object v9, v2, v7

    .line 12
    aput-object v8, v2, v4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "vba"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v4

    move-object v4, v0

    move-object/from16 v0, v18

    goto :goto_2

    :cond_5
    move-object v4, v0

    :goto_2
    const-string v6, "_v2"

    if-eqz p2, :cond_6

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    const/4 v7, 0x0

    move-object v8, v7

    const/4 v9, 0x0

    .line 17
    :goto_3
    array-length v10, v2

    if-ge v9, v10, :cond_10

    .line 18
    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_f

    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    goto/16 :goto_7

    .line 19
    :cond_7
    aget-object v10, v2, v9

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 21
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 22
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 23
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 24
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_8
    move-object v13, v0

    move-object v14, v4

    .line 25
    :goto_4
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 26
    aget-object v13, v2, v9

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aget-object v15, v2, v9

    .line 27
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    .line 28
    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, -0x1

    .line 29
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const/4 v13, -0x1

    :goto_5
    if-eq v13, v15, :cond_f

    .line 30
    new-instance v15, Ljava/sql/Date;

    aget-object v16, v2, v9

    move-object/from16 p0, v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v15, v5, v6}, Ljava/sql/Date;-><init>(J)V

    .line 31
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MM\u6708dd\u65e5 HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v5, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    const-string v15, ","

    if-nez v13, :cond_9

    .line 33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v2, v9

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v2, v9

    .line 34
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".png,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 p2, v4

    goto/16 :goto_8

    :cond_9
    const/16 v13, 0x2f

    move-object/from16 v16, v0

    .line 36
    invoke-virtual {v10, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-nez v7, :cond_a

    .line 37
    new-instance v7, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    const/4 v13, 0x0

    :goto_6
    const-string v0, "TmpState"

    if-nez v8, :cond_b

    .line 38
    new-instance v8, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 39
    :cond_b
    new-instance v13, Ljava/io/File;

    move-object/from16 p2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 41
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    :cond_c
    const/16 v0, 0x2f

    .line 42
    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    .line 44
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".png"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 47
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 48
    aget-object v12, v2, v9

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 49
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v2, v9

    invoke-virtual {v14}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 50
    aget-object v13, v2, v9

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    move-object/from16 v17, v3

    .line 51
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    aget-object v0, v2, v9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 53
    aget-object v0, v2, v9

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 54
    invoke-virtual {v3, v13, v14}, Ljava/io/File;->setLastModified(J)Z

    .line 55
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 57
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 59
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 60
    invoke-virtual {v3, v12, v13}, Ljava/io/File;->setLastModified(J)Z

    .line 61
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8

    :cond_f
    :goto_7
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 p2, v4

    move-object/from16 p0, v6

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, p0

    move-object/from16 v4, p2

    move-object/from16 v0, v16

    move-object/from16 v3, v17

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_10
    if-eqz v7, :cond_11

    if-eqz v8, :cond_11

    .line 63
    invoke-static {v8, v7}, Lcom/join/mgps/Util/f0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_9
    return-object v1
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/MApplication;->q:Lcom/MApplication;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public z(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
