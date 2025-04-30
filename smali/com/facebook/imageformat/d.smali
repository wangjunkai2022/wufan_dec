.class public Lcom/facebook/imageformat/d;
.super Ljava/lang/Object;
.source "ImageFormatChecker.java"


# static fields
.field private static d:Lcom/facebook/imageformat/d;


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/imageformat/c$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/facebook/imageformat/a;

    invoke-direct {v0}, Lcom/facebook/imageformat/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/imageformat/d;->c:Lcom/facebook/imageformat/c$a;

    .line 3
    invoke-direct {p0}, Lcom/facebook/imageformat/d;->h()V

    return-void
.end method

.method public static b(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imageformat/d;->e()Lcom/facebook/imageformat/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/imageformat/d;->a(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/facebook/imageformat/c;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v1}, Lcom/facebook/imageformat/d;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    invoke-static {v1}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 4
    :catch_1
    :goto_0
    :try_start_2
    sget-object p0, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    return-object p0

    :goto_1
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    .line 6
    throw p0
.end method

.method public static d(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/facebook/imageformat/d;->b(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-static {p0}, Lcom/facebook/common/internal/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static declared-synchronized e()Lcom/facebook/imageformat/d;
    .locals 2

    const-class v0, Lcom/facebook/imageformat/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imageformat/d;->d:Lcom/facebook/imageformat/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/facebook/imageformat/d;

    invoke-direct {v1}, Lcom/facebook/imageformat/d;-><init>()V

    sput-object v1, Lcom/facebook/imageformat/d;->d:Lcom/facebook/imageformat/d;

    .line 3
    :cond_0
    sget-object v1, Lcom/facebook/imageformat/d;->d:Lcom/facebook/imageformat/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static f(ILjava/io/InputStream;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->d(Z)V

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    .line 6
    invoke-static {p1, p2, v1, p0}, Lcom/facebook/common/internal/b;->b(Ljava/io/InputStream;[BII)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 8
    throw p0

    .line 9
    :cond_1
    invoke-static {p1, p2, v1, p0}, Lcom/facebook/common/internal/b;->b(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imageformat/d;->c:Lcom/facebook/imageformat/c$a;

    invoke-interface {v0}, Lcom/facebook/imageformat/c$a;->b()I

    move-result v0

    iput v0, p0, Lcom/facebook/imageformat/d;->a:I

    .line 2
    iget-object v0, p0, Lcom/facebook/imageformat/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imageformat/c$a;

    .line 4
    iget v2, p0, Lcom/facebook/imageformat/d;->a:I

    invoke-interface {v1}, Lcom/facebook/imageformat/c$a;->b()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/imageformat/d;->a:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/facebook/imageformat/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/facebook/imageformat/d;->a:I

    new-array v1, v0, [B

    .line 3
    invoke-static {v0, p1, v1}, Lcom/facebook/imageformat/d;->f(ILjava/io/InputStream;[B)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/facebook/imageformat/d;->c:Lcom/facebook/imageformat/c$a;

    invoke-interface {v0, v1, p1}, Lcom/facebook/imageformat/c$a;->a([BI)Lcom/facebook/imageformat/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v2, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    if-eq v0, v2, :cond_0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imageformat/d;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imageformat/c$a;

    .line 8
    invoke-interface {v2, v1, p1}, Lcom/facebook/imageformat/c$a;->a([BI)Lcom/facebook/imageformat/c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    sget-object v3, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    if-eq v2, v3, :cond_1

    return-object v2

    .line 10
    :cond_2
    sget-object p1, Lcom/facebook/imageformat/c;->c:Lcom/facebook/imageformat/c;

    return-object p1
.end method

.method public g(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/imageformat/c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imageformat/d;->b:Ljava/util/List;

    .line 2
    invoke-direct {p0}, Lcom/facebook/imageformat/d;->h()V

    return-void
.end method
