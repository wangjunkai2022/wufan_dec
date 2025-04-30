.class public Lcom/facebook/imagepipeline/producers/w;
.super Ljava/lang/Object;
.source "LocalExifThumbnailProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/x0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/x0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:I = 0x200

.field public static final e:Ljava/lang/String; = "LocalExifThumbnailProducer"

.field static final f:Ljava/lang/String; = "createdThumbnail"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/common/memory/g;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/w;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/w;->b:Lcom/facebook/common/memory/g;

    .line 4
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/w;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/w;)Lcom/facebook/common/memory/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/producers/w;->b:Lcom/facebook/common/memory/g;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lcom/facebook/imagepipeline/image/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/w;->e(Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lcom/facebook/imagepipeline/image/e;

    move-result-object p0

    return-object p0
.end method

.method private e(Lcom/facebook/common/memory/PooledByteBuffer;Landroid/media/ExifInterface;)Lcom/facebook/imagepipeline/image/e;
    .locals 3

    .line 1
    new-instance v0, Lcom/facebook/common/memory/h;

    invoke-direct {v0, p1}, Lcom/facebook/common/memory/h;-><init>(Lcom/facebook/common/memory/PooledByteBuffer;)V

    .line 2
    invoke-static {v0}, Lcom/facebook/imageutils/a;->b(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    .line 3
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/w;->h(Landroid/media/ExifInterface;)I

    move-result p2

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/facebook/common/references/a;->p(Ljava/io/Closeable;)Lcom/facebook/common/references/a;

    move-result-object p1

    .line 7
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 9
    sget-object p1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/image/e;->G(Lcom/facebook/imageformat/c;)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/facebook/imagepipeline/image/e;->H(I)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/facebook/imagepipeline/image/e;->K(I)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/image/e;->F(I)V

    return-object v0

    :catchall_0
    move-exception p2

    .line 13
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 14
    throw p2
.end method

.method private h(Landroid/media/ExifInterface;)I
    .locals 1

    const-string v0, "Orientation"

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-static {p1}, Lcom/facebook/imageutils/c;->a(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/common/d;)Z
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-static {v0, v0, p1}, Lcom/facebook/imagepipeline/producers/y0;->b(IILcom/facebook/imagepipeline/common/d;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/k0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/k0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getListener()Lcom/facebook/imagepipeline/producers/m0;

    move-result-object v3

    .line 2
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->getId()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/k0;->b()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v6

    .line 4
    new-instance v7, Lcom/facebook/imagepipeline/producers/w$a;

    const-string v4, "LocalExifThumbnailProducer"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/producers/w$a;-><init>(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/m0;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 5
    new-instance p1, Lcom/facebook/imagepipeline/producers/w$b;

    invoke-direct {p1, p0, v7}, Lcom/facebook/imagepipeline/producers/w$b;-><init>(Lcom/facebook/imagepipeline/producers/w;Lcom/facebook/imagepipeline/producers/r0;)V

    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/producers/k0;->d(Lcom/facebook/imagepipeline/producers/l0;)V

    .line 6
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/w;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method f(Ljava/lang/String;)Z
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method g(Landroid/net/Uri;)Landroid/media/ExifInterface;
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/w;->c:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/facebook/common/util/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/producers/w;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    const-class p1, Lcom/facebook/imagepipeline/producers/w;

    const-string v0, "StackOverflowError in ExifInterface constructor"

    invoke-static {p1, v0}, Lcom/facebook/common/logging/a;->q(Ljava/lang/Class;Ljava/lang/String;)V

    :catch_1
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
