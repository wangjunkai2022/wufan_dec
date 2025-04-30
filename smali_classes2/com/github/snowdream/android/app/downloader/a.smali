.class public Lcom/github/snowdream/android/app/downloader/a;
.super Ljava/lang/Thread;
.source "AsycDownloadTaskRunner.java"


# static fields
.field private static final A:Ljava/lang/String;

.field private static final B:I = 0x1

.field private static final C:I = 0x2

.field private static D:Ljava/lang/String;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field e:Z

.field f:Z

.field g:Z

.field h:Ljava/io/InputStream;

.field i:Ljava/io/RandomAccessFile;

.field j:Ljava/io/InputStream;

.field k:Ljava/io/RandomAccessFile;

.field l:Ljava/net/HttpURLConnection;

.field m:Ljava/net/HttpURLConnection;

.field n:Ljava/net/HttpURLConnection;

.field o:Ljava/net/HttpURLConnection;

.field p:Ljava/io/File;

.field q:Ljava/io/File;

.field r:J

.field s:J

.field t:J

.field u:J

.field v:J

.field w:J

.field x:Ljava/lang/String;

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/github/snowdream/android/app/downloader/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/snowdream/android/app/downloader/a;->A:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/join/mgps/Util/u;->g:Ljava/lang/String;

    sput-object v0, Lcom/github/snowdream/android/app/downloader/a;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/a;->a:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    .line 4
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    .line 5
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->h:Ljava/io/InputStream;

    .line 7
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/RandomAccessFile;

    .line 8
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/InputStream;

    .line 9
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/RandomAccessFile;

    .line 10
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    .line 11
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 12
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    .line 13
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const-string v1, ""

    .line 14
    iput-object v1, p0, Lcom/github/snowdream/android/app/downloader/a;->x:Ljava/lang/String;

    .line 15
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->y:Z

    .line 16
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->z:Z

    .line 17
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/a;->b:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/a;->a:J

    const/16 v2, 0x20

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/j;

    iget-object v3, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v3, v5

    const/4 v1, 0x2

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v3, v5

    invoke-direct {p0, v0, v3, v4}, Lcom/github/snowdream/android/app/downloader/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 7
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/j;

    iget-object v3, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDuration(J)V

    .line 2
    invoke-virtual {p1, p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setInterrupt(I)V

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_0

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->h:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private g(Ljava/net/HttpURLConnection;)J
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v2, "Content-Length"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private k(Lcom/join/mgps/dto/GameMd5Data;)Ljava/lang/String;
    .locals 3

    const-string v0, "skip"

    .line 1
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 2
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 3
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->L()Lcom/join/mgps/rpc/impl/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/rpc/impl/h;->J()Lq1/h;

    move-result-object p1

    invoke-interface {p1, v1}, Lq1/h;->G0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameMD5ResultInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameMD5ResultInfo;->getInfo()Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameMD5ResultInfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMD5ResultInfo;->getInfo()Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameMD5ResultInfo$InfoBean;->getState()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method private l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/event/j;

    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v3, 0x22

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    const/16 v0, 0x28

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/event/j;

    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v3, 0x23

    invoke-direct {v0, v2, v3}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMobleNetNeedStop()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private n()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "readFileSize: "

    const/4 v4, 0x3

    :goto_0
    if-lez v4, :cond_3c

    .line 1
    iget-boolean v5, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    if-nez v5, :cond_3c

    .line 2
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v8, :cond_31

    .line 4
    invoke-direct {v1, v8}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v8

    if-nez v8, :cond_2e

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v8}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_1b

    .line 5
    :cond_0
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    move-result-object v8

    .line 6
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    :try_start_1
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v9}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    move/from16 v16, v4

    :goto_1
    const/4 v4, 0x3

    goto/16 :goto_20

    .line 8
    :cond_2
    :goto_2
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".mod"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/github/snowdream/android/app/downloader/a;->D:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "mod/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v11, ""

    if-eqz v10, :cond_3

    move-object v9, v11

    .line 11
    :cond_3
    :try_start_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 12
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 13
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    .line 15
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v10, "openConnection first... "

    const-string v13, "audio/x-mod"

    const-string v14, "application/zip"

    const-string v15, "application/vnd.android.package-archive"

    const-string v5, "application/octet-stream"

    const-string v6, "Content-Type"

    const-string v7, "GET"

    const-string v12, "Keep-Alive"

    const-string v3, "Connection"

    move/from16 v16, v4

    const/4 v4, 0x1

    if-eqz v9, :cond_5

    :try_start_4
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v9

    if-eq v9, v4, :cond_5

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v9

    const/4 v4, 0x3

    if-ne v9, v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x1

    .line 16
    iput-boolean v4, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object v9, v13

    move-object v8, v14

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v3, v0

    goto/16 :goto_1

    .line 17
    :cond_5
    :goto_4
    :try_start_5
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_f

    .line 18
    :try_start_6
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    move-object v9, v13

    move-object/from16 v17, v14

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    goto :goto_5

    :cond_6
    move-object v9, v13

    move-object/from16 v17, v14

    .line 19
    :goto_5
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->w:J

    .line 20
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 21
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4, v13, v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 22
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 25
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v4

    new-instance v8, Lcom/join/mgps/event/j;

    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v14, 0x15

    invoke-direct {v8, v13, v14}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 26
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    const/16 v8, 0x3e8

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 27
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 28
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v3, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 30
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openConnection ... status="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    const/16 v8, 0xc8

    if-ne v4, v8, :cond_a

    .line 33
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v4, v11

    .line 35
    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 37
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    move-object/from16 v8, v17

    .line 38
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 39
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 40
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v13

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    int-to-long v10, v4

    cmp-long v4, v13, v10

    if-nez v4, :cond_e

    goto :goto_7

    :cond_8
    move-object/from16 v18, v10

    goto :goto_6

    :cond_9
    move-object/from16 v18, v10

    move-object/from16 v8, v17

    :goto_6
    move-object/from16 v17, v11

    .line 41
    :goto_7
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v10}, Lcom/github/snowdream/android/app/downloader/a;->g(Ljava/net/HttpURLConnection;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    const/4 v4, 0x1

    .line 42
    iput-boolean v4, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z

    goto/16 :goto_8

    :cond_a
    move-object/from16 v18, v10

    move-object/from16 v8, v17

    move-object/from16 v17, v11

    const/16 v10, 0x12e

    if-eq v4, v10, :cond_b

    const/16 v10, 0x12d

    if-eq v4, v10, :cond_b

    const/16 v10, 0x12f

    if-ne v4, v10, :cond_e

    .line 43
    :cond_b
    new-instance v4, Ljava/net/URL;

    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    const-string v11, "Location"

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 45
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v4

    new-instance v10, Lcom/join/mgps/event/j;

    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v13, 0x15

    invoke-direct {v10, v11, v13}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v10}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 46
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    const/16 v10, 0x3e8

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 47
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 48
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v3, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 51
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    const/16 v10, 0xc8

    if-ne v4, v10, :cond_e

    .line 52
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object/from16 v4, v17

    .line 54
    :cond_c
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 56
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 57
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 58
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 59
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v10

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v13, v4

    cmp-long v4, v10, v13

    if-nez v4, :cond_e

    .line 60
    :cond_d
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v10}, Lcom/github/snowdream/android/app/downloader/a;->g(Ljava/net/HttpURLConnection;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_actual_size(J)V

    const/4 v4, 0x1

    .line 61
    iput-boolean v4, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 62
    :cond_e
    :goto_8
    :try_start_7
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 63
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_9

    :cond_f
    move-object/from16 v18, v10

    move-object/from16 v17, v11

    move-object v9, v13

    move-object v8, v14

    const/4 v4, 0x1

    .line 64
    :try_start_9
    iput-boolean v4, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z

    .line 65
    :goto_9
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v10, 0x2

    if-eqz v4, :cond_11

    :try_start_a
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v4

    if-ne v4, v10, :cond_10

    goto :goto_a

    :cond_10
    const/4 v4, 0x1

    .line 66
    iput-boolean v4, v1, Lcom/github/snowdream/android/app/downloader/a;->z:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v11, v17

    goto/16 :goto_16

    .line 67
    :cond_11
    :goto_a
    :try_start_b
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez v4, :cond_26

    .line 68
    :try_start_c
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 69
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    goto :goto_b

    :cond_12
    const-wide/16 v13, 0x0

    .line 70
    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    .line 71
    :goto_b
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 72
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    iput-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 73
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4, v13, v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 74
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 75
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v18

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    const/16 v13, 0x3e8

    .line 78
    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 79
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 80
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v3, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    sget-object v4, Lcom/join/mgps/Util/u;->r:Ljava/lang/String;

    .line 83
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    const-string v13, ","

    .line 84
    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 85
    array-length v13, v4

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v13, :cond_14

    aget-object v10, v4, v14

    .line 86
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v11, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 87
    invoke-static {v10}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    const-string v4, "\""

    move-object/from16 v11, v17

    .line 88
    invoke-virtual {v10, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 89
    iput-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Ljava/lang/String;

    goto :goto_d

    :cond_13
    move-object/from16 v11, v17

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x2

    goto :goto_c

    :cond_14
    move-object/from16 v11, v17

    .line 90
    :goto_d
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 91
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    const/16 v10, 0xc8

    if-ne v4, v10, :cond_1c

    .line 92
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object v3, v11

    .line 94
    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 96
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 97
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 98
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 99
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v3

    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_16

    goto :goto_10

    .line 100
    :cond_16
    :try_start_d
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 101
    :try_start_e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 103
    :try_start_f
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_17

    .line 104
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    .line 105
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 106
    :cond_17
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_18

    .line 107
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    .line 108
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    .line 109
    :cond_18
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    if-nez v2, :cond_19

    const-wide/16 v2, 0x3e8

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 111
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_f
    return-void

    .line 112
    :cond_1a
    :goto_10
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  task.getSize  111 range= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v4}, Lcom/github/snowdream/android/app/downloader/a;->g(Ljava/net/HttpURLConnection;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    const/4 v3, 0x1

    .line 114
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->z:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 115
    :try_start_11
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 116
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v5}, Lcom/github/snowdream/android/app/downloader/a;->g(Ljava/net/HttpURLConnection;)J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 117
    :try_start_12
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :cond_1b
    :goto_11
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  task.getSize  222  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    :cond_1c
    const/16 v10, 0x12e

    if-eq v4, v10, :cond_1d

    const/16 v10, 0x12d

    if-eq v4, v10, :cond_1d

    const/16 v10, 0x12f

    if-ne v4, v10, :cond_25

    .line 120
    :cond_1d
    new-instance v4, Ljava/net/URL;

    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    const-string v13, "Location"

    invoke-virtual {v10, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    .line 122
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v4

    new-instance v10, Lcom/join/mgps/event/j;

    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v14, 0x15

    invoke-direct {v10, v13, v14}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v10}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 123
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    const/16 v10, 0x3e8

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 124
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 125
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v3, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 128
    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_25

    .line 129
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object v3, v11

    .line 131
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 133
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 134
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 135
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 136
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v3

    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1f

    goto :goto_13

    .line 137
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 138
    :try_start_13
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_20

    .line 139
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    .line 140
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 141
    :cond_20
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_21

    .line 142
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    .line 143
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    .line 144
    :cond_21
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    if-nez v2, :cond_22

    const-wide/16 v2, 0x3e8

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto :goto_12

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 146
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_12
    return-void

    .line 147
    :cond_23
    :goto_13
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  task.getSize  111 range= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v4}, Lcom/github/snowdream/android/app/downloader/a;->g(Ljava/net/HttpURLConnection;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSize(J)V

    const/4 v3, 0x1

    .line 149
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->z:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 150
    :try_start_15
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 151
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v5}, Lcom/github/snowdream/android/app/downloader/a;->g(Ljava/net/HttpURLConnection;)J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_14

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 152
    :try_start_16
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :cond_24
    :goto_14
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  task.getSize  222  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 155
    :cond_25
    :goto_15
    :try_start_17
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_16

    :catch_8
    move-exception v0

    move-object v3, v0

    .line 156
    :try_start_18
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_16

    :cond_26
    move-object/from16 v11, v17

    const/4 v3, 0x1

    .line 157
    :try_start_19
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->z:Z

    .line 158
    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    iget-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->y:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v3, :cond_27

    :try_start_1a
    iget-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->z:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    goto :goto_17

    :cond_27
    const/4 v3, 0x0

    :goto_17
    :try_start_1b
    iput-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    if-eqz v3, :cond_32

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a

    :try_start_1c
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_28

    goto :goto_18

    .line 162
    :cond_28
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    .line 163
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    goto :goto_19

    .line 164
    :cond_29
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v5

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v7

    add-long/2addr v5, v7

    long-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_19

    .line 165
    :cond_2a
    :goto_18
    :try_start_1d
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 166
    :goto_19
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v3

    if-eqz v3, :cond_2b

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2c

    goto :goto_1a

    :cond_2b
    const/4 v4, 0x3

    .line 167
    :goto_1a
    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->f()V

    .line 168
    :cond_2c
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_33

    .line 169
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->e()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_1c

    :catch_9
    move-exception v0

    goto :goto_1f

    :catch_a
    move-exception v0

    goto :goto_1e

    :cond_2e
    :goto_1b
    move/from16 v16, v4

    .line 170
    :try_start_1f
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_2f

    .line 171
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    .line 172
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 173
    :cond_2f
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_30

    .line 174
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    .line 175
    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    .line 176
    :cond_30
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    if-nez v2, :cond_3d

    const-wide/16 v2, 0x3e8

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b

    add-int/lit8 v4, v16, -0x1

    goto/16 :goto_25

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 178
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_24

    :cond_31
    move/from16 v16, v4

    :cond_32
    const/4 v4, 0x3

    .line 179
    :cond_33
    :goto_1c
    :try_start_20
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_34

    .line 180
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v3, 0x0

    .line 181
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 182
    :cond_34
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_35

    .line 183
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v3, 0x0

    .line 184
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    .line 185
    :cond_35
    iget-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    if-nez v3, :cond_38

    const-wide/16 v5, 0x3e8

    .line 186
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    :goto_1d
    add-int/lit8 v3, v16, -0x1

    goto :goto_21

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_22

    :catch_c
    move-exception v0

    move/from16 v16, v4

    :goto_1e
    const/4 v4, 0x3

    :goto_1f
    move-object v3, v0

    .line 187
    :goto_20
    :try_start_21
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V

    .line 188
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 189
    :try_start_22
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_36

    .line 190
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v3, 0x0

    .line 191
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 192
    :cond_36
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_37

    .line 193
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v3, 0x0

    .line 194
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    .line 195
    :cond_37
    iget-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    if-nez v3, :cond_38

    const-wide/16 v5, 0x3e8

    .line 196
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_d

    goto :goto_1d

    :catch_d
    move-exception v0

    move-object v3, v0

    .line 197
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    move/from16 v3, v16

    :goto_21
    move v4, v3

    goto/16 :goto_0

    .line 198
    :goto_22
    :try_start_23
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_39

    .line 199
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v3, 0x0

    .line 200
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->m:Ljava/net/HttpURLConnection;

    .line 201
    :cond_39
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_3a

    .line 202
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v3, 0x0

    .line 203
    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->l:Ljava/net/HttpURLConnection;

    .line 204
    :cond_3a
    iget-boolean v3, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    if-nez v3, :cond_3b

    const-wide/16 v3, 0x3e8

    .line 205
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e

    goto :goto_23

    :catch_e
    move-exception v0

    move-object v3, v0

    .line 206
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :cond_3b
    :goto_23
    throw v2

    :cond_3c
    move/from16 v16, v4

    :cond_3d
    :goto_24
    move/from16 v4, v16

    .line 208
    :goto_25
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->e:Z

    if-nez v2, :cond_3e

    if-gtz v4, :cond_3e

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V

    :cond_3e
    return-void
.end method

.method private o(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDuration(J)V

    .line 2
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_0

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private p(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDuration()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDuration(J)V

    .line 2
    invoke-virtual {p1, p4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setInterrupt(I)V

    .line 3
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p2

    const/4 p3, 0x5

    if-ne p2, p3, :cond_0

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lg1/b;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method e()V
    .locals 30

    move-object/from16 v1, p0

    const-string v2, "GET"

    const-string v3, "Keep-Alive"

    const-string v4, "Connection"

    const-string v5, "   range="

    const-string v6, "   task.getSize()="

    .line 1
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v7, :cond_41

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_2e

    :cond_0
    const/4 v7, 0x3

    .line 2
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 3
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    :goto_0
    if-lez v7, :cond_40

    .line 4
    :try_start_0
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    move-result-object v9

    .line 5
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMimeType()Ljava/lang/String;

    move-result-object v10

    .line 6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tryCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v11}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v11

    if-nez v11, :cond_3f

    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v11}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_28

    .line 8
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v15, v7

    move-object/from16 v16, v8

    const-wide/16 v7, 0x0

    cmp-long v17, v11, v13

    if-lez v17, :cond_3

    .line 10
    :try_start_1
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-static {v11}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 11
    :cond_2
    iput-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v20, v3

    move v7, v15

    :goto_1
    move-object/from16 v8, v16

    goto/16 :goto_29

    .line 12
    :cond_3
    :goto_2
    :try_start_2
    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v13, 0x5

    const/16 v14, 0x1f

    cmp-long v17, v11, v7

    if-lez v17, :cond_5

    :try_start_3
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v19, v11, v7

    if-nez v19, :cond_5

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "The DownloadTask has already been downloaded.2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v8, v10

    invoke-direct {v1, v7, v8, v9}, Lcom/github/snowdream/android/app/downloader/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 15
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    new-instance v8, Lcom/join/mgps/event/j;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    invoke-direct {v8, v9, v14}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 16
    sget-object v7, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v7, v8, v13}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 17
    sget-boolean v7, Lcom/MApplication;->y0:Z

    if-eqz v7, :cond_4

    .line 18
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v7

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    return-void

    .line 20
    :cond_5
    :try_start_4
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 21
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v11}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v11

    if-nez v11, :cond_3e

    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v11}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_25

    .line 23
    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v11

    new-instance v12, Lcom/join/mgps/event/j;

    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v14, 0x16

    invoke-direct {v12, v13, v14}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v12}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    iput-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const/16 v11, 0x1388

    .line 25
    invoke-virtual {v8, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 26
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const/16 v12, 0x2710

    invoke-virtual {v8, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 27
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v8, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 29
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v8, "Range"

    const-string v12, "set connection property:range="

    const-wide/16 v17, 0x0

    cmp-long v21, v13, v17

    if-lez v21, :cond_7

    .line 30
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v12

    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v13, v15

    :try_start_6
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move v13, v15

    :goto_3
    move-object/from16 v28, v2

    move-object/from16 v20, v3

    :goto_4
    move v7, v13

    goto/16 :goto_1

    :cond_7
    move-object/from16 v21, v12

    move v13, v15

    .line 32
    :goto_5
    :try_start_7
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 33
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HTTP STATUS CODE: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v12, ""

    const/16 v14, 0xc8

    if-eq v11, v14, :cond_c

    const/16 v15, 0xce

    if-eq v11, v15, :cond_c

    packed-switch v11, :pswitch_data_0

    move-object v15, v2

    move-object/from16 v20, v3

    const/4 v2, 0x0

    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 34
    :pswitch_0
    :try_start_8
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const-string v11, "Location"

    invoke-virtual {v7, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const-string v15, "Set-Cookie"

    invoke-virtual {v11, v15}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 36
    :try_start_9
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v15, v0

    .line 37
    :try_start_a
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :goto_7
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    iput-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const/16 v14, 0x1388

    .line 40
    invoke-virtual {v15, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 41
    iget-object v14, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const/16 v15, 0x2710

    invoke-virtual {v14, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 42
    iget-object v14, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v14, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v11, :cond_8

    if-eq v11, v12, :cond_8

    .line 43
    :try_start_b
    iget-object v14, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const-string v15, "Cookie"

    invoke-virtual {v14, v15, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 44
    :cond_8
    :try_start_c
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v11, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 45
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    const-wide/16 v17, 0x0

    cmp-long v11, v14, v17

    if-lez v11, :cond_9

    .line 46
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v21

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v15, v2

    move-object/from16 v20, v3

    :try_start_d
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v8, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_9
    move-object v15, v2

    move-object/from16 v20, v3

    .line 48
    :goto_8
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Redirect Url : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_b

    if-ne v2, v3, :cond_a

    .line 50
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v21

    cmp-long v8, v2, v21

    if-lez v8, :cond_a

    const-wide/16 v2, 0x0

    .line 51
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    .line 52
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 53
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_a
    const/4 v2, 0x1

    goto :goto_9

    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v28, v2

    goto/16 :goto_4

    :cond_c
    move-object v15, v2

    move-object/from16 v20, v3

    .line 54
    :try_start_e
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v3, :cond_d

    :try_start_f
    const-string v3, "chunked"

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :cond_d
    const/16 v2, 0xc8

    if-ne v11, v2, :cond_e

    .line 57
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v21

    cmp-long v8, v2, v21

    if-lez v8, :cond_e

    const-wide/16 v2, 0x0

    .line 58
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    .line 59
    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 60
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_e
    const/4 v2, 0x0

    :goto_9
    const/4 v3, 0x1

    :goto_a
    if-nez v2, :cond_f

    if-nez v3, :cond_f

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    return-void

    :catch_5
    move-exception v0

    move-object v2, v0

    move v7, v13

    move-object/from16 v28, v15

    :goto_b
    move-object/from16 v8, v16

    goto/16 :goto_2a

    .line 63
    :cond_f
    :try_start_10
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/papa/sim/statistic/o;->k0(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v2, v12

    .line 66
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/octet-stream"

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-nez v3, :cond_12

    :try_start_11
    const-string v3, "application/vnd.android.package-archive"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "application/zip"

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "audio/x-mod"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 71
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v21

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v23
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    cmp-long v3, v21, v23

    if-nez v3, :cond_11

    goto :goto_d

    .line 72
    :cond_11
    :try_start_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contentTypeConnection error. "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 74
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    return-void

    .line 77
    :cond_12
    :goto_d
    :try_start_14
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    const/16 v8, 0x2d

    const-wide/16 v17, 0x0

    cmp-long v11, v2, v17

    if-nez v11, :cond_21

    .line 78
    :try_start_15
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-eq v10, v2, :cond_13

    .line 79
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 80
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMimeType(Ljava/lang/String;)V

    .line 81
    :cond_13
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 82
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Disposition"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    const-string v3, "filename="

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v9, 0x3b

    .line 84
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    add-int/lit8 v3, v3, 0x9

    if-lez v9, :cond_14

    goto :goto_e

    .line 85
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    :goto_e
    invoke-virtual {v2, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "\""

    .line 87
    invoke-virtual {v2, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_15
    const-string v2, "/"

    .line 88
    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 89
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 90
    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_16
    :goto_f
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "nt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    const-string v2, "/"

    .line 92
    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 93
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 94
    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 95
    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x32

    if-le v3, v7, :cond_1a

    const-string v3, "?"

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "?"

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    .line 98
    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1a
    :goto_10
    move-object v9, v2

    .line 99
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setName(Ljava/lang/String;)V

    .line 100
    :cond_1b
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 101
    sget-object v2, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v2}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_11

    .line 102
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/github/snowdream/android/app/downloader/a;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/roms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    .line 103
    :cond_1d
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/github/snowdream/android/app/downloader/a;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "apk/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 104
    :goto_12
    :try_start_16
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    .line 105
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1e

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 107
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v3

    new-instance v7, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x20

    invoke-direct {v7, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    return-void

    .line 110
    :cond_1e
    :try_start_17
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 111
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPath(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-object/from16 v16, v2

    goto :goto_13

    :catch_7
    move-exception v0

    move-object v8, v2

    move v7, v13

    move-object/from16 v28, v15

    goto/16 :goto_29

    .line 112
    :cond_1f
    :goto_13
    :try_start_18
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    .line 113
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v2

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v7, v2, v9

    if-nez v7, :cond_21

    .line 114
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v7, v9

    invoke-direct {v1, v2, v7, v8}, Lcom/github/snowdream/android/app/downloader/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v8, 0x1f

    invoke-direct {v3, v7, v8}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 116
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v7, 0x5

    invoke-static {v2, v3, v7}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 117
    sget-boolean v2, Lcom/MApplication;->y0:Z

    if-eqz v2, :cond_20

    .line 118
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_5
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 119
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    return-void

    .line 120
    :cond_21
    :try_start_19
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-nez v3, :cond_22

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_22

    .line 122
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v8, 0x20

    invoke-direct {v3, v7, v8}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    return-void

    .line 125
    :cond_22
    :try_start_1b
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v9, v11

    invoke-direct {v1, v2, v9, v10}, Lcom/github/snowdream/android/app/downloader/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 126
    :try_start_1c
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    const-string v7, "rw"

    invoke-direct {v2, v3, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/RandomAccessFile;

    .line 127
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_14

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 128
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 129
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EISDIR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_10
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    if-eqz v2, :cond_24

    .line 130
    :try_start_1e
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 131
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 132
    :cond_23
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    const-string v7, "rw"

    invoke-direct {v2, v3, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/RandomAccessFile;

    .line 133
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_5
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 134
    :cond_24
    :goto_14
    :try_start_1f
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->n:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/InputStream;

    .line 135
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x14

    invoke-direct {v3, v7, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v10, 0x17

    invoke-direct {v3, v7, v10}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    const/16 v2, 0x1000

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 138
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    new-instance v12, Lcom/join/mgps/event/j;

    iget-object v14, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v10, 0x18

    invoke-direct {v12, v14, v10}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v12}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 139
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v7

    if-nez v7, :cond_3d

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v7}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v7

    if-eqz v7, :cond_25

    goto/16 :goto_23

    :cond_25
    const-wide/16 v10, -0x1

    .line 140
    :goto_15
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->j:Ljava/io/InputStream;

    const/4 v12, 0x0

    invoke-virtual {v7, v3, v12, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_10
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-lez v7, :cond_2e

    move/from16 v25, v13

    .line 141
    :try_start_20
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    const-wide/16 v17, 0x0

    cmp-long v26, v12, v17

    if-nez v26, :cond_26

    const/4 v12, 0x1

    :try_start_21
    iput-boolean v12, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto :goto_16

    :catch_9
    move-exception v0

    move-object v2, v0

    move-object/from16 v28, v15

    goto/16 :goto_27

    .line 142
    :cond_26
    :goto_16
    :try_start_22
    iget-object v12, v1, Lcom/github/snowdream/android/app/downloader/a;->k:Ljava/io/RandomAccessFile;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 143
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    move-object/from16 v27, v3

    int-to-long v2, v7

    add-long/2addr v12, v2

    iput-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_a
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    sub-long v2, v2, v21

    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-gez v7, :cond_27

    .line 145
    :try_start_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_9
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :cond_27
    const-wide/16 v12, 0x3e8

    cmp-long v7, v2, v12

    if-lez v7, :cond_2b

    .line 146
    :try_start_24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "The Downloading "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    move-result-wide v28

    add-long v12, v12, v28

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v28

    sub-long v12, v12, v28

    const-wide/16 v17, 0x0

    cmp-long v7, v12, v17

    if-lez v7, :cond_2a

    .line 148
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_a
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    const-wide/16 v12, 0x3e8

    move-object/from16 v28, v15

    :try_start_25
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    move-result-wide v21

    add-long v14, v14, v21

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    sub-long/2addr v14, v8

    mul-long v14, v14, v12

    div-long/2addr v14, v2

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 149
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-eqz v9, :cond_28

    .line 150
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    move-result-wide v7

    add-long/2addr v2, v7

    const-wide/16 v7, 0x64

    mul-long v2, v2, v7

    .line 151
    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 152
    div-long v10, v2, v7

    :cond_28
    const-wide/16 v2, 0x1

    cmp-long v7, v10, v2

    if-gez v7, :cond_29

    const-wide/16 v10, 0x1

    .line 153
    :cond_29
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v10, v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 154
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    move-result-wide v7

    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    add-long/2addr v7, v12

    invoke-virtual {v2, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    goto :goto_17

    :cond_2a
    move-object/from16 v28, v15

    .line 156
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    move-result-wide v7

    iget-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    add-long/2addr v7, v12

    invoke-virtual {v2, v7, v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 157
    :goto_17
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v7, 0x8

    invoke-static {v2, v3, v7}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 158
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v8, 0x21

    invoke-direct {v3, v7, v8}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_18

    :cond_2b
    move-object/from16 v28, v15

    .line 159
    :goto_18
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_19

    .line 160
    :cond_2c
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 161
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 162
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v7, 0x8

    invoke-static {v2, v3, v7}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 163
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v8, 0x21

    invoke-direct {v3, v7, v8}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_1a

    :cond_2d
    move/from16 v13, v25

    move-object/from16 v3, v27

    move-object/from16 v15, v28

    const/16 v2, 0x1000

    const/16 v8, 0x2d

    const/16 v9, 0x14

    goto/16 :goto_15

    :catch_a
    move-exception v0

    goto/16 :goto_24

    :cond_2e
    move/from16 v25, v13

    move-object/from16 v28, v15

    :goto_19
    const/4 v2, 0x1

    .line 164
    :goto_1a
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    if-nez v2, :cond_30

    .line 165
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2f

    .line 166
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v7, v9

    const/4 v3, 0x1

    invoke-direct {v1, v2, v7, v8, v3}, Lcom/github/snowdream/android/app/downloader/a;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_f
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 167
    :cond_2f
    :goto_1b
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    goto/16 :goto_2d

    .line 168
    :cond_30
    :try_start_26
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-static {v2}, Lcom/join/mgps/Util/v0;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 171
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Ljava/lang/String;

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 172
    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_f
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    if-eqz v3, :cond_31

    .line 173
    :try_start_27
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->downlooadmd5Complete:Lcom/papa/sim/statistic/Event;

    new-instance v7, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v7}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_b
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    goto/16 :goto_1e

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 174
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_f
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    goto/16 :goto_1e

    .line 175
    :cond_31
    :try_start_29
    sget-object v3, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v3}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v7, Lcom/papa/sim/statistic/Event;->downlooadmd5Incomplete:Lcom/papa/sim/statistic/Event;

    new-instance v8, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v8}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_c
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    goto :goto_1c

    :catch_c
    move-exception v0

    move-object v3, v0

    .line 176
    :try_start_2a
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    :goto_1c
    new-instance v3, Lcom/join/mgps/dto/GameMd5Data;

    invoke-direct {v3}, Lcom/join/mgps/dto/GameMd5Data;-><init>()V

    .line 178
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/GameMd5Data;->setGameId(Ljava/lang/String;)V

    .line 179
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/GameMd5Data;->setServerGameFileMd5(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/GameMd5Data;->setAppGameFileMd5(Ljava/lang/String;)V

    .line 181
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/GameMd5Data;->setGameDownLoadUrl(Ljava/lang/String;)V

    .line 182
    invoke-direct {v1, v3}, Lcom/github/snowdream/android/app/downloader/a;->k(Lcom/join/mgps/dto/GameMd5Data;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "retry"

    .line 183
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_f
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    if-eqz v2, :cond_33

    add-int/lit8 v7, v25, -0x1

    if-lez v7, :cond_34

    .line 184
    :try_start_2b
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 185
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 186
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 187
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x14

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x2d

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    const-wide/16 v2, 0xfa0

    .line 189
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_e
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    goto/16 :goto_22

    .line 190
    :cond_32
    :try_start_2c
    sget-object v3, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v3}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v3

    sget-object v7, Lcom/papa/sim/statistic/Event;->Md5FailureAchieve:Lcom/papa/sim/statistic/Event;

    new-instance v8, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v8}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_d
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto :goto_1d

    :catch_d
    move-exception v0

    move-object v3, v0

    .line 191
    :try_start_2d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    :goto_1d
    new-instance v3, Lcom/join/mgps/dto/GameMd5Data;

    invoke-direct {v3}, Lcom/join/mgps/dto/GameMd5Data;-><init>()V

    .line 193
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/GameMd5Data;->setGameId(Ljava/lang/String;)V

    .line 194
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->x:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/join/mgps/dto/GameMd5Data;->setServerGameFileMd5(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/GameMd5Data;->setAppGameFileMd5(Ljava/lang/String;)V

    .line 196
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/GameMd5Data;->setGameDownLoadUrl(Ljava/lang/String;)V

    .line 197
    invoke-direct {v1, v3}, Lcom/github/snowdream/android/app/downloader/a;->k(Lcom/join/mgps/dto/GameMd5Data;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "retry"

    .line 198
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_f
    .catchall {:try_start_2d .. :try_end_2d} :catchall_0

    if-eqz v2, :cond_33

    add-int/lit8 v7, v25, -0x1

    if-lez v7, :cond_34

    .line 199
    :try_start_2e
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 200
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 201
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 202
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x14

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x2d

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    const-wide/16 v2, 0xfa0

    .line 204
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_22

    :cond_33
    :goto_1e
    move/from16 v7, v25

    .line 205
    :cond_34
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-eqz v10, :cond_39

    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    cmp-long v10, v2, v8

    if-nez v10, :cond_39

    .line 206
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFinishTime(J)V

    .line 207
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    invoke-virtual {v2, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 208
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v8, 0x8

    invoke-static {v2, v3, v8}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 209
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x21

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 210
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    if-eqz v2, :cond_36

    .line 211
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v8, v10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v8, v9, v3}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    .line 212
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 213
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x24

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_1f

    .line 214
    :cond_35
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x1f

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 215
    :goto_1f
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v8, 0x5

    invoke-static {v2, v3, v8}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 216
    sget-boolean v2, Lcom/MApplication;->y0:Z

    if-eqz v2, :cond_38

    .line 217
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    goto :goto_21

    .line 218
    :cond_36
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v8, v10

    const/4 v3, 0x1

    invoke-direct {v1, v2, v8, v9, v3}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    .line 219
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 220
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x24

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_20

    .line 221
    :cond_37
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x1f

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 222
    :goto_20
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v8, 0x5

    invoke-static {v2, v3, v8}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 223
    sget-boolean v2, Lcom/MApplication;->y0:Z

    if-eqz v2, :cond_38

    .line 224
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 225
    :cond_38
    :goto_21
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    goto/16 :goto_1b

    .line 226
    :cond_39
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3a

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    goto/16 :goto_1b

    .line 228
    :cond_3a
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->v:J

    cmp-long v10, v2, v8

    if-eqz v10, :cond_3c

    :cond_3b
    add-int/lit8 v7, v7, -0x1

    if-lez v7, :cond_3c

    .line 229
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 230
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 231
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x14

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_0

    :goto_22
    add-int/lit8 v7, v7, -0x1

    .line 233
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    move-object/from16 v8, v16

    goto :goto_2b

    .line 234
    :cond_3c
    :try_start_2f
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_e
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    goto/16 :goto_1b

    :catch_e
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    :cond_3d
    :goto_23
    move/from16 v25, v13

    move-object/from16 v28, v15

    .line 236
    :try_start_30
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_f
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    return-void

    :catch_f
    move-exception v0

    goto :goto_26

    :catch_10
    move-exception v0

    move/from16 v25, v13

    :goto_24
    move-object/from16 v28, v15

    goto :goto_26

    :catch_11
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v20, v3

    move/from16 v25, v13

    goto :goto_26

    :cond_3e
    :goto_25
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    return-void

    :catch_12
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v20, v3

    move/from16 v25, v15

    :goto_26
    move-object v2, v0

    :goto_27
    move-object/from16 v8, v16

    move/from16 v7, v25

    goto :goto_2a

    :cond_3f
    :goto_28
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2c

    :catch_13
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v20, v3

    move/from16 v25, v7

    move-object/from16 v16, v8

    :goto_29
    move-object v2, v0

    .line 238
    :goto_2a
    :try_start_31
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V

    .line 239
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_0

    add-int/lit8 v7, v7, -0x1

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    :goto_2b
    move-object/from16 v3, v20

    move-object/from16 v2, v28

    goto/16 :goto_0

    :goto_2c
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    .line 241
    throw v2

    .line 242
    :cond_40
    :goto_2d
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->c()V

    :cond_41
    :goto_2e
    return-void

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method f()V
    .locals 29

    move-object/from16 v1, p0

    const-string v2, "GET"

    const-string v3, "Keep-Alive"

    const-string v4, "Connection"

    .line 1
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v5, :cond_49

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2c

    .line 2
    :cond_0
    iget-wide v5, v1, Lcom/github/snowdream/android/app/downloader/a;->s:J

    const/4 v8, 0x3

    :goto_0
    if-lez v8, :cond_48

    .line 3
    :try_start_0
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getMimeType()Ljava/lang/String;

    move-result-object v11

    .line 4
    iget-object v12, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/github/snowdream/android/app/downloader/a;->w:J

    .line 5
    iget-object v12, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_url_remote()Ljava/lang/String;

    move-result-object v12

    .line 6
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isMod()Z

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "mod/"

    const-string v15, "/"

    if-nez v13, :cond_2

    :try_start_1
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v13}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v13}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getName()Ljava/lang/String;

    move-result-object v13

    .line 8
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getResource_path()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v7, v2

    move-object/from16 v25, v3

    goto/16 :goto_26

    .line 9
    :cond_2
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Lcom/join/mgps/Util/v0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".mod"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/github/snowdream/android/app/downloader/a;->D:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 11
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_3

    .line 12
    :try_start_3
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :cond_3
    :try_start_4
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v10}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v10

    if-nez v10, :cond_47

    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v10}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_25

    .line 15
    :cond_4
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v10, v5, v18

    if-lez v10, :cond_6

    .line 16
    :try_start_5
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    :cond_5
    const-wide/16 v5, 0x0

    :cond_6
    const-wide/16 v16, 0x0

    cmp-long v20, v5, v16

    if-lez v20, :cond_9

    .line 17
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v21

    cmp-long v10, v5, v21

    if-nez v10, :cond_9

    .line 18
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v9, v11

    invoke-direct {v1, v7, v9, v10}, Lcom/github/snowdream/android/app/downloader/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 19
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_7

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_8

    .line 20
    :cond_7
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    new-instance v9, Lcom/join/mgps/event/j;

    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v11, 0x1f

    invoke-direct {v9, v10, v11}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v9}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 21
    sget-object v7, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v10, 0x5

    invoke-static {v7, v9, v10}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 22
    sget-boolean v7, Lcom/MApplication;->y0:Z

    if-eqz v7, :cond_8

    .line 23
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v7

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 24
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    .line 25
    :cond_9
    :try_start_6
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v10}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v10

    if-nez v10, :cond_46

    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v10}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v10

    if-eqz v10, :cond_a

    goto/16 :goto_24

    .line 26
    :cond_a
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v10

    move-object/from16 v21, v12

    new-instance v12, Lcom/join/mgps/event/j;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v22, v8

    :try_start_7
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    move-object/from16 v23, v14

    const/16 v14, 0x16

    invoke-direct {v12, v8, v14}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    iput-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const/16 v9, 0x1388

    .line 28
    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 29
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const/16 v10, 0x2710

    invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 30
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v8, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v8, "-"

    const-string v12, "bytes="

    const-string v14, "Range"

    const-string v10, "set connection property:range="

    const-wide/16 v16, 0x0

    cmp-long v24, v5, v16

    if-lez v24, :cond_b

    .line 32
    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    move-object/from16 v25, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v14, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v7, v2

    move-object/from16 v25, v3

    move/from16 v8, v22

    goto/16 :goto_26

    :cond_b
    move-object/from16 v25, v7

    .line 34
    :goto_3
    :try_start_9
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v11

    const-string v11, "HTTP STATUS CODE: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v9, ""

    const/16 v11, 0xc8

    move-object/from16 v27, v15

    if-eq v7, v11, :cond_12

    const/16 v15, 0xce

    if-eq v7, v15, :cond_12

    packed-switch v7, :pswitch_data_0

    move-object/from16 v28, v13

    move-object/from16 v12, v21

    const/4 v7, 0x0

    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 36
    :pswitch_0
    :try_start_a
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const-string v15, "Location"

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 37
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const-string v11, "Set-Cookie"

    invoke-virtual {v15, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 38
    :try_start_b
    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v15, v0

    .line 39
    :try_start_c
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :goto_5
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    iput-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    move-object/from16 v28, v13

    const/16 v13, 0x1388

    .line 42
    invoke-virtual {v15, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 43
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const/16 v15, 0x2710

    invoke-virtual {v13, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 44
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v13, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_c

    if-eq v11, v9, :cond_c

    .line 45
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const-string v15, "Cookie"

    invoke-virtual {v13, v15, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_c
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v11, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-wide/16 v16, 0x0

    cmp-long v11, v5, v16

    if-lez v11, :cond_d

    .line 47
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v14, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_d
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/16 v10, 0xc8

    if-ne v8, v10, :cond_f

    const-wide/16 v10, 0x0

    cmp-long v8, v5, v10

    if-lez v8, :cond_f

    .line 50
    :try_start_d
    iput-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 51
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_e
    const-wide/16 v5, 0x0

    .line 52
    :cond_f
    :try_start_e
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Redirect Url : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xc8

    if-ne v8, v10, :cond_11

    if-ne v8, v10, :cond_10

    .line 54
    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-lez v8, :cond_10

    const-wide/16 v10, 0x0

    .line 55
    iput-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->r:J

    .line 56
    iput-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->t:J

    .line 57
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->p:Ljava/io/File;

    invoke-static {v8}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_10
    move-object v12, v7

    const/4 v7, 0x1

    goto :goto_7

    :cond_11
    move-object v12, v7

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_12
    move-object/from16 v28, v13

    .line 58
    :try_start_f
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const-string v10, "Transfer-Encoding"

    invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v10, :cond_13

    :try_start_10
    const-string v10, "chunked"

    .line 60
    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_13
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_15

    const-wide/16 v7, 0x0

    cmp-long v10, v5, v7

    if-lez v10, :cond_15

    .line 61
    :try_start_11
    iput-wide v7, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 62
    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_14
    move-object/from16 v12, v21

    const-wide/16 v5, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v7, v2

    move-object/from16 v25, v3

    move/from16 v8, v22

    const/4 v3, 0x3

    const-wide/16 v5, 0x0

    goto/16 :goto_27

    :cond_15
    move-object/from16 v12, v21

    :goto_6
    const/4 v7, 0x0

    :goto_7
    const/4 v8, 0x1

    :goto_8
    if-nez v7, :cond_16

    if-nez v8, :cond_16

    .line 63
    :try_start_12
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    .line 65
    :cond_16
    :try_start_13
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/papa/sim/statistic/o;->k0(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const-string v8, "Content-Type"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-static {v7}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    move-object v7, v9

    .line 68
    :cond_17
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/octet-stream"

    .line 69
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-nez v8, :cond_19

    :try_start_14
    const-string v8, "application/vnd.android.package-archive"

    .line 70
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "application/zip"

    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "audio/x-mod"

    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 73
    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getActual_size()J

    move-result-wide v10

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v13
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    cmp-long v8, v10, v13

    if-nez v8, :cond_18

    goto :goto_a

    .line 74
    :cond_18
    :try_start_15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contentTypeConnection error. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v7, v0

    .line 76
    :try_start_16
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    .line 79
    :cond_19
    :goto_a
    :try_start_17
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v7, :cond_20

    .line 80
    :try_start_18
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    const-string v8, "Content-Disposition"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1c

    const-string v8, "filename="

    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x3b

    .line 82
    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    add-int/lit8 v8, v8, 0x9

    if-lez v10, :cond_1a

    goto :goto_b

    .line 83
    :cond_1a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    :goto_b
    invoke-virtual {v7, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\""

    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const-string v8, "\""

    .line 85
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    :cond_1b
    move-object v8, v7

    move-object/from16 v7, v27

    goto :goto_c

    :cond_1c
    move-object/from16 v7, v27

    .line 86
    invoke-virtual {v12, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v10, 0x1

    add-int/2addr v8, v10

    .line 87
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    .line 88
    invoke-virtual {v12, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 89
    :goto_c
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    const-string v9, "nt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    goto :goto_e

    :cond_1d
    :goto_d
    move-object v13, v8

    goto :goto_f

    .line 90
    :cond_1e
    :goto_e
    invoke-virtual {v12, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 91
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    .line 92
    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    .line 93
    :goto_f
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x32

    if-le v8, v9, :cond_21

    const-string v8, "?"

    .line 94
    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const-string v8, "?"

    .line 95
    invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v13, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_10

    :cond_1f
    const/16 v8, 0x2d

    const/4 v9, 0x0

    .line 96
    invoke-virtual {v13, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_10

    :cond_20
    move-object/from16 v7, v27

    move-object/from16 v13, v28

    :cond_21
    :goto_10
    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-nez v10, :cond_2a

    .line 97
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v26

    if-eq v9, v8, :cond_22

    .line 98
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    .line 99
    :cond_22
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 100
    sget-object v8, Lcom/join/mgps/enums/Dtype;->MOD:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v8}, Lcom/join/android/app/common/utils/APKUtils;->I(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v8

    if-eqz v8, :cond_23

    goto :goto_11

    .line 101
    :cond_23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/github/snowdream/android/app/downloader/a;->D:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRomType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/roms/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    .line 102
    :cond_24
    :goto_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/github/snowdream/android/app/downloader/a;->D:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v23

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 103
    :goto_12
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    .line 104
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 105
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_25

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_25

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    new-instance v8, Lcom/join/mgps/event/j;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v10, 0x20

    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 108
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    .line 109
    :cond_25
    :try_start_19
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_26

    .line 110
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 111
    :cond_26
    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8, v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 112
    :cond_27
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStartTime(J)V

    .line 113
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    move-result-wide v7

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_2a

    .line 114
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 115
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_28

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v7}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_29

    .line 116
    :cond_28
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v8, v10

    invoke-direct {v1, v7, v8, v9}, Lcom/github/snowdream/android/app/downloader/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 117
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    new-instance v8, Lcom/join/mgps/event/j;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v10, 0x1f

    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 118
    sget-boolean v7, Lcom/MApplication;->y0:Z

    if-eqz v7, :cond_29

    .line 119
    sget-object v7, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v9, 0x5

    invoke-static {v7, v8, v9}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 120
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v7

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 121
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    .line 122
    :cond_2a
    :try_start_1a
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 123
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-nez v8, :cond_2b

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_2b

    .line 124
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    new-instance v8, Lcom/join/mgps/event/j;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v10, 0x20

    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 126
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    .line 127
    :cond_2b
    :try_start_1c
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    const-string v9, "rw"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/RandomAccessFile;

    .line 128
    invoke-virtual {v7, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_13

    :catch_5
    move-exception v0

    move-object v7, v0

    .line 129
    :try_start_1d
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 130
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "EISDIR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    if-eqz v7, :cond_2d

    .line 131
    :try_start_1e
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2c

    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 132
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-static {v7}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 133
    :cond_2c
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    const-string v9, "rw"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/RandomAccessFile;

    .line 134
    invoke-virtual {v7, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 135
    :cond_2d
    :goto_13
    :try_start_1f
    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->o:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->h:Ljava/io/InputStream;

    .line 136
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    new-instance v8, Lcom/join/mgps/event/j;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v10, 0x14

    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v7

    new-instance v8, Lcom/join/mgps/event/j;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v10, 0x17

    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    const/16 v7, 0x1000

    const/16 v8, 0x1000

    new-array v8, v8, [B

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v13

    new-instance v14, Lcom/join/mgps/event/j;

    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x18

    invoke-direct {v14, v15, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v14}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 140
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v9}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v9

    if-nez v9, :cond_45

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v9}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v9

    if-eqz v9, :cond_2e

    goto/16 :goto_21

    :cond_2e
    const-wide/16 v9, -0x1

    .line 141
    :goto_14
    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->h:Ljava/io/InputStream;

    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v13
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-lez v13, :cond_39

    const-wide/16 v16, 0x0

    cmp-long v23, v5, v16

    if-nez v23, :cond_2f

    const/4 v7, 0x1

    .line 142
    :try_start_20
    iput-boolean v7, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 143
    :cond_2f
    :try_start_21
    iget-object v7, v1, Lcom/github/snowdream/android/app/downloader/a;->i:Ljava/io/RandomAccessFile;

    const/4 v14, 0x0

    invoke-virtual {v7, v8, v14, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 144
    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    move-object v7, v2

    move-object/from16 v25, v3

    int-to-long v2, v13

    add-long/2addr v14, v2

    :try_start_22
    iput-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    const-wide/16 v13, 0x0

    cmp-long v15, v2, v13

    if-gez v15, :cond_30

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    :cond_30
    const-wide/16 v13, 0x3e8

    cmp-long v15, v2, v13

    if-lez v15, :cond_36

    .line 147
    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    iget-object v15, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v15}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    move-result-wide v26

    sub-long v13, v13, v26

    const-wide/16 v16, 0x0

    cmp-long v15, v13, v16

    if-lez v15, :cond_35

    .line 148
    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-wide/16 v12, 0x3e8

    iget-wide v14, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    move-result-wide v26

    sub-long v14, v14, v26

    mul-long v14, v14, v12

    div-long/2addr v14, v2

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 149
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->w:J

    const-wide/16 v11, 0x0

    cmp-long v13, v2, v11

    if-eqz v13, :cond_33

    .line 150
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    const-wide/16 v9, 0x64

    mul-long v2, v2, v9

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    move-result-wide v9

    add-long/2addr v2, v9

    .line 151
    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v9

    if-eqz v9, :cond_32

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_31

    goto :goto_15

    .line 152
    :cond_31
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->w:J

    goto :goto_16

    .line 153
    :cond_32
    :goto_15
    iget-wide v9, v1, Lcom/github/snowdream/android/app/downloader/a;->w:J

    iget-object v11, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v11}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 154
    :goto_16
    div-long/2addr v2, v9

    .line 155
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "downloadResProgress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "totalSize\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide v9, v2

    :cond_33
    const-wide/16 v2, 0x1

    cmp-long v11, v9, v2

    if-gez v11, :cond_34

    const-wide/16 v9, 0x1

    .line 156
    :cond_34
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2, v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 157
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    invoke-virtual {v2, v11, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 158
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-wide v11, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    invoke-virtual {v2, v11, v12}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCurrentSize(J)V

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    goto :goto_17

    .line 160
    :cond_35
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-wide v13, v1, Lcom/github/snowdream/android/app/downloader/a;->u:J

    invoke-virtual {v2, v13, v14}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 161
    :goto_17
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v13, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v14, 0x21

    invoke-direct {v3, v13, v14}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 162
    :cond_36
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_19

    .line 163
    :cond_37
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v1, v2}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 164
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSpeed(Ljava/lang/String;)V

    .line 165
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v8, 0x8

    invoke-static {v2, v3, v8}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/event/j;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v9, 0x21

    invoke-direct {v3, v8, v9}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_6
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    const/4 v2, 0x0

    goto :goto_1a

    :cond_38
    move-object v2, v7

    move-object/from16 v3, v25

    const/16 v7, 0x1000

    goto/16 :goto_14

    :catch_6
    move-exception v0

    goto :goto_18

    :catch_7
    move-exception v0

    move-object v7, v2

    move-object/from16 v25, v3

    :goto_18
    move-object v2, v0

    move/from16 v8, v22

    const/4 v3, 0x3

    goto/16 :goto_28

    :cond_39
    move-object v7, v2

    move-object/from16 v25, v3

    :goto_19
    const/4 v2, 0x1

    .line 167
    :goto_1a
    :try_start_23
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_9
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    if-nez v2, :cond_3b

    .line 168
    :try_start_24
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3a

    .line 169
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v8, v10

    const/4 v3, 0x1

    invoke-direct {v1, v2, v8, v9, v3}, Lcom/github/snowdream/android/app/downloader/a;->b(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_6
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 170
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    goto/16 :goto_2b

    .line 171
    :cond_3b
    :try_start_25
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->w:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    cmp-long v8, v5, v2

    if-eqz v8, :cond_40

    .line 173
    iget-wide v2, v1, Lcom/github/snowdream/android/app/downloader/a;->w:J

    cmp-long v8, v5, v2

    if-nez v8, :cond_40

    .line 174
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFinishTime(J)V

    .line 175
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-wide v8, v1, Lcom/github/snowdream/android/app/downloader/a;->w:J

    invoke-virtual {v2, v8, v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRes_currentSize(J)V

    .line 176
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    iget-object v3, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_path(Ljava/lang/String;)V

    .line 177
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3d

    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTask_down_type()I

    move-result v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_9
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3c

    goto :goto_1b

    .line 178
    :cond_3c
    :try_start_26
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/16 v9, 0x8

    invoke-static {v2, v8, v9}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 179
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v8, Lcom/join/mgps/event/j;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v10, 0x21

    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_3d
    const/4 v3, 0x3

    .line 180
    :goto_1b
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v8, v10

    invoke-direct {v1, v2, v8, v9}, Lcom/github/snowdream/android/app/downloader/a;->o(Lcom/github/snowdream/android/app/downloader/DownloadTask;J)V

    .line 181
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v8, Lcom/join/mgps/event/j;

    iget-object v9, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v10, 0x1f

    invoke-direct {v8, v9, v10}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v8}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 182
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const/4 v9, 0x5

    invoke-static {v2, v8, v9}, Lcom/join/mgps/Util/UtilsMy;->R2(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 183
    sget-boolean v2, Lcom/MApplication;->y0:Z

    if-eqz v2, :cond_3e

    .line 184
    invoke-static {}, Lcom/join/android/app/common/servcie/a;->e()Lcom/join/android/app/common/servcie/a;

    move-result-object v2

    iget-object v8, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v8}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/join/android/app/common/servcie/a;->k(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 185
    :cond_3e
    :goto_1c
    iget-boolean v2, v1, Lcom/github/snowdream/android/app/downloader/a;->f:Z

    if-eqz v2, :cond_3f

    .line 186
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v8, v10

    const/4 v10, 0x0

    invoke-direct {v1, v2, v8, v9, v10}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    .line 187
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 188
    :cond_3f
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->a:J

    sub-long/2addr v8, v10

    const/4 v10, 0x1

    invoke-direct {v1, v2, v8, v9, v10}, Lcom/github/snowdream/android/app/downloader/a;->p(Lcom/github/snowdream/android/app/downloader/DownloadTask;JI)V

    .line 189
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFileType()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Lcom/join/mgps/enums/Dtype;->apk:Lcom/join/mgps/enums/Dtype;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    :goto_1d
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_a
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    :cond_40
    const/4 v3, 0x3

    .line 192
    :try_start_27
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    const/4 v8, 0x7

    if-ne v2, v8, :cond_41

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_a
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    .line 195
    :cond_41
    :try_start_28
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/github/snowdream/android/app/downloader/a;->w:J
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_a
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_42

    goto :goto_1e

    :cond_42
    move/from16 v8, v22

    goto :goto_20

    :cond_43
    :goto_1e
    add-int/lit8 v8, v22, -0x1

    if-lez v8, :cond_44

    .line 196
    :try_start_29
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->q:Ljava/io/File;

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->delete(Ljava/io/File;)Z

    .line 197
    iget-object v2, v1, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    const-wide/16 v9, 0x1

    invoke-virtual {v2, v9, v10}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setProgress(J)V

    .line 198
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    new-instance v9, Lcom/join/mgps/event/j;

    iget-object v10, v1, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v11, 0x14

    invoke-direct {v9, v10, v11}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v9}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_8
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :goto_1f
    add-int/lit8 v8, v8, -0x1

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    goto :goto_29

    .line 201
    :cond_44
    :goto_20
    :try_start_2a
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_8
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    :catch_8
    move-exception v0

    goto :goto_27

    :catch_9
    move-exception v0

    goto :goto_22

    :cond_45
    :goto_21
    move-object v7, v2

    move-object/from16 v25, v3

    const/4 v3, 0x3

    .line 204
    :try_start_2b
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_a
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    :catch_a
    move-exception v0

    goto :goto_23

    :catch_b
    move-exception v0

    move-object v7, v2

    move-object/from16 v25, v3

    :goto_22
    const/4 v3, 0x3

    :goto_23
    move-object v2, v0

    move/from16 v8, v22

    goto :goto_28

    :cond_46
    :goto_24
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    :cond_47
    :goto_25
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2a

    :catch_c
    move-exception v0

    move-object v7, v2

    move-object/from16 v25, v3

    move/from16 v22, v8

    :goto_26
    const/4 v3, 0x3

    :goto_27
    move-object v2, v0

    .line 206
    :goto_28
    :try_start_2c
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V

    .line 207
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    goto :goto_1f

    :goto_29
    move-object v2, v7

    move-object/from16 v3, v25

    goto/16 :goto_0

    .line 208
    :goto_2a
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    .line 209
    throw v2

    .line 210
    :cond_48
    :goto_2b
    invoke-direct/range {p0 .. p0}, Lcom/github/snowdream/android/app/downloader/a;->d()V

    :cond_49
    :goto_2c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/snowdream/android/app/downloader/a;->b:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setPriority(I)V

    const/16 v0, 0x13

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/join/mgps/Util/u;->e:Ljava/lang/String;

    sput-object v0, Lcom/github/snowdream/android/app/downloader/a;->D:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-static {v0}, Lcom/join/android/app/common/utils/k;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/github/snowdream/android/app/downloader/a;->g:Z

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/event/j;

    iget-object v2, p0, Lcom/github/snowdream/android/app/downloader/a;->c:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/join/mgps/event/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v0}, Lcom/github/snowdream/android/app/downloader/a;->m(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/github/snowdream/android/app/downloader/a;->d:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0, v0}, Lcom/github/snowdream/android/app/downloader/a;->l(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/github/snowdream/android/app/downloader/a;->n()V

    :cond_4
    :goto_0
    return-void

    .line 11
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/github/snowdream/android/app/downloader/a;->a()V

    return-void
.end method
