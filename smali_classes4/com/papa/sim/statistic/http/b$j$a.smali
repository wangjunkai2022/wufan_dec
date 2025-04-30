.class Lcom/papa/sim/statistic/http/b$j$a;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/b$j;->b(Ljava/lang/String;Ljava/lang/String;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/http/b$p;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/papa/sim/statistic/http/b$j;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/b$j;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    iput-object p2, p0, Lcom/papa/sim/statistic/http/b$j$a;->a:Lcom/papa/sim/statistic/http/b$p;

    iput-object p3, p0, Lcom/papa/sim/statistic/http/b$j$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/papa/sim/statistic/http/b$j$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Request;Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    iget-object v0, v0, Lcom/papa/sim/statistic/http/b$j;->a:Lcom/papa/sim/statistic/http/b;

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$j$a;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-static {v0, p1, p2, v1}, Lcom/papa/sim/statistic/http/b;->f(Lcom/papa/sim/statistic/http/b;Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V

    return-void
.end method

.method public b(Lokhttp3/Response;)V
    .locals 7

    const/16 v0, 0x800

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/papa/sim/statistic/http/b$j$a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    iget-object v5, v5, Lcom/papa/sim/statistic/http/b$j;->a:Lcom/papa/sim/statistic/http/b;

    iget-object v6, p0, Lcom/papa/sim/statistic/http/b$j$a;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/papa/sim/statistic/http/b;->j(Lcom/papa/sim/statistic/http/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 10
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    iget-object v0, v0, Lcom/papa/sim/statistic/http/b$j;->a:Lcom/papa/sim/statistic/http/b;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/papa/sim/statistic/http/b$j$a;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-static {v0, v1, v4}, Lcom/papa/sim/statistic/http/b;->g(Lcom/papa/sim/statistic/http/b;Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 12
    :catch_0
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v1

    :goto_2
    move-object v1, v2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v3, v1

    :goto_3
    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v3, v1

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v3, v1

    .line 13
    :goto_4
    :try_start_5
    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$j$a;->d:Lcom/papa/sim/statistic/http/b$j;

    iget-object v2, v2, Lcom/papa/sim/statistic/http/b$j;->a:Lcom/papa/sim/statistic/http/b;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    iget-object v4, p0, Lcom/papa/sim/statistic/http/b$j$a;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-static {v2, p1, v0, v4}, Lcom/papa/sim/statistic/http/b;->f(Lcom/papa/sim/statistic/http/b;Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_2

    .line 14
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    nop

    :cond_2
    :goto_5
    if-eqz v3, :cond_3

    goto :goto_1

    :catch_5
    :cond_3
    :goto_6
    return-void

    :catchall_3
    move-exception p1

    :goto_7
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    nop

    :cond_4
    :goto_8
    if-eqz v3, :cond_5

    .line 15
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 16
    :catch_7
    :cond_5
    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/papa/sim/statistic/http/b$j$a;->a(Lokhttp3/Request;Ljava/io/IOException;)V

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
    invoke-virtual {p0, p2}, Lcom/papa/sim/statistic/http/b$j$a;->b(Lokhttp3/Response;)V

    return-void
.end method
