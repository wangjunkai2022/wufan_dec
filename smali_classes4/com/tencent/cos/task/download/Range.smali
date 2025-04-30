.class public Lcom/tencent/cos/task/download/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field protected downloadUrl:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected length:J

.field protected localPath:Ljava/lang/String;

.field protected range:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/cos/task/download/Range;->downloadUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tencent/cos/task/download/Range;->localPath:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    int-to-long p1, p4

    .line 5
    iput-wide p1, p0, Lcom/tencent/cos/task/download/Range;->length:J

    .line 6
    invoke-virtual {p0}, Lcom/tencent/cos/task/download/Range;->isEquals()Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    .line 7
    iput-wide p1, p0, Lcom/tencent/cos/task/download/Range;->range:J

    .line 8
    invoke-virtual {p0, p3}, Lcom/tencent/cos/task/download/Range;->saveRangePart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/download/Range;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/task/download/Range;->length:J

    return-wide v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/download/Range;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/task/download/Range;->range:J

    return-wide v0
.end method

.method public declared-synchronized isEquals()Z
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 3
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4
    :try_start_2
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/cos/task/download/RangePart;

    .line 6
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/cos/task/download/Range;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_1

    .line 7
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 9
    :goto_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    :catch_1
    move-exception v0

    .line 10
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 11
    :goto_1
    monitor-exit p0

    return v2

    .line 12
    :cond_1
    :try_start_8
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/cos/task/download/Range;->localPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v4, :cond_2

    .line 13
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catch_2
    move-exception v0

    .line 14
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 15
    :goto_2
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 16
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 17
    :goto_3
    monitor-exit p0

    return v2

    .line 18
    :cond_2
    :try_start_d
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getFileName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v4, :cond_3

    .line 19
    :try_start_e
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_4

    :catch_4
    move-exception v0

    .line 20
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 21
    :goto_4
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_5

    :catch_5
    move-exception v0

    .line 22
    :try_start_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 23
    :goto_5
    monitor-exit p0

    return v2

    .line 24
    :cond_3
    :try_start_12
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getLength()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/tencent/cos/task/download/Range;->length:J
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    .line 25
    :try_start_13
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_6

    :catch_6
    move-exception v0

    .line 26
    :try_start_14
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 27
    :goto_6
    :try_start_15
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_7

    :catch_7
    move-exception v0

    .line 28
    :try_start_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 29
    :goto_7
    monitor-exit p0

    return v2

    .line 30
    :cond_4
    :try_start_17
    invoke-virtual {v1}, Lcom/tencent/cos/task/download/RangePart;->getRange()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/cos/task/download/Range;->range:J

    .line 31
    iget-wide v6, p0, Lcom/tencent/cos/task/download/Range;->length:J
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 32
    :try_start_18
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_8

    :catch_8
    move-exception v0

    .line 33
    :try_start_19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 34
    :goto_8
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_9

    :catch_9
    move-exception v0

    .line 35
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 36
    :goto_9
    monitor-exit p0

    return v2

    .line 37
    :cond_5
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    goto :goto_a

    :catch_a
    move-exception v0

    .line 38
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 39
    :goto_a
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_b

    :catch_b
    move-exception v0

    .line 40
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    :goto_b
    const/4 v0, 0x1

    .line 41
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_c

    :catch_c
    move-object v1, v0

    goto :goto_f

    :catch_d
    move-object v1, v0

    goto :goto_12

    :catchall_1
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_c

    :catch_e
    nop

    goto :goto_f

    :catch_f
    nop

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_c
    if-eqz v0, :cond_6

    .line 42
    :try_start_20
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    goto :goto_d

    :catch_10
    move-exception v0

    .line 43
    :try_start_21
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    :cond_6
    :goto_d
    if-eqz v3, :cond_7

    .line 44
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_11
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    goto :goto_e

    :catch_11
    move-exception v0

    .line 45
    :try_start_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    :cond_7
    :goto_e
    throw v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    :catch_12
    move-object v3, v1

    :goto_f
    if-eqz v1, :cond_8

    .line 47
    :try_start_24
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_13
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    goto :goto_10

    :catch_13
    move-exception v0

    .line 48
    :try_start_25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    :cond_8
    :goto_10
    if-eqz v3, :cond_9

    .line 49
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_14
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    goto :goto_11

    :catch_14
    move-exception v0

    .line 50
    :try_start_27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    .line 51
    :cond_9
    :goto_11
    monitor-exit p0

    return v2

    :catch_15
    move-object v3, v1

    :goto_12
    if-eqz v1, :cond_a

    .line 52
    :try_start_28
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_16
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    goto :goto_13

    :catch_16
    move-exception v0

    .line 53
    :try_start_29
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    :cond_a
    :goto_13
    if-eqz v3, :cond_b

    .line 54
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_17
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    goto :goto_14

    :catch_17
    move-exception v0

    .line 55
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_3

    .line 56
    :cond_b
    :goto_14
    monitor-exit p0

    return v2

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveRangePart(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 3
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 p1, 0x0

    .line 6
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 10
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 12
    :goto_0
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_9

    :catch_1
    move-exception p1

    .line 13
    :goto_1
    :try_start_7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_9

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 14
    :goto_2
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_0

    .line 15
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catch_7
    move-exception p1

    .line 16
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_0
    :goto_3
    if-eqz v1, :cond_4

    .line 17
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_9

    :catch_8
    move-exception p1

    goto :goto_1

    :catch_9
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 18
    :goto_4
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v0, :cond_1

    .line 19
    :try_start_d
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_5

    :catch_a
    move-exception p1

    .line 20
    :try_start_e
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :cond_1
    :goto_5
    if-eqz v1, :cond_4

    .line 21
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_9

    :catch_b
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v0, :cond_2

    .line 22
    :try_start_10
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_7

    :catch_c
    move-exception v0

    .line 23
    :try_start_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :cond_2
    :goto_7
    if-eqz v1, :cond_3

    .line 24
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_8

    :catch_d
    move-exception v0

    .line 25
    :try_start_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    :cond_3
    :goto_8
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 27
    :cond_4
    :goto_9
    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/download/Range;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/download/Range;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/cos/task/download/Range;->length:J

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/cos/task/download/Range;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setRange(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/cos/task/download/Range;->range:J

    return-void
.end method
