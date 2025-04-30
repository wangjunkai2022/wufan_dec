.class Lcn/aigestudio/downloader/bizs/h;
.super Ljava/lang/Object;
.source "DLTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcn/aigestudio/downloader/bizs/l;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Lcn/aigestudio/downloader/bizs/f;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/atomic/AtomicLong;

.field private d:I

.field private e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcn/aigestudio/downloader/bizs/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/aigestudio/downloader/bizs/h;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcn/aigestudio/downloader/bizs/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/aigestudio/downloader/bizs/h;->d:I

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    iput-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    .line 6
    iput-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    .line 7
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p2, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 8
    iget-boolean v0, p2, Lcn/aigestudio/downloader/bizs/f;->j:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/aigestudio/downloader/bizs/c;->e(Lcn/aigestudio/downloader/bizs/f;)V

    :cond_0
    return-void
.end method

.method private e(Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/aigestudio/downloader/bizs/e;

    .line 2
    iget-object v2, v1, Lcn/aigestudio/downloader/bizs/e;->a:Ljava/lang/String;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(Ljava/net/HttpURLConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x1000

    :try_start_2
    new-array v2, v2, [B

    .line 3
    :goto_0
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v3, v3, Lcn/aigestudio/downloader/bizs/f;->s:Z

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloading...len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    iget-object v4, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v4, v4, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcn/aigestudio/downloader/bizs/h;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v2, v2, Lcn/aigestudio/downloader/bizs/f;->s:Z

    if-eqz v2, :cond_1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wap thread stop now.url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-direct {p0, v0}, Lcn/aigestudio/downloader/bizs/h;->i(Lcn/aigestudio/downloader/bizs/f;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0, v0}, Lcn/aigestudio/downloader/bizs/h;->c(Lcn/aigestudio/downloader/bizs/j;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 12
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 13
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    .line 14
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    .line 16
    :goto_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 18
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/aigestudio/downloader/bizs/j;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Lcn/aigestudio/downloader/bizs/j;->e:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->i(Ljava/lang/String;)V

    :cond_1
    const-wide/16 v0, 0x0

    .line 6
    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_2
    move-wide v5, v0

    .line 8
    new-instance v0, Lcn/aigestudio/downloader/bizs/j;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v4, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcn/aigestudio/downloader/bizs/j;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 9
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-virtual {v1, v0}, Lcn/aigestudio/downloader/bizs/f;->a(Lcn/aigestudio/downloader/bizs/j;)V

    .line 10
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/aigestudio/downloader/bizs/c;->g(Lcn/aigestudio/downloader/bizs/j;)V

    .line 11
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v1

    new-instance v2, Lcn/aigestudio/downloader/bizs/i;

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-direct {v2, v0, v3, p0}, Lcn/aigestudio/downloader/bizs/i;-><init>(Lcn/aigestudio/downloader/bizs/j;Lcn/aigestudio/downloader/bizs/f;Lcn/aigestudio/downloader/bizs/l;)V

    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/bizs/g;->b(Lcn/aigestudio/downloader/bizs/i;)Lcn/aigestudio/downloader/bizs/g;

    return-void
.end method

.method private h(Ljava/net/HttpURLConnection;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method dlInit() called.code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {p0, p1}, Lcn/aigestudio/downloader/bizs/h;->j(Ljava/net/HttpURLConnection;)V

    .line 3
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->d(Lcn/aigestudio/downloader/bizs/f;)V

    .line 4
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v0, v0, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object v3, v0, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    iget-object v4, v0, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Ld/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/f0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    .line 7
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v2, v2, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 8
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object p1

    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p2, p2, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 10
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p2, p1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-interface {p2, v0, p1}, Ld/b;->f(Ljava/lang/String;Ljava/io/File;)V

    :cond_1
    return-void

    :cond_2
    const-wide/16 v0, 0x0

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_4

    .line 11
    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v3, v3, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gtz v5, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 13
    new-instance p1, Ljava/lang/Exception;

    const-string/jumbo p2, "wap mode."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    if-eq p2, v2, :cond_8

    const/16 v2, 0xce

    if-eq p2, v2, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p2, p2, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-gtz p2, :cond_6

    .line 15
    invoke-direct {p0, p1}, Lcn/aigestudio/downloader/bizs/h;->f(Ljava/net/HttpURLConnection;)V

    goto :goto_2

    .line 16
    :cond_6
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->j:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_7

    .line 17
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/aigestudio/downloader/bizs/j;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p2, Lcn/aigestudio/downloader/bizs/j;->h:Z

    .line 19
    iput-boolean v0, p2, Lcn/aigestudio/downloader/bizs/j;->g:Z

    .line 20
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p2, Lcn/aigestudio/downloader/bizs/j;->c:J

    .line 21
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v0

    new-instance v1, Lcn/aigestudio/downloader/bizs/i;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-direct {v1, p2, v2, p0}, Lcn/aigestudio/downloader/bizs/i;-><init>(Lcn/aigestudio/downloader/bizs/j;Lcn/aigestudio/downloader/bizs/f;Lcn/aigestudio/downloader/bizs/l;)V

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/g;->b(Lcn/aigestudio/downloader/bizs/i;)Lcn/aigestudio/downloader/bizs/g;

    goto :goto_1

    .line 22
    :cond_7
    invoke-direct {p0}, Lcn/aigestudio/downloader/bizs/h;->g()V

    goto :goto_2

    .line 23
    :cond_8
    invoke-direct {p0, p1}, Lcn/aigestudio/downloader/bizs/h;->f(Ljava/net/HttpURLConnection;)V

    :cond_9
    :goto_2
    return-void

    .line 24
    :cond_a
    new-instance p1, Lcn/aigestudio/downloader/bizs/DLException;

    const-string p2, "Can not create file"

    invoke-direct {p1, p2}, Lcn/aigestudio/downloader/bizs/DLException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private declared-synchronized i(Lcn/aigestudio/downloader/bizs/f;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method onStop() called.url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v0

    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 3
    iget-boolean v0, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ld/b;->e(Ljava/lang/String;J)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/aigestudio/downloader/bizs/g;->a()Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private j(Ljava/net/HttpURLConnection;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    const-string v1, "Content-Disposition"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    const-string v1, "Content-Location"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->k:Ljava/lang/String;

    const-string v0, "Transfer-Encoding"

    .line 4
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "Content-Length"

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "chunked"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can not obtain size of download file."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->m:Ljava/lang/String;

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/f;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/k;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->f(Lcn/aigestudio/downloader/bizs/j;)V

    .line 2
    iget p1, p0, Lcn/aigestudio/downloader/bizs/h;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/aigestudio/downloader/bizs/h;->d:I

    .line 3
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 5
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object p1

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-virtual {p1, v0}, Lcn/aigestudio/downloader/bizs/c;->d(Lcn/aigestudio/downloader/bizs/f;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcn/aigestudio/downloader/bizs/h;->d:I

    .line 7
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Ld/b;->d(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean p2, p2, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p2, p2, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v2, p0, Lcn/aigestudio/downloader/bizs/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {p2, p1, v2, v3}, Ld/b;->b(Ljava/lang/String;J)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object p1

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 3
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-interface {v0, v1, p1}, Ld/b;->f(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-virtual {v1, p1}, Lcn/aigestudio/downloader/bizs/f;->b(Lcn/aigestudio/downloader/bizs/j;)V

    .line 6
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v1

    iget-object v2, p1, Lcn/aigestudio/downloader/bizs/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/bizs/c;->a(Ljava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lcn/aigestudio/downloader/bizs/j;->c:J

    iget-wide v3, p1, Lcn/aigestudio/downloader/bizs/j;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object p1

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 11
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object p1

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/aigestudio/downloader/bizs/c;->h(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ld/b;->b(Ljava/lang/String;J)V

    .line 14
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->r:Ljava/io/File;

    invoke-interface {v0, v1, p1}, Ld/b;->f(Ljava/lang/String;Ljava/io/File;)V

    .line 15
    :cond_3
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/aigestudio/downloader/bizs/g;->a()Lcn/aigestudio/downloader/bizs/g;

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 18
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/aigestudio/downloader/bizs/j;

    .line 19
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v1

    new-instance v2, Lcn/aigestudio/downloader/bizs/i;

    iget-object v3, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-direct {v2, v0, v3, p0}, Lcn/aigestudio/downloader/bizs/i;-><init>(Lcn/aigestudio/downloader/bizs/j;Lcn/aigestudio/downloader/bizs/f;Lcn/aigestudio/downloader/bizs/l;)V

    invoke-virtual {v1, v2}, Lcn/aigestudio/downloader/bizs/g;->b(Lcn/aigestudio/downloader/bizs/i;)Lcn/aigestudio/downloader/bizs/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 20
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized d(Lcn/aigestudio/downloader/bizs/j;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/aigestudio/downloader/bizs/c;->f(Lcn/aigestudio/downloader/bizs/j;)V

    .line 2
    iget v0, p0, Lcn/aigestudio/downloader/bizs/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/aigestudio/downloader/bizs/h;->d:I

    .line 3
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All the threads was stopped.threadInfo.isError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcn/aigestudio/downloader/bizs/j;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 5
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 6
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/g;->c(Lcn/aigestudio/downloader/bizs/f;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 7
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/c;->k(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/c;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    invoke-virtual {v0, v1}, Lcn/aigestudio/downloader/bizs/c;->d(Lcn/aigestudio/downloader/bizs/f;)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/aigestudio/downloader/bizs/h;->d:I

    .line 9
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v0, v0, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz v0, :cond_1

    .line 10
    iget-boolean p1, p1, Lcn/aigestudio/downloader/bizs/j;->f:Z

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "-1"

    invoke-interface {v0, p1, v1, v2}, Ld/b;->g(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v0, p1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object p1, p1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Ld/b;->e(Ljava/lang/String;J)V

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {p1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/aigestudio/downloader/bizs/g;->a()Lcn/aigestudio/downloader/bizs/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v0, v0, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v2, v0, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    iget-object v3, v0, Lcn/aigestudio/downloader/bizs/f;->c:Ljava/lang/String;

    iget-object v4, v0, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Ld/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget v0, v0, Lcn/aigestudio/downloader/bizs/f;->h:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_d

    const/4 v0, 0x0

    const/16 v2, 0x8a

    const/4 v3, 0x6

    .line 4
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v5, v0, Lcn/aigestudio/downloader/bizs/f;->s:Z

    if-eqz v5, :cond_2

    .line 6
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v1, v5}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void

    .line 8
    :cond_2
    :try_start_2
    iget-boolean v0, v0, Lcn/aigestudio/downloader/bizs/f;->t:Z

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v0

    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 10
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v0, v0, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v1, v0, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v0, v0, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    const-string v5, "delete..."

    invoke-interface {v1, v0, v2, v5}, Ld/b;->g(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    .line 13
    :try_start_3
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v0, 0x2710

    .line 14
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x7530

    .line 15
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 16
    invoke-direct {p0, v4}, Lcn/aigestudio/downloader/bizs/h;->e(Ljava/net/HttpURLConnection;)V

    .line 17
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_9

    const/16 v5, 0xce

    if-eq v0, v5, :cond_9

    const/16 v5, 0x12d

    if-eq v0, v5, :cond_7

    const/16 v5, 0x133

    if-eq v0, v5, :cond_7

    const/16 v5, 0x12f

    if-eq v0, v5, :cond_7

    const/16 v5, 0x130

    if-eq v0, v5, :cond_7

    .line 18
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v5, v5, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz v5, :cond_6

    .line 19
    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v6, v5, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v0, v7}, Ld/b;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    :cond_6
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v0

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_7
    :try_start_4
    const-string v0, "location"

    .line 22
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 24
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iput-object v0, v1, Lcn/aigestudio/downloader/bizs/f;->f:Ljava/lang/String;

    .line 25
    iget v0, v1, Lcn/aigestudio/downloader/bizs/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcn/aigestudio/downloader/bizs/f;->h:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 26
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 27
    :cond_8
    :try_start_5
    new-instance v0, Lcn/aigestudio/downloader/bizs/DLException;

    const-string v1, "Can not obtain real url from location in header."

    invoke-direct {v0, v1}, Lcn/aigestudio/downloader/bizs/DLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_9
    invoke-direct {p0, v4, v0}, Lcn/aigestudio/downloader/bizs/h;->h(Ljava/net/HttpURLConnection;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    .line 30
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v1

    iget-object v5, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v5, v5, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcn/aigestudio/downloader/bizs/g;->s(Ljava/lang/String;I)Lcn/aigestudio/downloader/bizs/g;

    .line 32
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-boolean v1, v1, Lcn/aigestudio/downloader/bizs/f;->i:Z

    if-eqz v1, :cond_a

    .line 33
    iget-object v1, p0, Lcn/aigestudio/downloader/bizs/h;->a:Lcn/aigestudio/downloader/bizs/f;

    iget-object v3, v1, Lcn/aigestudio/downloader/bizs/f;->q:Ld/b;

    iget-object v1, v1, Lcn/aigestudio/downloader/bizs/f;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v2, v0}, Ld/b;->g(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    :cond_a
    iget-object v0, p0, Lcn/aigestudio/downloader/bizs/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/g;->q(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/g;

    move-result-object v0

    invoke-virtual {v0}, Lcn/aigestudio/downloader/bizs/g;->a()Lcn/aigestudio/downloader/bizs/g;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_b

    .line 35
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 36
    :cond_c
    throw v0

    .line 37
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Too many redirects"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
