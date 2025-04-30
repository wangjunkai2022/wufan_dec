.class Lcom/join/android/app/common/dialog/j$d;
.super Ljava/lang/Object;
.source "LocalGameThreeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/dialog/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/Boolean;

.field b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/join/android/app/common/dialog/j;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$d;->a:Ljava/lang/Boolean;

    .line 3
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p2

    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0\u6587\u4ef6\u5931\u8d25"

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v3, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    const/16 v4, 0xe

    const/4 v5, 0x0

    .line 2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v8, :cond_2

    if-eq v0, v7, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_url_remote()Ljava/lang/String;

    move-result-object v6

    .line 6
    :goto_0
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 7
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v10, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 9
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 10
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    .line 11
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v6, :cond_c

    :try_start_1
    const-string v11, ""
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-ne v0, v8, :cond_4

    :try_start_2
    const-string v11, "_cfg"

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    move-object v12, v3

    move-object v10, v6

    goto/16 :goto_14

    :catch_0
    move-object v3, v5

    move-object v12, v3

    :goto_1
    move-object v10, v6

    goto/16 :goto_d

    :catch_1
    move-object v3, v5

    move-object v12, v3

    :goto_2
    move-object v10, v6

    goto/16 :goto_e

    :catch_2
    move-object v3, v5

    move-object v12, v3

    :goto_3
    move-object v10, v6

    goto/16 :goto_f

    :cond_4
    if-ne v0, v7, :cond_5

    const-string v11, "_res"
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :cond_5
    :goto_4
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/roms/"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v12, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_6

    .line 16
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 17
    iget-object v3, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 19
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    return-void

    .line 20
    :cond_6
    :try_start_6
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_10
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v3, :cond_7

    .line 21
    :try_start_7
    invoke-static {v11}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 22
    :cond_7
    :try_start_8
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 23
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 24
    :try_start_9
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 25
    :try_start_a
    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/16 v5, 0x400

    :try_start_b
    new-array v5, v5, [B

    const-wide/16 v13, 0x0

    move-wide v15, v13

    .line 26
    :goto_6
    invoke-virtual {v3, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_9

    const/4 v7, 0x0

    .line 27
    invoke-virtual {v11, v5, v7, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-wide/from16 v17, v9

    int-to-long v8, v4

    add-long/2addr v13, v8

    long-to-double v8, v13

    move-object/from16 p1, v3

    move-object v10, v6

    move-wide/from16 v3, v17

    move-object/from16 v17, v5

    long-to-double v5, v3

    .line 28
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v5

    double-to-int v5, v8

    sub-long v8, v13, v15

    const-wide/16 v18, 0x2800

    cmp-long v6, v8, v18

    if-ltz v6, :cond_8

    .line 29
    :try_start_c
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v8, "totalSize"

    .line 30
    invoke-virtual {v6, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "completeSize"

    .line 31
    invoke-virtual {v6, v8, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "percent"

    .line 32
    invoke-virtual {v6, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v5, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v5}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v5

    const/16 v8, 0xd

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 34
    iget-object v6, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-wide v15, v13

    .line 35
    :cond_8
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->flush()V

    move-object v6, v10

    move-object/from16 v5, v17

    const/4 v7, 0x2

    const/4 v8, 0x1

    move-wide v9, v3

    move-object/from16 v3, p1

    goto :goto_6

    :cond_9
    move-object/from16 p1, v3

    move-object v10, v6

    const/4 v3, 0x1

    if-ne v0, v3, :cond_a

    .line 36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->a:Ljava/lang/Boolean;

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_8

    :catch_4
    move-object/from16 v3, p1

    goto :goto_9

    :catch_5
    move-object/from16 v3, p1

    goto :goto_a

    :catch_6
    move-object/from16 v3, p1

    goto :goto_b

    :cond_a
    const/4 v3, 0x2

    if-ne v0, v3, :cond_b

    .line 37
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;
    :try_end_c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_b
    :goto_7
    move-object/from16 v0, p1

    move-object v5, v11

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 p1, v3

    move-object v10, v6

    :goto_8
    move-object v2, v0

    move-object v5, v11

    goto/16 :goto_14

    :catch_7
    move-object/from16 p1, v3

    move-object v10, v6

    :goto_9
    move-object v5, v11

    goto/16 :goto_d

    :catch_8
    move-object/from16 p1, v3

    move-object v10, v6

    :goto_a
    move-object v5, v11

    goto/16 :goto_e

    :catch_9
    move-object/from16 p1, v3

    move-object v10, v6

    :goto_b
    move-object v5, v11

    goto/16 :goto_f

    :catchall_3
    move-exception v0

    move-object/from16 p1, v3

    move-object v10, v6

    goto/16 :goto_13

    :catch_a
    move-object/from16 p1, v3

    goto/16 :goto_1

    :catch_b
    move-object/from16 p1, v3

    goto/16 :goto_2

    :catch_c
    move-object/from16 p1, v3

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 p1, v3

    move-object v10, v6

    move-object v2, v0

    move-object v12, v5

    goto/16 :goto_14

    :catch_d
    move-object/from16 p1, v3

    move-object v10, v6

    move-object v12, v5

    goto/16 :goto_d

    :catch_e
    move-object/from16 p1, v3

    move-object v10, v6

    move-object v12, v5

    goto/16 :goto_e

    :catch_f
    move-object/from16 p1, v3

    move-object v10, v6

    move-object v12, v5

    goto/16 :goto_f

    :catchall_5
    move-exception v0

    move-object v10, v6

    move-object v2, v0

    move-object v3, v5

    move-object v12, v3

    goto/16 :goto_14

    :catch_10
    move-object v10, v6

    move-object v3, v5

    move-object v12, v3

    goto :goto_d

    :catch_11
    move-object v10, v6

    move-object v3, v5

    move-object v12, v3

    goto/16 :goto_e

    :catch_12
    move-object v10, v6

    move-object v3, v5

    move-object v12, v3

    goto/16 :goto_f

    :cond_c
    move-object v10, v6

    move-object v0, v5

    move-object v12, v0

    :goto_c
    if-eqz v5, :cond_d

    .line 38
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_d
    if-eqz v12, :cond_e

    .line 39
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    :cond_e
    if-eqz v10, :cond_f

    .line 40
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_f
    if-eqz v0, :cond_19

    .line 41
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16

    goto/16 :goto_12

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    move-object v10, v3

    move-object v12, v10

    goto/16 :goto_14

    :catch_13
    move-object v3, v5

    move-object v10, v3

    move-object v12, v10

    .line 42
    :goto_d
    :try_start_e
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 43
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-eqz v5, :cond_10

    .line 44
    :try_start_f
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_10
    if-eqz v12, :cond_11

    .line 45
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    :cond_11
    if-eqz v10, :cond_12

    .line 46
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_12
    if-eqz v3, :cond_19

    .line 47
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16

    goto :goto_12

    :catch_14
    move-object v3, v5

    move-object v10, v3

    move-object v12, v10

    .line 48
    :goto_e
    :try_start_10
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 49
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v5, :cond_13

    .line 50
    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_13
    if-eqz v12, :cond_14

    .line 51
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    :cond_14
    if-eqz v10, :cond_15

    .line 52
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_15
    if-eqz v3, :cond_19

    .line 53
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16

    goto :goto_12

    :catch_15
    move-object v3, v5

    move-object v10, v3

    move-object v12, v10

    .line 54
    :goto_f
    :try_start_12
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 55
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    if-eqz v5, :cond_16

    .line 56
    :try_start_13
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_10

    :catch_16
    move-exception v0

    goto :goto_11

    :cond_16
    :goto_10
    if-eqz v12, :cond_17

    .line 57
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    :cond_17
    if-eqz v10, :cond_18

    .line 58
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_18
    if-eqz v3, :cond_19

    .line 59
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_16

    goto :goto_12

    .line 60
    :goto_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_19
    :goto_12
    return-void

    :catchall_7
    move-exception v0

    :goto_13
    move-object v2, v0

    :goto_14
    if-eqz v5, :cond_1a

    .line 61
    :try_start_14
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_15

    :catch_17
    move-exception v0

    goto :goto_16

    :cond_1a
    :goto_15
    if-eqz v12, :cond_1b

    .line 62
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    :cond_1b
    if-eqz v10, :cond_1c

    .line 63
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_1c
    if-eqz v3, :cond_1d

    .line 64
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17

    goto :goto_17

    .line 65
    :goto_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    :cond_1d
    :goto_17
    goto :goto_19

    :goto_18
    throw v2

    :goto_19
    goto :goto_18
.end method

.method private b(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    const-string v3, "\u89e3\u538b\u5931\u8d25"

    const-string v4, "\u4e0b\u8f7d\u66f4\u65b0\u6587\u4ef6\u5931\u8d25"

    const-string v5, "message"

    const-string v6, "startOrEnd"

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v7, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    const/16 v9, 0xe

    .line 2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v12, :cond_2

    if-eq v0, v11, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_url_remote()Ljava/lang/String;

    move-result-object v10

    .line 6
    :goto_0
    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 7
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v14, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-interface {v13, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 9
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 10
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v13

    .line 11
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v10, :cond_e

    .line 12
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/roms/"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 13
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 15
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_4

    .line 16
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 17
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 18
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 19
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void

    .line 20
    :cond_4
    :try_start_3
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 21
    invoke-static {v15}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 22
    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 23
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 24
    :try_start_4
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 25
    :try_start_5
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v11, 0x400

    :try_start_6
    new-array v11, v11, [B

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v17

    .line 26
    :goto_2
    invoke-virtual {v7, v11}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v12
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v21, v7

    const/4 v7, -0x1

    move-object/from16 v22, v8

    const/4 v8, 0x0

    if-eq v12, v7, :cond_7

    .line 27
    :try_start_7
    invoke-virtual {v9, v11, v8, v12}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    int-to-long v7, v12

    add-long v7, v17, v7

    move-object/from16 v17, v11

    long-to-double v11, v7

    move-object/from16 v18, v3

    move-object/from16 v23, v4

    long-to-double v3, v13

    .line 28
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v11, v11, v3

    double-to-int v3, v11

    sub-long v11, v7, v19

    const-wide/16 v24, 0x2800

    cmp-long v4, v11, v24

    if-ltz v4, :cond_6

    .line 29
    :try_start_8
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v11, "totalSize"

    .line 30
    invoke-virtual {v4, v11, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v11, "completeSize"

    .line 31
    invoke-virtual {v4, v11, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v11, "percent"

    .line 32
    invoke-virtual {v4, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v3, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v3

    const/16 v11, 0xd

    invoke-virtual {v3, v11, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 34
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-wide/from16 v19, v7

    .line 35
    :cond_6
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v11, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    move-wide/from16 v17, v7

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    goto :goto_2

    :catch_1
    move-object/from16 v23, v4

    goto/16 :goto_8

    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v23, v4

    const/16 v3, 0xb

    .line 36
    :try_start_9
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v4, :cond_d

    const-string v4, "\u6e38\u620f\u8d44\u6e90\u89e3\u538b\u4e2d,\u8bf7\u7b49\u5f85..."

    if-eqz v0, :cond_a

    const/4 v7, 0x1

    if-eq v0, v7, :cond_9

    const/4 v11, 0x2

    if-eq v0, v11, :cond_8

    goto/16 :goto_3

    .line 37
    :cond_8
    :try_start_a
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 38
    invoke-virtual {v11, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v11, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 41
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/join/mgps/Util/s2;->i(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_path(Ljava/lang/String;)V

    goto :goto_3

    .line 44
    :cond_9
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v11, 0x1

    .line 45
    invoke-virtual {v7, v6, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 48
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v4, v7}, Lcom/join/mgps/Util/s2;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 50
    :cond_a
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v11, 0x1

    .line 51
    invoke-virtual {v7, v6, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 54
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    invoke-virtual {v15}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v4, v7}, Lcom/join/mgps/Util/s2;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v4

    invoke-virtual {v4, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :goto_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 59
    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "\u89e3\u538b\u5b8c\u6210"

    .line 60
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 62
    iget-object v7, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, 0x1

    if-ne v0, v4, :cond_b

    .line 63
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->a:Ljava/lang/Boolean;

    goto :goto_4

    :cond_b
    const/4 v4, 0x2

    if-ne v0, v4, :cond_c

    .line 64
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;

    .line 65
    :cond_c
    :goto_4
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0xc

    const-string v7, "\u66f4\u65b0\u5b8c\u6210"

    invoke-virtual {v0, v4, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 66
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    const-string v4, ".downloadTask"

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v0, v7}, Lcom/join/mgps/Util/f0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 70
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v4, v2}, Lcom/join/mgps/Util/f0;->f(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 72
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v2, v18

    .line 75
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v4, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v4}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 77
    iget-object v3, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 78
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 79
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    :cond_d
    :goto_6
    invoke-static {v15}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v8, v9

    goto/16 :goto_9

    :catch_4
    move-object v8, v9

    move-object/from16 v2, v23

    goto/16 :goto_11

    :catch_5
    move-object v8, v9

    move-object/from16 v2, v23

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    :goto_7
    move-object v2, v0

    move-object v8, v9

    goto/16 :goto_18

    :catch_6
    move-object/from16 v23, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    :catch_7
    :goto_8
    move-object v8, v9

    goto/16 :goto_e

    :catch_8
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    :catch_9
    move-object v2, v4

    move-object v8, v9

    goto/16 :goto_11

    :catch_a
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    :catch_b
    move-object v2, v4

    move-object v8, v9

    goto/16 :goto_14

    :catchall_2
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object v2, v0

    const/4 v8, 0x0

    goto/16 :goto_18

    :catch_c
    move-object/from16 v23, v4

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    const/4 v8, 0x0

    goto/16 :goto_e

    :catch_d
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object v2, v4

    const/4 v8, 0x0

    goto/16 :goto_11

    :catch_e
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object v2, v4

    const/4 v8, 0x0

    goto/16 :goto_14

    :catchall_3
    move-exception v0

    move-object/from16 v21, v7

    move-object v2, v0

    const/4 v8, 0x0

    goto :goto_b

    :catch_f
    move-object/from16 v23, v4

    move-object/from16 v21, v7

    const/4 v8, 0x0

    goto :goto_d

    :catch_10
    move-object/from16 v21, v7

    move-object v2, v4

    const/4 v8, 0x0

    goto/16 :goto_10

    :catch_11
    move-object/from16 v21, v7

    move-object v2, v4

    const/4 v8, 0x0

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    move-object v2, v0

    const/4 v8, 0x0

    goto :goto_a

    :catch_12
    move-object/from16 v23, v4

    const/4 v8, 0x0

    goto :goto_c

    :catch_13
    move-object v2, v4

    const/4 v8, 0x0

    goto :goto_f

    :catch_14
    move-object v2, v4

    const/4 v8, 0x0

    goto/16 :goto_12

    :cond_e
    const/4 v8, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_9
    if-eqz v8, :cond_f

    .line 81
    :try_start_e
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    :cond_f
    if-eqz v22, :cond_10

    .line 82
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    :cond_10
    if-eqz v10, :cond_11

    .line 83
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_11
    if-eqz v21, :cond_1b

    .line 84
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_18

    goto/16 :goto_17

    :catchall_5
    move-exception v0

    move-object v2, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_a
    const/16 v21, 0x0

    :goto_b
    const/16 v22, 0x0

    goto/16 :goto_18

    :catch_15
    move-object/from16 v23, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_c
    const/16 v21, 0x0

    :goto_d
    const/16 v22, 0x0

    .line 85
    :goto_e
    :try_start_f
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    move-object/from16 v2, v23

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 86
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v8, :cond_12

    .line 87
    :try_start_10
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    :cond_12
    if-eqz v22, :cond_13

    .line 88
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    :cond_13
    if-eqz v10, :cond_14

    .line 89
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_14
    if-eqz v21, :cond_1b

    .line 90
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_18

    goto :goto_17

    :catch_16
    move-object v2, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_f
    const/16 v21, 0x0

    :goto_10
    const/16 v22, 0x0

    .line 91
    :goto_11
    :try_start_11
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 92
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v8, :cond_15

    .line 93
    :try_start_12
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    :cond_15
    if-eqz v22, :cond_16

    .line 94
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    :cond_16
    if-eqz v10, :cond_17

    .line 95
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_17
    if-eqz v21, :cond_1b

    .line 96
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_18

    goto :goto_17

    :catch_17
    move-object v2, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_12
    const/16 v21, 0x0

    :goto_13
    const/16 v22, 0x0

    .line 97
    :goto_14
    :try_start_13
    iget-object v0, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 98
    iget-object v2, v1, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v8, :cond_18

    .line 99
    :try_start_14
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_15

    :catch_18
    move-exception v0

    goto :goto_16

    :cond_18
    :goto_15
    if-eqz v22, :cond_19

    .line 100
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    :cond_19
    if-eqz v10, :cond_1a

    .line 101
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_1a
    if-eqz v21, :cond_1b

    .line 102
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_18

    goto :goto_17

    .line 103
    :goto_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b
    :goto_17
    return-void

    :catchall_6
    move-exception v0

    move-object v2, v0

    :goto_18
    if-eqz v8, :cond_1c

    .line 104
    :try_start_15
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_19

    :catch_19
    move-exception v0

    goto :goto_1a

    :cond_1c
    :goto_19
    if-eqz v22, :cond_1d

    .line 105
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    :cond_1d
    if-eqz v10, :cond_1e

    .line 106
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    :cond_1e
    if-eqz v21, :cond_1f

    .line 107
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_19

    goto :goto_1b

    .line 108
    :goto_1a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    :cond_1f
    :goto_1b
    goto :goto_1d

    :goto_1c
    throw v2

    :goto_1d
    goto :goto_1c
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Q(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/customview/NoScrollViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/adapter/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/adapter/x;->c()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/x$a;

    iget-object v1, v1, Lcom/join/mgps/adapter/x$a;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    iget-object v2, v2, Lcom/join/android/app/common/dialog/j;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 5
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/join/android/app/common/dialog/j;->b0(Lcom/join/android/app/common/dialog/j;Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->Z(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/adapter/x;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/b;

    .line 7
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/join/mgps/activity/b;->e:Lcom/join/mgps/dto/CollectionBeanSub;

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/join/mgps/activity/b;->e:Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "/"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_path()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x7

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->c0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->c0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCfg_down_url()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 14
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_0
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    invoke-direct {p0, v6, v3, v0}, Lcom/join/android/app/common/dialog/j$d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->c0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->c0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSource_down_url()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    .line 21
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_1
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    invoke-direct {p0, v6, v2, v0}, Lcom/join/android/app/common/dialog/j$d;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 25
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v5}, Lcom/join/android/app/common/dialog/j;->R(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->c0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->v0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x5

    if-eqz v0, :cond_12

    .line 26
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->R(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 27
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 28
    :goto_2
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 29
    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 30
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->S(Lcom/join/android/app/common/dialog/j;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 31
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 32
    iput v2, v0, Landroid/os/Message;->what:I

    .line 33
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 34
    :cond_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    .line 35
    iput v2, v0, Landroid/os/Message;->what:I

    .line 36
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    return-void

    .line 37
    :cond_7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x4

    .line 38
    iput v2, v0, Landroid/os/Message;->what:I

    .line 39
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->c0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLastTime(J)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/roms/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    .line 43
    :try_start_2
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->c0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 45
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v7}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/join/mgps/Util/s2;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 47
    iget-object v6, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v6}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const-string v6, "_cfg"

    if-eqz v3, :cond_9

    .line 49
    :try_start_3
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 51
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/join/mgps/Util/s2;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 52
    :cond_8
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 53
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v7, "_res"

    if-eqz v3, :cond_b

    .line 54
    :try_start_4
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/join/mgps/Util/s2;->i(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v8, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v8}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_path(Ljava/lang/String;)V

    goto :goto_5

    .line 58
    :cond_a
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    .line 59
    :cond_b
    :goto_5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 61
    :cond_c
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 63
    :cond_d
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->c0(Lcom/join/android/app/common/dialog/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 65
    :cond_e
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 66
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 67
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_5
    const-string v1, ".downloadTask"

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v3}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/join/mgps/Util/f0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 71
    :cond_f
    :goto_6
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-nez v0, :cond_10

    .line 72
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg1/f;->c0(Lcom/github/snowdream/android/app/downloader/DownloadTask;)I

    .line 73
    :cond_10
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/l;

    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->a0(Lcom/join/android/app/common/dialog/j;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_7

    .line 74
    :cond_11
    :try_start_6
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 77
    :cond_12
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 78
    iput v5, v0, Landroid/os/Message;->what:I

    .line 79
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$d;->c:Lcom/join/android/app/common/dialog/j;

    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_7
    return-void
.end method
