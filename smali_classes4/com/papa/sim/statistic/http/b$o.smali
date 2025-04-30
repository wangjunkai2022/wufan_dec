.class public Lcom/papa/sim/statistic/http/b$o;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/sim/statistic/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field private final a:Lokhttp3/MediaType;

.field private final b:Lokhttp3/MediaType;

.field final synthetic c:Lcom/papa/sim/statistic/http/b;


# direct methods
.method public constructor <init>(Lcom/papa/sim/statistic/http/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "application/octet-stream;charset=utf-8"

    .line 2
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$o;->a:Lokhttp3/MediaType;

    const-string p1, "text/plain;charset=utf-8"

    .line 3
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$o;->b:Lokhttp3/MediaType;

    return-void
.end method

.method private a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 2
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->P()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wufankey"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 3
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->L()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf-d"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 4
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->J()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf-a"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 5
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->K()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf-ad"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 6
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->N()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf-m"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 7
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->M()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf-i"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    .line 8
    invoke-virtual {v1}, Lcom/papa/sim/statistic/http/b;->O()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf-pm"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p1, p3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 12
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/File;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->c(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->a:Lokhttp3/MediaType;

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->b:Lokhttp3/MediaType;

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;[B)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->g(Ljava/lang/String;[BLjava/lang/Object;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;[BLjava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->a:Lokhttp3/MediaType;

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->i(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {v0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b;->m(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$o;->k(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa/sim/statistic/http/b$o;->i(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->m(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/io/File;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "application/octet-stream;charset=utf-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/http/b$o;->v(Ljava/lang/String;Ljava/io/File;Lokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->o(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "application/json;charset=utf-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/http/b$o;->w(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public p(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->q(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public q(Ljava/lang/String;Ljava/util/Map;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/papa/sim/statistic/http/b$p;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {v0, p2}, Lcom/papa/sim/statistic/http/b;->o(Lcom/papa/sim/statistic/http/b;Ljava/util/Map;)[Lcom/papa/sim/statistic/http/b$n;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/papa/sim/statistic/http/b$o;->u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public r(Ljava/lang/String;[BLcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->s(Ljava/lang/String;[BLcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public s(Ljava/lang/String;[BLcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "application/octet-stream;charset=utf-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/http/b$o;->x(Ljava/lang/String;[BLokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public t(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/papa/sim/statistic/http/b$o;->u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public u(Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {v0, p1, p2, p4}, Lcom/papa/sim/statistic/http/b;->m(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;[Lcom/papa/sim/statistic/http/b$n;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2, p3, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/io/File;Lokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2, p5}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2, p4, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Lokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2, p5}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2, p4, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    return-void
.end method

.method public x(Ljava/lang/String;[BLokhttp3/MediaType;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2, p5}, Lcom/papa/sim/statistic/http/b$o;->a(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$o;->c:Lcom/papa/sim/statistic/http/b;

    invoke-static {p2, p4, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    return-void
.end method
