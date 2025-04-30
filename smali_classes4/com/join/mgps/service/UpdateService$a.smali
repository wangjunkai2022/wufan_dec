.class Lcom/join/mgps/service/UpdateService$a;
.super Ljava/lang/Thread;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/UpdateService;->n(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/service/UpdateService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/UpdateService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    iput-object p2, p0, Lcom/join/mgps/service/UpdateService$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    move-object v1, p0

    const-string v0, " "

    const-string v2, "\u4e0b\u8f7d\u66f4\u65b0\u6587\u4ef6\u5931\u8d25"

    const/4 v4, 0x0

    .line 1
    :try_start_0
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/join/mgps/service/UpdateService;->b(Lcom/join/mgps/service/UpdateService;Z)Z

    .line 2
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateService;->o(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v7, v7

    const-string v9, "app\u66f4\u65b0\u6587\u4ef6\u5927\u5c0f"

    .line 4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const-string v9, "app\u66f4\u65b0code "

    .line 6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->o(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 8
    new-instance v5, Ljava/io/File;

    sget-object v9, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    const-string v10, "/aia"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 10
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 11
    :cond_0
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/join/mgps/Util/u;->d:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/aia/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/join/mgps/service/UpdateService$a;->a:Ljava/lang/String;

    const-string v13, "/"

    .line 12
    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v5, v9}, Lcom/join/mgps/service/UpdateService;->d(Lcom/join/mgps/service/UpdateService;Ljava/io/File;)Ljava/io/File;

    .line 14
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 15
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 16
    :cond_1
    iget-object v5, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v5}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 17
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v9, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v9}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 19
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v10, 0x0

    const/16 v12, 0x400

    new-array v12, v12, [B

    .line 20
    :goto_0
    invoke-virtual {v5, v12}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    iget-object v14, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v14}, Lcom/join/mgps/service/UpdateService;->e(Lcom/join/mgps/service/UpdateService;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 21
    invoke-virtual {v9, v12, v4, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v13, v13

    add-long/2addr v10, v13

    long-to-double v13, v10

    long-to-double v3, v7

    .line 22
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v13, v13, v3

    double-to-int v3, v13

    .line 23
    :try_start_1
    iget-object v4, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v4}, Lcom/join/mgps/service/UpdateService;->f(Lcom/join/mgps/service/UpdateService;)I

    move-result v4

    sub-int v4, v3, v4

    const/4 v13, 0x5

    if-lt v4, v13, :cond_2

    .line 24
    iget-object v4, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v4, v3}, Lcom/join/mgps/service/UpdateService;->g(Lcom/join/mgps/service/UpdateService;I)I

    .line 25
    iget-object v4, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v4}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v4

    const/4 v13, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v13, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 26
    iget-object v4, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v4}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 28
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 29
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 30
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 32
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 33
    :cond_4
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->e(Lcom/join/mgps/service/UpdateService;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 34
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v0

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v4}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 35
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 36
    :cond_5
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v0}, Lcom/join/mgps/service/UpdateService;->c(Lcom/join/mgps/service/UpdateService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 37
    :try_start_2
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 38
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 40
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 41
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 43
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 44
    iget-object v3, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    invoke-static {v3}, Lcom/join/mgps/service/UpdateService;->h(Lcom/join/mgps/service/UpdateService;)Lcom/join/mgps/service/UpdateService$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :goto_1
    iget-object v0, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/join/mgps/service/UpdateService;->b(Lcom/join/mgps/service/UpdateService;Z)Z

    return-void

    :goto_2
    iget-object v2, v1, Lcom/join/mgps/service/UpdateService$a;->b:Lcom/join/mgps/service/UpdateService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/join/mgps/service/UpdateService;->b(Lcom/join/mgps/service/UpdateService;Z)Z

    .line 47
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
