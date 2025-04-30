.class public Lcom/facebook/imagepipeline/bitmaps/d;
.super Ljava/lang/Object;
.source "HoneycombBitmapCreator.java"

# interfaces
.implements Lcom/facebook/common/webp/a;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/bitmaps/b;

.field private final b:Lcom/facebook/imagepipeline/memory/p;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/d0;->c()Lcom/facebook/imagepipeline/memory/p;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/d;->b:Lcom/facebook/imagepipeline/memory/p;

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/bitmaps/b;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/memory/d0;->g()Lcom/facebook/common/memory/g;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/bitmaps/b;-><init>(Lcom/facebook/common/memory/g;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/d;->a:Lcom/facebook/imagepipeline/bitmaps/b;

    return-void
.end method

.method private static b(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 5
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 6
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 7
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0xb

    if-lt p0, p1, :cond_0

    .line 8
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/bitmaps/d;->a:Lcom/facebook/imagepipeline/bitmaps/b;

    int-to-short p1, p1

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/bitmaps/b;->a(SS)Lcom/facebook/common/references/a;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lcom/facebook/imageformat/b;->a:Lcom/facebook/imageformat/c;

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/image/e;->G(Lcom/facebook/imageformat/c;)V

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/e;->r()I

    move-result v1

    .line 5
    invoke-static {v1, p3}, Lcom/facebook/imagepipeline/bitmaps/d;->b(ILandroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p3

    .line 6
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/memory/PooledByteBuffer;

    invoke-interface {v1}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 8
    iget-object v3, p0, Lcom/facebook/imagepipeline/bitmaps/d;->b:Lcom/facebook/imagepipeline/memory/p;

    add-int/lit8 v4, v1, 0x2

    .line 9
    invoke-virtual {v3, v4}, Lcom/facebook/imagepipeline/memory/p;->a(I)Lcom/facebook/common/references/a;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x0

    .line 11
    invoke-interface {v2, v4, v3, v4, v1}, Lcom/facebook/common/memory/PooledByteBuffer;->c(I[BII)I

    .line 12
    invoke-static {v3, v4, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p3, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 14
    invoke-virtual {p3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {p2}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 16
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 17
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-object p3

    :catchall_0
    move-exception p3

    goto :goto_0

    :catchall_1
    move-exception p3

    move-object v0, p2

    .line 18
    :goto_0
    invoke-static {p2}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 19
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 20
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 21
    throw p3
.end method
