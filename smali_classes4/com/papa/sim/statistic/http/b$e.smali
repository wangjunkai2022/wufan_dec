.class Lcom/papa/sim/statistic/http/b$e;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/b;->w(Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/http/b$p;

.field final synthetic b:Lcom/papa/sim/statistic/http/b;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    iput-object p2, p0, Lcom/papa/sim/statistic/http/b$e;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Request;Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$e;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-static {v0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b;->f(Lcom/papa/sim/statistic/http/b;Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method

.method public b(Lokhttp3/Response;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$e;->a:Lcom/papa/sim/statistic/http/b$p;

    iget-object v2, v1, Lcom/papa/sim/statistic/http/b$p;->a:Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    invoke-static {v2, v0, v1}, Lcom/papa/sim/statistic/http/b;->g(Lcom/papa/sim/statistic/http/b;Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    invoke-static {v1, v2}, Lcom/papa/sim/statistic/http/b;->k(Lcom/papa/sim/statistic/http/b;Ljava/lang/reflect/Type;)[Ljava/lang/Class;

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 7
    new-array v4, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 8
    invoke-static {v1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    invoke-static {v2}, Lcom/papa/sim/statistic/http/b;->l(Lcom/papa/sim/statistic/http/b;)Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    .line 10
    invoke-static {v3}, Lcom/papa/sim/statistic/http/b;->l(Lcom/papa/sim/statistic/http/b;)Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v3

    aget-object v1, v1, v5

    invoke-virtual {v3, v1, v4}, Lcom/papa/sim/statistic/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 11
    invoke-virtual {v2, v0, v1}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$e;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-static {v1, v0, v2}, Lcom/papa/sim/statistic/http/b;->g(Lcom/papa/sim/statistic/http/b;Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "class "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    invoke-static {v2}, Lcom/papa/sim/statistic/http/b;->l(Lcom/papa/sim/statistic/http/b;)Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$e;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-static {v1, v0, v2}, Lcom/papa/sim/statistic/http/b;->g(Lcom/papa/sim/statistic/http/b;Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$e;->b:Lcom/papa/sim/statistic/http/b;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$e;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-static {v1, p1, v0, v2}, Lcom/papa/sim/statistic/http/b;->f(Lcom/papa/sim/statistic/http/b;Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/papa/sim/statistic/http/b$e;->a(Lokhttp3/Request;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/papa/sim/statistic/http/b$e;->b(Lokhttp3/Response;)V

    return-void
.end method
