.class public Lcom/join/mgps/rpc/retrofit2/a;
.super Ljava/lang/Object;
.source "HttpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 2
    :try_start_0
    sget-object v0, Lcom/MApplication;->q:Lcom/MApplication;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/pref/h;->H()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "wf-single"

    const-string v5, "arm64"

    const-string v6, "wf-o"

    const-string v7, "android-ver"

    const-string v8, "wf-pm"

    const-string v9, "wf-i"

    const-string v10, "wf-m"

    const-string v11, "wf-ad"

    const-string v12, "wf-a"

    const-string v13, "wf-d"

    const-string v14, "wufankey"

    if-eqz v0, :cond_3

    .line 4
    :try_start_2
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".papakey"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 8
    invoke-static {v0, v15}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_1

    .line 9
    invoke-static {v0, v3}, Lcom/join/mgps/Util/f0;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/k;->b([B)Ljava/lang/String;

    move-result-object v2

    .line 11
    :cond_2
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v14, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->r:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v13, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->y:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v12, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->s:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v11, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->t:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v10, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->u:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v9, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->v:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v8, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->x:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v7, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->A:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v6, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->B:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v5, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget v2, Lcom/MApplication;->w:I

    .line 22
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/k;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 26
    invoke-virtual {v2, v14, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->r:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v13, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->y:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->s:Ljava/lang/String;

    .line 29
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->t:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->u:Ljava/lang/String;

    .line 31
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->v:Ljava/lang/String;

    .line 32
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->x:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v7, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->A:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v6, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget-object v2, Lcom/MApplication;->B:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v5, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    sget v2, Lcom/MApplication;->w:I

    .line 36
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 39
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    :cond_4
    move-object/from16 v1, p1

    .line 40
    invoke-interface {v1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method
