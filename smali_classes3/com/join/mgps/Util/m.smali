.class public Lcom/join/mgps/Util/m;
.super Ljava/lang/Object;
.source "CRC32Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)J
    .locals 8

    const-string v0, " "

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v5, v6}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_3

    .line 3
    :catch_2
    :goto_0
    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "File not found."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 4
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    move-wide v5, v1

    move-object v4, v3

    :goto_1
    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 5
    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v7

    if-ltz v7, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v1

    .line 7
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 8
    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-wide v1
.end method
