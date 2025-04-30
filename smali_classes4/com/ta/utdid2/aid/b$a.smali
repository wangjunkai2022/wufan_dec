.class Lcom/ta/utdid2/aid/b$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/aid/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lorg/apache/http/client/methods/HttpPost;

.field b:Ljava/lang/String;

.field c:Lj2/a;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field final synthetic g:Lcom/ta/utdid2/aid/b;


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/aid/b;Lorg/apache/http/client/methods/HttpPost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->g:Lcom/ta/utdid2/aid/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->b:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->f:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ta/utdid2/aid/b$a;->a:Lorg/apache/http/client/methods/HttpPost;

    return-void
.end method

.method public constructor <init>(Lcom/ta/utdid2/aid/b;Lorg/apache/http/client/methods/HttpPost;Lj2/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->g:Lcom/ta/utdid2/aid/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->b:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/ta/utdid2/aid/b$a;->f:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/ta/utdid2/aid/b$a;->a:Lorg/apache/http/client/methods/HttpPost;

    .line 9
    iput-object p3, p0, Lcom/ta/utdid2/aid/b$a;->c:Lj2/a;

    .line 10
    iput-object p4, p0, Lcom/ta/utdid2/aid/b$a;->d:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/ta/utdid2/aid/b$a;->e:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/ta/utdid2/aid/b$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->c:Lj2/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 2
    iget-object v2, p0, Lcom/ta/utdid2/aid/b$a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lj2/a;->a(ILjava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x3ea

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->a:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->c:Lj2/a;

    if-eqz v3, :cond_1

    .line 6
    iget-object v4, p0, Lcom/ta/utdid2/aid/b$a;->d:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lj2/a;->a(ILjava/lang/String;)V

    .line 7
    :cond_1
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 8
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 10
    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->c:Lj2/a;

    if-eqz v3, :cond_3

    .line 11
    iget-object v4, p0, Lcom/ta/utdid2/aid/b$a;->d:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lj2/a;->a(ILjava/lang/String;)V

    .line 12
    :cond_3
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_5

    .line 13
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 14
    sget-boolean v3, Lcom/ta/utdid2/android/utils/d;->b:Z

    if-eqz v3, :cond_4

    .line 15
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    .line 16
    :cond_4
    iput-object v0, p0, Lcom/ta/utdid2/aid/b$a;->b:Ljava/lang/String;

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    .line 17
    :cond_5
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 18
    :goto_3
    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->c:Lj2/a;

    if-eqz v3, :cond_6

    .line 19
    iget-object v4, p0, Lcom/ta/utdid2/aid/b$a;->d:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lj2/a;->a(ILjava/lang/String;)V

    .line 20
    :cond_6
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 21
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 22
    sget-boolean v0, Lcom/ta/utdid2/android/utils/d;->b:Z

    if-eqz v0, :cond_8

    .line 23
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 24
    invoke-static {}, Lcom/ta/utdid2/aid/b;->a()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    .line 25
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->c:Lj2/a;

    if-nez v0, :cond_9

    .line 26
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->g:Lcom/ta/utdid2/aid/b;

    invoke-static {v0}, Lcom/ta/utdid2/aid/b;->b(Lcom/ta/utdid2/aid/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 27
    :try_start_4
    iget-object v1, p0, Lcom/ta/utdid2/aid/b$a;->g:Lcom/ta/utdid2/aid/b;

    invoke-static {v1}, Lcom/ta/utdid2/aid/b;->b(Lcom/ta/utdid2/aid/b;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 28
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 29
    :cond_9
    iget-object v0, p0, Lcom/ta/utdid2/aid/b$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ta/utdid2/aid/b$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ta/utdid2/aid/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/ta/utdid2/aid/b$a;->c:Lj2/a;

    const/16 v2, 0x3e9

    invoke-interface {v1, v2, v0}, Lj2/a;->a(ILjava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/ta/utdid2/aid/b$a;->g:Lcom/ta/utdid2/aid/b;

    invoke-static {v1}, Lcom/ta/utdid2/aid/b;->d(Lcom/ta/utdid2/aid/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ta/utdid2/aid/b$a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/ta/utdid2/aid/b$a;->f:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/ta/utdid2/aid/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
