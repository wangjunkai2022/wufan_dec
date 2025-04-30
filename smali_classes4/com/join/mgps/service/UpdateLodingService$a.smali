.class Lcom/join/mgps/service/UpdateLodingService$a;
.super Ljava/lang/Thread;
.source "UpdateLodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/UpdateLodingService;->k(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/service/UpdateLodingService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/UpdateLodingService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    iput-object p2, p0, Lcom/join/mgps/service/UpdateLodingService$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0\u6587\u4ef6\u5931\u8d25"

    const-string v3, "message"

    const-string v4, "startOrEnd"

    const/4 v6, 0x4

    .line 1
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    iget-object v7, v1, Lcom/join/mgps/service/UpdateLodingService$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v7

    .line 2
    invoke-static {}, Ln1/q;->o()Ln1/q;

    move-result-object v0

    iget-object v8, v1, Lcom/join/mgps/service/UpdateLodingService$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ln1/q;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUUpdateTable;

    move-result-object v8

    if-eqz v7, :cond_17

    if-nez v8, :cond_0

    goto/16 :goto_f

    .line 3
    :cond_0
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v9, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v9}, Lcom/join/mgps/service/UpdateLodingService;->a(Lcom/join/mgps/service/UpdateLodingService;)I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    if-eq v9, v11, :cond_2

    if-eq v9, v10, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v8}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getSource_down_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v8}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_down_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v8}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getDown_url_remote()Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 9
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-interface {v9, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    .line 13
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_17
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v9, :cond_13

    .line 14
    :try_start_1
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/service/UpdateLodingService;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/join/mgps/service/UpdateLodingService;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/roms/"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 21
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_14
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-nez v16, :cond_4

    :try_start_2
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    move-result v15

    if-nez v15, :cond_4

    .line 22
    iget-object v0, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 23
    iget-object v3, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 25
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v9

    goto/16 :goto_d

    .line 26
    :cond_4
    :try_start_4
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15
    :try_end_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v15, :cond_5

    .line 27
    :try_start_5
    invoke-static {v14}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_14
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 28
    :cond_5
    :try_start_6
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 29
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-direct {v15, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 30
    :try_start_7
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 31
    :try_start_8
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const-wide/16 v17, 0x0

    const/16 v10, 0x400

    :try_start_9
    new-array v10, v10, [B

    .line 32
    :goto_2
    invoke-virtual {v15, v10}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v11
    :try_end_9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v19, v5

    const/4 v5, -0x1

    move-object/from16 v20, v15

    const/4 v15, 0x0

    if-eq v11, v5, :cond_7

    :try_start_a
    iget-object v5, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateLodingService;->f(Lcom/join/mgps/service/UpdateLodingService;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 33
    invoke-virtual {v6, v10, v15, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v5, v10

    int-to-long v10, v11

    add-long v10, v17, v10

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    long-to-double v8, v10

    move-object/from16 v22, v2

    move-object/from16 v21, v3

    long-to-double v2, v12

    .line 34
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v2

    double-to-int v2, v8

    .line 35
    :try_start_b
    iget-object v3, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateLodingService;->h(Lcom/join/mgps/service/UpdateLodingService;)J

    move-result-wide v8

    sub-long v8, v10, v8

    const-wide/16 v15, 0x2800

    cmp-long v3, v8, v15

    if-ltz v3, :cond_6

    .line 36
    iget-object v3, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v3, v10, v11}, Lcom/join/mgps/service/UpdateLodingService;->i(Lcom/join/mgps/service/UpdateLodingService;J)J

    .line 37
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "totalSize"

    .line 38
    invoke-virtual {v3, v8, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "completeSize"

    .line 39
    invoke-virtual {v3, v8, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "percent"

    .line 40
    invoke-virtual {v3, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    const/4 v8, 0x3

    invoke-virtual {v2, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 42
    iget-object v3, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 43
    :cond_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v15, v20

    move-object/from16 v3, v21

    move-object/from16 v2, v22

    move-wide/from16 v17, v10

    move-object v10, v5

    move-object/from16 v5, v19

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v18, v9

    goto/16 :goto_9

    :catch_1
    move-object/from16 v22, v2

    move-object/from16 v18, v9

    goto/16 :goto_a

    :catch_2
    move-object/from16 v18, v9

    goto/16 :goto_b

    :catch_3
    move-object/from16 v18, v9

    goto/16 :goto_c

    :cond_7
    move-object/from16 v22, v2

    move-object/from16 v21, v3

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    .line 44
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->f(Lcom/join/mgps/service/UpdateLodingService;)Z

    move-result v2
    :try_end_b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const-string v3, "\u89e3\u538b\u5931\u8d25"

    if-nez v2, :cond_12

    .line 45
    :try_start_c
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 46
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 47
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-le v5, v8, :cond_8

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    if-eq v2, v5, :cond_9

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 48
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    if-eq v2, v5, :cond_9

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 49
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    if-eq v2, v5, :cond_9

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 50
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    if-eq v2, v5, :cond_9

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->VA32:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 51
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    if-eq v2, v5, :cond_9

    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->VA64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 52
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    if-eq v2, v5, :cond_9

    :cond_8
    sget-object v5, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 53
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v5

    if-ne v2, v5, :cond_b

    .line 54
    :cond_9
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    iget-object v2, v2, Lcom/join/mgps/service/UpdateLodingService;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 56
    new-instance v2, Lcom/join/mgps/pref/PrefDef_;

    iget-object v5, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    iget-object v5, v5, Lcom/join/mgps/service/UpdateLodingService;->g:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    iget-object v5, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    iget-object v5, v5, Lcom/join/mgps/service/UpdateLodingService;->g:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/join/mgps/Util/UtilsMy;->i2(Lcom/join/mgps/pref/PrefDef_;Landroid/content/Context;)V

    .line 57
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    iget-object v2, v2, Lcom/join/mgps/service/UpdateLodingService;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/pref/h;->h()Ljava/lang/String;

    move-result-object v2

    .line 58
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 59
    :try_start_d
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    .line 61
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    :catch_4
    move-exception v0

    .line 62
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 63
    :cond_b
    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 64
    :cond_c
    :goto_3
    iget-object v0, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateLodingService;->a(Lcom/join/mgps/service/UpdateLodingService;)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const-string v5, "\u6e38\u620f\u8d44\u6e90\u89e3\u538b\u4e2d,\u8bf7\u7b49\u5f85..."

    if-eqz v0, :cond_f

    const/4 v8, 0x1

    if-eq v0, v8, :cond_e

    const/4 v9, 0x2

    if-eq v0, v9, :cond_d

    move-object/from16 v9, v21

    goto/16 :goto_4

    .line 65
    :cond_d
    :try_start_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object/from16 v9, v21

    .line 67
    :try_start_10
    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v5, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v5

    invoke-virtual {v5, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 69
    iget-object v5, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    invoke-static {v14, v2}, Lcom/join/mgps/Util/s2;->i(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v7, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_path(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getSource_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v7}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_e
    move-object/from16 v9, v21

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x1

    .line 75
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v5, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v5

    invoke-virtual {v5, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 78
    iget-object v5, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v2, v0}, Lcom/join/mgps/Util/s2;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v7}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    move-object/from16 v9, v21

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x1

    .line 83
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v5, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v5

    invoke-virtual {v5, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 86
    iget-object v5, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v2, v0}, Lcom/join/mgps/Util/s2;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v7, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGameZipPath(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getVer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getCfg_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/db/tables/EMUUpdateTable;->getSource_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0, v7}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "\u89e3\u538b\u5b8c\u6210"

    .line 96
    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 98
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    iget-object v0, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v0

    const-string v2, "\u66f4\u65b0\u5b8c\u6210"

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 100
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 102
    new-instance v0, Ljava/io/File;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    const-string v2, ".downloadTask"

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v0, v5}, Lcom/join/mgps/Util/f0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_5

    :catch_5
    move-exception v0

    .line 104
    :try_start_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    :goto_5
    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v2, v5}, Lcom/join/mgps/Util/f0;->f(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    :cond_10
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/event/l;

    const/4 v5, 0x5

    invoke-direct {v2, v7, v5}, Lcom/join/mgps/event/l;-><init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v9, v21

    .line 107
    :goto_6
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {v0, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 112
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    iget-object v0, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 114
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    :cond_11
    :goto_7
    invoke-static {v14}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    goto :goto_8

    .line 116
    :cond_12
    iget-object v0, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 117
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    invoke-static {v14}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_13
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :goto_8
    move-object v5, v6

    move-object/from16 v16, v19

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_8
    move-object v5, v6

    move-object/from16 v16, v19

    move-object/from16 v2, v22

    goto/16 :goto_14

    :catch_9
    move-object v5, v6

    move-object/from16 v16, v19

    move-object/from16 v2, v22

    goto/16 :goto_16

    :catchall_3
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    :goto_9
    move-object v2, v0

    move-object v5, v6

    goto/16 :goto_1a

    :catch_a
    move-object/from16 v22, v2

    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    :catch_b
    :goto_a
    move-object v5, v6

    move-object/from16 v16, v19

    goto/16 :goto_12

    :catch_c
    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    :goto_b
    move-object v5, v6

    move-object/from16 v16, v19

    goto/16 :goto_14

    :catch_d
    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    :goto_c
    move-object v5, v6

    move-object/from16 v16, v19

    goto/16 :goto_16

    :catchall_4
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    move-object v2, v0

    const/4 v5, 0x0

    goto/16 :goto_1a

    :catch_e
    move-object/from16 v22, v2

    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    move-object/from16 v16, v19

    const/4 v5, 0x0

    goto/16 :goto_12

    :catch_f
    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    move-object/from16 v16, v19

    const/4 v5, 0x0

    goto/16 :goto_14

    :catch_10
    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    move-object/from16 v16, v19

    const/4 v5, 0x0

    goto/16 :goto_16

    :catchall_5
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    move-object v2, v0

    const/4 v5, 0x0

    const/16 v19, 0x0

    goto/16 :goto_1a

    :catch_11
    move-object/from16 v22, v2

    move-object/from16 v18, v9

    move-object/from16 v20, v15

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto/16 :goto_12

    :catch_12
    move-object/from16 v18, v9

    move-object/from16 v20, v15

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto/16 :goto_14

    :catch_13
    move-object/from16 v18, v9

    move-object/from16 v20, v15

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto/16 :goto_16

    :catchall_6
    move-exception v0

    move-object/from16 v18, v9

    move-object v2, v0

    :goto_d
    const/4 v5, 0x0

    goto :goto_10

    :catch_14
    move-object/from16 v22, v2

    move-object/from16 v18, v9

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto :goto_11

    :catch_15
    move-object/from16 v18, v9

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto :goto_13

    :catch_16
    move-object/from16 v18, v9

    const/4 v5, 0x0

    const/16 v16, 0x0

    goto/16 :goto_15

    :cond_13
    move-object/from16 v18, v9

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    :goto_e
    if-eqz v5, :cond_14

    .line 119
    :try_start_14
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_14
    if-eqz v16, :cond_15

    .line 120
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    :cond_15
    if-eqz v18, :cond_16

    .line 121
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    :cond_16
    if-eqz v20, :cond_21

    .line 122
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1a

    goto/16 :goto_19

    :cond_17
    :goto_f
    return-void

    :catchall_7
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    const/16 v18, 0x0

    :goto_10
    const/16 v19, 0x0

    const/16 v20, 0x0

    goto/16 :goto_1a

    :catch_17
    move-object/from16 v22, v2

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_11
    const/16 v20, 0x0

    .line 123
    :goto_12
    :try_start_15
    iget-object v0, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v0

    move-object/from16 v2, v22

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 124
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    if-eqz v5, :cond_18

    .line 125
    :try_start_16
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_18
    if-eqz v16, :cond_19

    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    :cond_19
    if-eqz v18, :cond_1a

    .line 127
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    :cond_1a
    if-eqz v20, :cond_21

    .line 128
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1a

    goto :goto_19

    :catch_18
    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_13
    const/16 v20, 0x0

    .line 129
    :goto_14
    :try_start_17
    iget-object v0, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 130
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    if-eqz v5, :cond_1b

    .line 131
    :try_start_18
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1b
    if-eqz v16, :cond_1c

    .line 132
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    :cond_1c
    if-eqz v18, :cond_1d

    .line 133
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    :cond_1d
    if-eqz v20, :cond_21

    .line 134
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1a

    goto :goto_19

    :catch_19
    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_15
    const/16 v20, 0x0

    .line 135
    :goto_16
    :try_start_19
    iget-object v0, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 136
    iget-object v2, v1, Lcom/join/mgps/service/UpdateLodingService$a;->b:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v2}, Lcom/join/mgps/service/UpdateLodingService;->e(Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    if-eqz v5, :cond_1e

    .line 137
    :try_start_1a
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_17

    :catch_1a
    move-exception v0

    goto :goto_18

    :cond_1e
    :goto_17
    if-eqz v16, :cond_1f

    .line 138
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    :cond_1f
    if-eqz v18, :cond_20

    .line 139
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    :cond_20
    if-eqz v20, :cond_21

    .line 140
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_19

    .line 141
    :goto_18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_21
    :goto_19
    return-void

    :catchall_8
    move-exception v0

    move-object v2, v0

    move-object/from16 v19, v16

    :goto_1a
    if-eqz v5, :cond_22

    .line 142
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_1b

    :catch_1b
    move-exception v0

    goto :goto_1c

    :cond_22
    :goto_1b
    if-eqz v19, :cond_23

    .line 143
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    :cond_23
    if-eqz v18, :cond_24

    .line 144
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    :cond_24
    if-eqz v20, :cond_25

    .line 145
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1d

    .line 146
    :goto_1c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    :cond_25
    :goto_1d
    goto :goto_1f

    :goto_1e
    throw v2

    :goto_1f
    goto :goto_1e
.end method
