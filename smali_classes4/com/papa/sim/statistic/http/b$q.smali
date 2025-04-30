.class public Lcom/papa/sim/statistic/http/b$q;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/sim/statistic/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/http/b;


# direct methods
.method public constructor <init>(Lcom/papa/sim/statistic/http/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$q;->a:Lcom/papa/sim/statistic/http/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Lcom/papa/sim/statistic/http/b$q;->a:Lcom/papa/sim/statistic/http/b;

    move-object/from16 v3, p4

    invoke-static {v2, v3}, Lcom/papa/sim/statistic/http/b;->q(Lcom/papa/sim/statistic/http/b;[Lcom/papa/sim/statistic/http/b$n;)[Lcom/papa/sim/statistic/http/b$n;

    move-result-object v2

    .line 2
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 3
    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, "\""

    const-string v8, "form-data; name=\""

    const-string v9, "Content-Disposition"

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v6, v4, :cond_0

    aget-object v12, v2, v6

    new-array v10, v10, [Ljava/lang/String;

    aput-object v9, v10, v5

    .line 4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Lcom/papa/sim/statistic/http/b$n;->a:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-static {v10}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, v12, Lcom/papa/sim/statistic/http/b$n;->b:Ljava/lang/String;

    .line 5
    invoke-static {v8, v9}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v8

    .line 6
    invoke-virtual {v3, v7, v8}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 7
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 8
    aget-object v4, v1, v2

    .line 9
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v12, v0, Lcom/papa/sim/statistic/http/b$q;->a:Lcom/papa/sim/statistic/http/b;

    invoke-static {v12, v6}, Lcom/papa/sim/statistic/http/b;->r(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v12

    invoke-static {v12, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v4

    new-array v12, v10, [Ljava/lang/String;

    aput-object v9, v12, v5

    .line 11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v14, p3, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\"; filename=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v11

    invoke-static {v12}, Lokhttp3/Headers;->of([Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    .line 13
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    move-object/from16 v3, p1

    .line 14
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    move-object/from16 v2, p5

    .line 16
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v3, v1

    new-array v4, v0, [Ljava/io/File;

    aput-object p3, v4, v1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/http/b$q;->d(Ljava/lang/String;[Ljava/lang/String;[Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v3, v1

    new-array v4, v0, [Ljava/io/File;

    aput-object p3, v4, v1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/http/b$q;->d(Ljava/lang/String;[Ljava/lang/String;[Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;[Ljava/lang/String;[Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/papa/sim/statistic/http/b$q;->a(Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$q;->a:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v3, v1

    new-array v4, v0, [Ljava/io/File;

    aput-object p3, v4, v1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p5

    .line 1
    invoke-virtual/range {v1 .. v7}, Lcom/papa/sim/statistic/http/b$q;->g(Ljava/lang/String;[Ljava/lang/String;[Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v3, v1

    new-array v4, v0, [Ljava/io/File;

    aput-object p3, v4, v1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1
    invoke-virtual/range {v1 .. v7}, Lcom/papa/sim/statistic/http/b$q;->g(Ljava/lang/String;[Ljava/lang/String;[Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;[Ljava/lang/String;[Ljava/io/File;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/papa/sim/statistic/http/b$q;->a(Ljava/lang/String;[Ljava/io/File;[Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$q;->a:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2, p5, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    return-void
.end method
