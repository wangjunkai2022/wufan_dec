.class public Lcom/join/android/app/common/http/h;
.super Ljava/lang/Object;
.source "RPCClient.java"


# static fields
.field private static a:Lcom/join/android/app/common/http/h;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/join/android/app/common/http/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/http/h;->a:Lcom/join/android/app/common/http/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/android/app/common/http/h;

    invoke-direct {v0}, Lcom/join/android/app/common/http/h;-><init>()V

    sput-object v0, Lcom/join/android/app/common/http/h;->a:Lcom/join/android/app/common/http/h;

    .line 2
    :cond_0
    sget-object v0, Lcom/join/android/app/common/http/h;->a:Lcom/join/android/app/common/http/h;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/http/d;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/e1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://datainterface.5fun.com/tf?net_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&v="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/j;->z()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/join/android/app/common/http/d;->y(Ljava/lang/String;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public d([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;Ljava/lang/String;I)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    .line 1
    new-instance v7, Lokhttp3/OkHttpClient;

    invoke-direct {v7}, Lokhttp3/OkHttpClient;-><init>()V

    .line 2
    array-length v8, v0

    const/4 v9, 0x2

    const-string v10, ""

    if-ge v8, v9, :cond_0

    return-object v10

    .line 3
    :cond_0
    new-instance v8, Ljava/io/File;

    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v11, Ljava/io/File;

    const/4 v12, 0x1

    aget-object v0, v0, v12

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move/from16 v0, p9

    if-ne v0, v12, :cond_1

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    :goto_0
    const-string v0, "shareType"

    const-string v13, "archiveDesc"

    const-string v14, "archiveName"

    const-string v15, "gameId"

    move-object/from16 v16, v7

    const-string v7, "token"

    const-string v5, "uid"

    if-ne v9, v12, :cond_2

    const-string v12, "application/octet-stream"

    move-object/from16 p1, v0

    .line 5
    invoke-static {v12}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, v8}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 6
    invoke-static {v12}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v12

    invoke-static {v12, v11}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v12

    move-object/from16 v17, v10

    .line 7
    new-instance v10, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v10}, Lokhttp3/MultipartBody$Builder;-><init>()V

    move/from16 p9, v9

    sget-object v9, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 8
    invoke-virtual {v10, v9}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v9

    .line 9
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "archiveFile"

    invoke-virtual {v9, v10, v8, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "archiveCover"

    invoke-virtual {v0, v9, v8, v12}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v5, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v7, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v15, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, v14, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v13, v6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v9, p9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v5, v17

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, p1

    .line 16
    invoke-virtual {v0, v8, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    const-string v1, "archiveFileName"

    move-object/from16 v10, p6

    .line 17
    invoke-virtual {v0, v1, v10}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v8, v0

    move-object v0, v5

    move-object v5, v10

    move-object/from16 v10, p6

    .line 19
    new-instance v11, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v11}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v12, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 20
    invoke-virtual {v11, v12}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v11

    .line 21
    invoke-virtual {v11, v0, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v7, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v15, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v14, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v13, v6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v8, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    .line 28
    :goto_1
    new-instance v1, Lcom/join/android/app/common/http/f;

    move-object/from16 v2, p7

    invoke-direct {v1, v0, v2, v10}, Lcom/join/android/app/common/http/f;-><init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/cloud/shareArchive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    move-object/from16 v1, v16

    .line 33
    :try_start_0
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v5
.end method

.method public e(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;Lcom/join/android/app/common/http/b;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/join/android/app/common/http/d;->I()Lcom/join/android/app/common/http/d$q;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/join/mgps/rpc/g;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v16/backup/upload"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 p1, 0x5

    new-array v4, p1, [Lcom/join/android/app/common/http/d$n;

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudUploadInfo;->getRid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "rid"

    invoke-direct {p1, v5, v2}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object p1, v4, v2

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudUploadInfo;->getUid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    invoke-direct {p1, v3, v2}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object p1, v4, v2

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudUploadInfo;->getToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "token"

    invoke-direct {p1, v3, v2}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object p1, v4, v2

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    const-string v2, "backup_type"

    const-string v3, "game"

    invoke-direct {p1, v2, v3}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object p1, v4, v2

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CloudUploadInfo;->getGame_id()Ljava/lang/String;

    move-result-object p2

    const-string v2, "game_id"

    invoke-direct {p1, v2, p2}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    aput-object p1, v4, p2

    new-instance v5, Lcom/join/android/app/common/http/h$b;

    invoke-direct {v5, p0, p4}, Lcom/join/android/app/common/http/h$b;-><init>(Lcom/join/android/app/common/http/h;Lcom/join/android/app/common/http/b;)V

    .line 6
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v2, "backup_file"

    move-object v3, p3

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/join/android/app/common/http/d$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/RequestModel;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    .line 2
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "application/octet-stream"

    .line 6
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 7
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 8
    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "args.archiveFile"

    invoke-virtual {v2, v3, v1, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string v1, "args.uid"

    .line 10
    invoke-virtual {p1, v1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "args.userToken"

    .line 11
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "WF"

    const-string p3, "wufun"

    .line 12
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 13
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getAndroidId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "androidId"

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "androidVer"

    .line 14
    invoke-virtual {p1, v1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "args.async"

    const-string v1, "1"

    .line 15
    invoke-virtual {p1, p2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "channelNum"

    .line 16
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    const-string p5, "deviceId"

    invoke-virtual {p1, p5, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    sget-object p2, Lcom/MApplication;->r:Ljava/lang/String;

    const-string p5, "hDeviceId"

    .line 18
    invoke-virtual {p1, p5, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getPackage_name()Ljava/lang/String;

    move-result-object p2

    const-string p5, "package_name"

    invoke-virtual {p1, p5, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getPackage_type()Ljava/lang/String;

    move-result-object p2

    const-string p5, "package_type"

    invoke-virtual {p1, p5, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getPlatform()Ljava/lang/String;

    move-result-object p2

    const-string p5, "platform"

    invoke-virtual {p1, p5, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p4}, Lcom/join/mgps/dto/RequestModel;->getVersion()Ljava/lang/String;

    move-result-object p2

    const-string p4, "version"

    invoke-virtual {p1, p4, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/join/android/app/common/http/f;

    invoke-direct {p2, p1, p7, p6}, Lcom/join/android/app/common/http/f;-><init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V

    .line 25
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/join/mgps/rpc/g;->B:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/common/upload"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 26
    invoke-virtual {p1, p4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 27
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 29
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 31
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "upload File "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p3
.end method

.method public g(Landroid/content/Context;Lcom/papa/sim/statistic/UpLoadGameConfig;Ljava/io/File;Lcom/join/android/app/common/http/b;)V
    .locals 11

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;

    invoke-direct {v0}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setUid(I)V

    const-string v1, ""

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setDevice_id(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setVer(I)V

    .line 5
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setGame_name(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_type()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setGame_type(I)V

    .line 8
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_platform_type()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setGame_platform_type(I)V

    .line 9
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_explain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/UpLoadGameConfigTemp;->setGame_explain(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/join/android/app/common/http/d;->I()Lcom/join/android/app/common/http/d$q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/user/upfile/upload_game_pack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    new-array v6, v4, [Lcom/join/android/app/common/http/d$n;

    new-instance v4, Lcom/join/android/app/common/http/d$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "uid"

    invoke-direct {v4, v7, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v6, v5

    new-instance v4, Lcom/join/android/app/common/http/d$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/android/app/common/utils/j;->y()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ver"

    invoke-direct {v4, v7, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v4, v6, v5

    new-instance v4, Lcom/join/android/app/common/http/d$n;

    .line 14
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getToken()Ljava/lang/String;

    move-result-object v5

    const-string v8, "token"

    invoke-direct {v4, v8, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v4, v6, v5

    new-instance v4, Lcom/join/android/app/common/http/d$n;

    .line 15
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_name()Ljava/lang/String;

    move-result-object v5

    const-string v9, "game_name"

    invoke-direct {v4, v9, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v4, v6, v5

    new-instance v4, Lcom/join/android/app/common/http/d$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_type()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "game_type"

    invoke-direct {v4, v10, v5}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v4, v6, v5

    new-instance v4, Lcom/join/android/app/common/http/d$n;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/j;->y()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v7, p1}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    aput-object v4, v6, p1

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 18
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v8, v4}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object p1, v6, v4

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 19
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v9, v4}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-object p1, v6, v4

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_type()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v10, v4}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-object p1, v6, v4

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_platform_type()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "game_platform_type"

    invoke-direct {p1, v5, v4}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x9

    aput-object p1, v6, v4

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    .line 22
    invoke-virtual {p2}, Lcom/papa/sim/statistic/UpLoadGameConfig;->getGame_explain()Ljava/lang/String;

    move-result-object p2

    const-string v4, "game_explain"

    invoke-direct {p1, v4, p2}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xa

    aput-object p1, v6, p2

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    const-string p2, "sign"

    invoke-direct {p1, p2, v0}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xb

    aput-object p1, v6, p2

    new-instance p1, Lcom/join/android/app/common/http/d$n;

    const-string p2, "device_id"

    invoke-direct {p1, p2, v1}, Lcom/join/android/app/common/http/d$n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xc

    aput-object p1, v6, p2

    new-instance v7, Lcom/join/android/app/common/http/h$a;

    invoke-direct {v7, p0, p4}, Lcom/join/android/app/common/http/h$a;-><init>(Lcom/join/android/app/common/http/h;Lcom/join/android/app/common/http/b;)V

    .line 23
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v4, "files"

    move-object v5, p3

    .line 24
    invoke-virtual/range {v2 .. v8}, Lcom/join/android/app/common/http/d$q;->f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/join/android/app/common/http/d$n;Lcom/join/android/app/common/http/d$p;Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    .line 2
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p8, "application/octet-stream"

    .line 7
    invoke-static {p8}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-static {p8}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p8

    invoke-static {p8, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p8

    goto :goto_0

    :cond_0
    const/4 p8, 0x0

    .line 10
    :goto_0
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 11
    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "args.archiveFile"

    invoke-virtual {v3, v4, v1, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "args.archiveCover"

    invoke-virtual {v1, v2, p1, p8}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p8, "args.uid"

    .line 14
    invoke-virtual {p1, p8, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "args.userToken"

    .line 15
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "args.gameId"

    .line 16
    invoke-virtual {p1, p2, p4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "args.archiveDesc"

    .line 17
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "args.version"

    .line 18
    invoke-virtual {p1, p2, p6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/join/android/app/common/http/f;

    invoke-direct {p2, p1, p9, p7}, Lcom/join/android/app/common/http/f;-><init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/join/mgps/rpc/g;->B:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/v6_2/game/cloudArchive/release"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 22
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 25
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "upload File "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return-object p2

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method public i([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/android/app/common/http/g;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 2
    array-length v1, p1

    const-string v2, ""

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    return-object v2

    .line 3
    :cond_0
    new-instance v1, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "application/octet-stream"

    .line 5
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 6
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 7
    new-instance v5, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v5}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 8
    invoke-virtual {v5, v6}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v5

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v6, "archiveFile"

    invoke-virtual {v5, v6, v1, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "archiveCover"

    invoke-virtual {v1, v4, v3, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string v1, "uid"

    .line 11
    invoke-virtual {p1, v1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "token"

    .line 12
    invoke-virtual {p1, p2, p3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "gameId"

    .line 13
    invoke-virtual {p1, p2, p4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "archiveName"

    .line 14
    invoke-virtual {p1, p2, p5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "archiveFileName"

    .line 15
    invoke-virtual {p1, p2, p6}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    const-string p2, "archiveFileMd5"

    .line 16
    invoke-virtual {p1, p2, p7}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    .line 18
    new-instance p2, Lcom/join/android/app/common/http/f;

    invoke-direct {p2, p1, p8, p6}, Lcom/join/android/app/common/http/f;-><init>(Lokhttp3/RequestBody;Lcom/join/android/app/common/http/g;Ljava/lang/String;)V

    .line 19
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/join/mgps/rpc/g;->z:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/cloud/backupArchive"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 20
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 23
    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "upload File "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p2

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v2
.end method
