.class public Lcom/facebook/imagepipeline/decoder/e;
.super Ljava/lang/Object;
.source "ProgressiveJpegParser.java"


# static fields
.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x3

.field private static final m:I = 0x4

.field private static final n:I = 0x5

.field private static final o:I = 0x6

.field private static final p:I = 0x4000


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lcom/facebook/common/memory/a;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/memory/a;

    iput-object p1, p0, Lcom/facebook/imagepipeline/decoder/e;->h:Lcom/facebook/common/memory/a;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 4
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->b:I

    .line 5
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->d:I

    .line 6
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->f:I

    .line 7
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    .line 8
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    return-void
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    .line 2
    :try_start_0
    iget v4, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    if-eq v4, v3, :cond_f

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    .line 3
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 4
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/decoder/e;->g:Z

    if-eqz v6, :cond_0

    .line 5
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 6
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/decoder/e;->g:Z

    return v1

    .line 7
    :cond_0
    iget v6, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    const/16 v7, 0xff

    if-eqz v6, :cond_c

    const/4 v8, 0x2

    if-eq v6, v2, :cond_a

    const/4 v9, 0x3

    if-eq v6, v8, :cond_9

    const/4 v10, 0x4

    if-eq v6, v9, :cond_3

    const/4 v5, 0x5

    if-eq v6, v10, :cond_2

    if-eq v6, v5, :cond_1

    .line 8
    invoke-static {v1}, Lcom/facebook/common/internal/h;->o(Z)V

    goto :goto_1

    .line 9
    :cond_1
    iget v5, p0, Lcom/facebook/imagepipeline/decoder/e;->b:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v4

    sub-int/2addr v5, v8

    int-to-long v6, v5

    .line 10
    invoke-static {p1, v6, v7}, Lcom/facebook/common/util/e;->c(Ljava/io/InputStream;J)J

    .line 11
    iget v6, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    .line 12
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    .line 13
    :cond_2
    iput v5, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    :cond_3
    if-ne v4, v7, :cond_4

    .line 14
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    .line 15
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    :cond_5
    const/16 v6, 0xd9

    if-ne v4, v6, :cond_6

    .line 16
    iput-boolean v2, p0, Lcom/facebook/imagepipeline/decoder/e;->g:Z

    add-int/lit8 v5, v5, -0x2

    .line 17
    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/decoder/e;->g(I)V

    .line 18
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    :cond_6
    const/16 v6, 0xda

    if-ne v4, v6, :cond_7

    add-int/lit8 v5, v5, -0x2

    .line 19
    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/decoder/e;->g(I)V

    .line 20
    :cond_7
    invoke-static {v4}, Lcom/facebook/imagepipeline/decoder/e;->b(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 21
    iput v10, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    .line 22
    :cond_8
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    :cond_9
    if-ne v4, v7, :cond_e

    .line 23
    iput v9, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    :cond_a
    const/16 v5, 0xd8

    if-ne v4, v5, :cond_b

    .line 24
    iput v8, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    .line 25
    :cond_b
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    :cond_c
    if-ne v4, v7, :cond_d

    .line 26
    iput v2, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    goto :goto_1

    .line 27
    :cond_d
    iput v3, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    .line 28
    :cond_e
    :goto_1
    iput v4, p0, Lcom/facebook/imagepipeline/decoder/e;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/facebook/common/internal/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 30
    :cond_f
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    if-eq p1, v3, :cond_10

    iget p1, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    if-eq p1, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private static b(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xd0

    if-lt p0, v2, :cond_1

    const/16 v2, 0xd7

    if-gt p0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0xd9

    if-eq p0, v2, :cond_2

    const/16 v2, 0xd8

    if-eq p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->d:I

    if-lez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->f:I

    :cond_0
    add-int/lit8 p1, v0, 0x1

    .line 3
    iput p1, p0, Lcom/facebook/imagepipeline/decoder/e;->d:I

    iput v0, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->f:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/decoder/e;->g:Z

    return v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h(Lcom/facebook/imagepipeline/image/e;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/decoder/e;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->s()I

    move-result v0

    .line 3
    iget v2, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    if-gt v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v0, Lcom/facebook/common/memory/f;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->p()Ljava/io/InputStream;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/imagepipeline/decoder/e;->h:Lcom/facebook/common/memory/a;

    const/16 v3, 0x4000

    .line 6
    invoke-interface {v2, v3}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lcom/facebook/imagepipeline/decoder/e;->h:Lcom/facebook/common/memory/a;

    invoke-direct {v0, p1, v2, v3}, Lcom/facebook/common/memory/f;-><init>(Ljava/io/InputStream;[BLcom/facebook/common/references/c;)V

    .line 7
    :try_start_0
    iget p1, p0, Lcom/facebook/imagepipeline/decoder/e;->c:I

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/facebook/common/util/e;->c(Ljava/io/InputStream;J)J

    .line 8
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/decoder/e;->a(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/m;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    return v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/c;->b(Ljava/io/InputStream;)V

    .line 12
    throw p1
.end method
