.class public Lcom/papa/sim/statistic/http/b$k;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/sim/statistic/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/http/b;


# direct methods
.method public constructor <init>(Lcom/papa/sim/statistic/http/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$k;->a:Lcom/papa/sim/statistic/http/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Request;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa/sim/statistic/http/b$k;->c(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/sim/statistic/http/b$k;->a(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/http/b$k;->d(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public d(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$k;->a:Lcom/papa/sim/statistic/http/b;

    invoke-static {v0}, Lcom/papa/sim/statistic/http/b;->n(Lcom/papa/sim/statistic/http/b;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa/sim/statistic/http/b$k;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa/sim/statistic/http/b$k;->c(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/papa/sim/statistic/http/b$k;->h(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/papa/sim/statistic/http/b$k;->a(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/papa/sim/statistic/http/b$k;->i(Lokhttp3/Request;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method

.method public i(Lokhttp3/Request;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$k;->a:Lcom/papa/sim/statistic/http/b;

    invoke-static {v0, p2, p1}, Lcom/papa/sim/statistic/http/b;->p(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V

    return-void
.end method
