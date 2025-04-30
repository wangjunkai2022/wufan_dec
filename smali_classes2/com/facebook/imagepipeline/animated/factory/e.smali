.class public Lcom/facebook/imagepipeline/animated/factory/e;
.super Ljava/lang/Object;
.source "AnimatedImageFactoryImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/factory/d;


# static fields
.field static c:Lcom/facebook/imagepipeline/animated/factory/c;

.field static d:Lcom/facebook/imagepipeline/animated/factory/c;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/animated/impl/b;

.field private final b:Lcom/facebook/imagepipeline/bitmaps/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.facebook.animated.gif.GifImage"

    .line 1
    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/factory/e;->g(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/c;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/e;->c:Lcom/facebook/imagepipeline/animated/factory/c;

    const-string v0, "com.facebook.animated.webp.WebPImage"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/animated/factory/e;->g(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/c;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/animated/factory/e;->d:Lcom/facebook/imagepipeline/animated/factory/c;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/bitmaps/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/e;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/factory/e;->b:Lcom/facebook/imagepipeline/bitmaps/f;

    return-void
.end method

.method private c(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/e;->b:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/f;->z(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xc

    if-lt p2, p3, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-object p1
.end method

.method private d(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/d;",
            "Landroid/graphics/Bitmap$Config;",
            "I)",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/d;->a()I

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/d;->getHeight()I

    move-result v1

    .line 3
    invoke-direct {p0, v0, v1, p2}, Lcom/facebook/imagepipeline/animated/factory/e;->c(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object p2

    .line 4
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/f;->b(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/f;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/e;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/b;->a(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance v1, Lcom/facebook/imagepipeline/animated/factory/e$a;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/animated/factory/e$a;-><init>(Lcom/facebook/imagepipeline/animated/factory/e;)V

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    .line 8
    invoke-virtual {p2}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p3, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->f(ILandroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private e(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/animated/base/d;",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/common/references/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/animated/base/f;->b(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/f;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/e;->a:Lcom/facebook/imagepipeline/animated/impl/b;

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/b;->a(Lcom/facebook/imagepipeline/animated/base/f;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/a;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->b()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    new-instance v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance v2, Lcom/facebook/imagepipeline/animated/factory/e$b;

    invoke-direct {v2, p0, v0}, Lcom/facebook/imagepipeline/animated/factory/e$b;-><init>(Lcom/facebook/imagepipeline/animated/factory/e;Ljava/util/List;)V

    invoke-direct {v1, p1, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/a;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;)V

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->b()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 8
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->a()I

    move-result v3

    .line 9
    invoke-interface {p1}, Lcom/facebook/imagepipeline/animated/base/a;->getHeight()I

    move-result v4

    .line 10
    invoke-direct {p0, v3, v4, p2}, Lcom/facebook/imagepipeline/animated/factory/e;->c(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/a;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->f(ILandroid/graphics/Bitmap;)V

    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private f(Lcom/facebook/imagepipeline/common/b;Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p1, Lcom/facebook/imagepipeline/common/b;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/facebook/imagepipeline/animated/base/d;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->e:Z

    if-eqz v3, :cond_1

    .line 3
    new-instance p1, Lcom/facebook/imagepipeline/image/d;

    .line 4
    invoke-direct {p0, p2, p3, v1}, Lcom/facebook/imagepipeline/animated/factory/e;->d(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;

    move-result-object p2

    sget-object p3, Lcom/facebook/imagepipeline/image/g;->d:Lcom/facebook/imagepipeline/image/h;

    invoke-direct {p1, p2, p3, v2}, Lcom/facebook/imagepipeline/image/d;-><init>(Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/image/h;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 6
    invoke-static {v0}, Lcom/facebook/common/references/a;->h(Ljava/lang/Iterable;)V

    return-object p1

    .line 7
    :cond_1
    :try_start_1
    iget-boolean v2, p1, Lcom/facebook/imagepipeline/common/b;->d:Z

    if-eqz v2, :cond_2

    .line 8
    invoke-direct {p0, p2, p3}, Lcom/facebook/imagepipeline/animated/factory/e;->e(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/common/references/a;

    invoke-static {v3}, Lcom/facebook/common/references/a;->d(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v2, v0

    .line 10
    :goto_1
    iget-boolean p1, p1, Lcom/facebook/imagepipeline/common/b;->b:Z

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 11
    invoke-direct {p0, p2, p3, v1}, Lcom/facebook/imagepipeline/animated/factory/e;->d(Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;I)Lcom/facebook/common/references/a;

    move-result-object p1

    move-object v0, p1

    .line 12
    :cond_3
    invoke-static {p2}, Lcom/facebook/imagepipeline/animated/base/f;->h(Lcom/facebook/imagepipeline/animated/base/d;)Lcom/facebook/imagepipeline/animated/base/g;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/animated/base/g;->h(Lcom/facebook/common/references/a;)Lcom/facebook/imagepipeline/animated/base/g;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/animated/base/g;->g(I)Lcom/facebook/imagepipeline/animated/base/g;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v2}, Lcom/facebook/imagepipeline/animated/base/g;->f(Ljava/util/List;)Lcom/facebook/imagepipeline/animated/base/g;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/g;->a()Lcom/facebook/imagepipeline/animated/base/f;

    move-result-object p1

    .line 17
    new-instance p2, Lcom/facebook/imagepipeline/image/a;

    invoke-direct {p2, p1}, Lcom/facebook/imagepipeline/image/a;-><init>(Lcom/facebook/imagepipeline/animated/base/f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 19
    invoke-static {v2}, Lcom/facebook/common/references/a;->h(Ljava/lang/Iterable;)V

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, v0

    .line 20
    :goto_2
    invoke-static {v0}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 21
    invoke-static {v2}, Lcom/facebook/common/references/a;->h(Ljava/lang/Iterable;)V

    .line 22
    throw p1
.end method

.method private static g(Ljava/lang/String;)Lcom/facebook/imagepipeline/animated/factory/c;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/imagepipeline/animated/factory/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;
    .locals 4

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/animated/factory/e;->c:Lcom/facebook/imagepipeline/animated/factory/c;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->g()Lcom/facebook/common/references/a;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 5
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->f()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/facebook/imagepipeline/animated/factory/e;->c:Lcom/facebook/imagepipeline/animated/factory/c;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/animated/factory/c;->i(Ljava/nio/ByteBuffer;)Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/animated/factory/e;->c:Lcom/facebook/imagepipeline/animated/factory/c;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->l()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/animated/factory/c;->h(JI)Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    .line 8
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/imagepipeline/animated/factory/e;->f(Lcom/facebook/imagepipeline/common/b;Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 10
    throw p2

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "To encode animated gif please add the dependency to the animated-gif module"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/facebook/imagepipeline/image/e;Lcom/facebook/imagepipeline/common/b;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;
    .locals 4

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/animated/factory/e;->d:Lcom/facebook/imagepipeline/animated/factory/c;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/e;->g()Lcom/facebook/common/references/a;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/common/references/a;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/memory/PooledByteBuffer;

    .line 5
    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->f()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/facebook/imagepipeline/animated/factory/e;->d:Lcom/facebook/imagepipeline/animated/factory/c;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/animated/factory/c;->i(Ljava/nio/ByteBuffer;)Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lcom/facebook/imagepipeline/animated/factory/e;->d:Lcom/facebook/imagepipeline/animated/factory/c;

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->l()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/facebook/common/memory/PooledByteBuffer;->size()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/animated/factory/c;->h(JI)Lcom/facebook/imagepipeline/animated/base/d;

    move-result-object v0

    .line 8
    :goto_0
    invoke-direct {p0, p2, v0, p3}, Lcom/facebook/imagepipeline/animated/factory/e;->f(Lcom/facebook/imagepipeline/common/b;Lcom/facebook/imagepipeline/animated/base/d;Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/image/c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/facebook/common/references/a;->g(Lcom/facebook/common/references/a;)V

    .line 10
    throw p2

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "To encode animated webp please add the dependency to the animated-webp module"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
