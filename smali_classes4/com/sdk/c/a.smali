.class public Lcom/sdk/c/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .locals 17

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    const/4 v2, 0x0

    if-eqz p1, :cond_f

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_2
    const-wide/16 v4, 0x0

    if-eqz p4, :cond_3

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v7, v0

    add-long v15, v7, v4

    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz p2, :cond_4

    const/4 v12, 0x1

    move-object/from16 v7, p2

    check-cast v7, Lcom/sdk/a/e;

    move-wide v8, v15

    move-wide v10, v4

    :try_start_2
    invoke-virtual/range {v7 .. v12}, Lcom/sdk/a/e;->a(JJZ)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-nez v0, :cond_4

    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :try_start_4
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-object v3

    :cond_4
    const/16 v0, 0x1000

    :try_start_5
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v14, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v13, v0, v6, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    int-to-long v6, v2

    add-long/2addr v4, v6

    if-eqz p2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v9, p2

    check-cast v9, Lcom/sdk/a/e;

    move-wide v10, v15

    move-object v6, v13

    move-wide v12, v4

    move-object v7, v14

    move v14, v2

    :try_start_6
    invoke-virtual/range {v9 .. v14}, Lcom/sdk/a/e;->a(JJZ)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez v2, :cond_6

    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    return-object v3

    :cond_5
    move-object v6, v13

    move-object v7, v14

    :cond_6
    move-object v13, v6

    move-object v14, v7

    goto :goto_1

    :cond_7
    move-object v6, v13

    move-object v7, v14

    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz p2, :cond_8

    const/4 v14, 0x1

    move-object/from16 v9, p2

    check-cast v9, Lcom/sdk/a/e;

    move-wide v10, v15

    move-wide v12, v4

    :try_start_a
    invoke-virtual/range {v9 .. v14}, Lcom/sdk/a/e;->a(JJZ)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_8
    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v6, v13

    move-object v7, v14

    goto :goto_2

    :catchall_6
    move-exception v0

    move-object v7, v14

    move-object v6, v2

    :goto_2
    move-object v2, v7

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object v6, v2

    :goto_3
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    if-eqz v2, :cond_9

    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto :goto_4

    :catchall_8
    nop

    :cond_9
    :goto_4
    if-eqz v6, :cond_a

    :catchall_9
    :goto_5
    move-object v13, v6

    :try_start_e
    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto :goto_6

    :catchall_a
    nop

    :cond_a
    :goto_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v3, v0

    :cond_c
    return-object v3

    :catchall_b
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_d

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    goto :goto_8

    :catchall_c
    nop

    :cond_d
    :goto_8
    if-eqz v6, :cond_e

    :try_start_10
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    :catchall_d
    :cond_e
    throw v1

    :cond_f
    :goto_9
    return-object v2
.end method
