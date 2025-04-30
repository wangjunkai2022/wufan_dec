.class public Lcom/facebook/imagepipeline/core/i;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static t:Lcom/facebook/imagepipeline/core/i;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/u0;

.field private final b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

.field private c:Lcom/facebook/imagepipeline/cache/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/imagepipeline/cache/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/o<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/cache/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/cache/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/o<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/imagepipeline/cache/e;

.field private h:Lcom/facebook/cache/disk/h;

.field private i:Lcom/facebook/imagepipeline/decoder/b;

.field private j:Lcom/facebook/imagepipeline/core/g;

.field private k:Lcom/facebook/imagepipeline/transcoder/d;

.field private l:Lcom/facebook/imagepipeline/core/k;

.field private m:Lcom/facebook/imagepipeline/core/l;

.field private n:Lcom/facebook/imagepipeline/cache/e;

.field private o:Lcom/facebook/cache/disk/h;

.field private p:Lcom/facebook/imagepipeline/bitmaps/f;

.field private q:Lcom/facebook/imagepipeline/platform/f;

.field private r:Lcom/facebook/imagepipeline/animated/factory/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/core/i;

    sput-object v0, Lcom/facebook/imagepipeline/core/i;->s:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 3
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/producers/u0;

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/e;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/producers/u0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->a:Lcom/facebook/imagepipeline/producers/u0;

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-void
.end method

.method private b()Lcom/facebook/imagepipeline/animated/factory/a;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->r:Lcom/facebook/imagepipeline/animated/factory/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->m()Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->c()Lcom/facebook/imagepipeline/cache/h;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/animated/factory/b;->a(Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/core/e;Lcom/facebook/imagepipeline/cache/h;)Lcom/facebook/imagepipeline/animated/factory/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->r:Lcom/facebook/imagepipeline/animated/factory/a;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->r:Lcom/facebook/imagepipeline/animated/factory/a;

    return-object v0
.end method

.method private g()Lcom/facebook/imagepipeline/decoder/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->i:Lcom/facebook/imagepipeline/decoder/b;

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageDecoder()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageDecoder()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->i:Lcom/facebook/imagepipeline/decoder/b;

    goto :goto_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/i;->b()Lcom/facebook/imagepipeline/animated/factory/a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/animated/factory/a;->b(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/animated/factory/a;->c(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v2

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Lcom/facebook/imagepipeline/decoder/a;

    .line 9
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->n()Lcom/facebook/imagepipeline/platform/f;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/platform/f;)V

    iput-object v2, p0, Lcom/facebook/imagepipeline/core/i;->i:Lcom/facebook/imagepipeline/decoder/b;

    goto :goto_1

    .line 10
    :cond_2
    new-instance v2, Lcom/facebook/imagepipeline/decoder/a;

    .line 11
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->n()Lcom/facebook/imagepipeline/platform/f;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 12
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/decoder/c;->a()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/platform/f;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/facebook/imagepipeline/core/i;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 13
    invoke-static {}, Lcom/facebook/imageformat/d;->e()Lcom/facebook/imageformat/d;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 14
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/c;->b()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/facebook/imageformat/d;->g(Ljava/util/List;)V

    .line 16
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->i:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method private i()Lcom/facebook/imagepipeline/transcoder/d;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->k:Lcom/facebook/imagepipeline/transcoder/d;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageTranscoderType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->d()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/transcoder/h;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->k:Lcom/facebook/imagepipeline/transcoder/d;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/transcoder/f;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->d()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 9
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/h;->g()Z

    move-result v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 10
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 11
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageTranscoderType()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/transcoder/f;-><init>(IZLcom/facebook/imagepipeline/transcoder/d;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->k:Lcom/facebook/imagepipeline/transcoder/d;

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->k:Lcom/facebook/imagepipeline/transcoder/d;

    return-object v0
.end method

.method public static j()Lcom/facebook/imagepipeline/core/i;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/core/i;->t:Lcom/facebook/imagepipeline/core/i;

    const-string v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/h;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/core/i;

    return-object v0
.end method

.method private o()Lcom/facebook/imagepipeline/core/k;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->l:Lcom/facebook/imagepipeline/core/k;

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->e()Lcom/facebook/imagepipeline/core/h$d;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/d0;->k()Lcom/facebook/common/memory/a;

    move-result-object v4

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/i;->g()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v5

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v6

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 9
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isDownsampleEnabled()Z

    move-result v7

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isResizeAndRotateEnabledForNetwork()Z

    move-result v8

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 11
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->j()Z

    move-result v9

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 12
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/e;

    move-result-object v10

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 13
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v1

    iget-object v11, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v11}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMemoryChunkType()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/facebook/imagepipeline/memory/d0;->h(I)Lcom/facebook/common/memory/g;

    move-result-object v11

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/i;->d()Lcom/facebook/imagepipeline/cache/o;

    move-result-object v12

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/i;->f()Lcom/facebook/imagepipeline/cache/o;

    move-result-object v13

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/i;->k()Lcom/facebook/imagepipeline/cache/e;

    move-result-object v14

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/i;->q()Lcom/facebook/imagepipeline/cache/e;

    move-result-object v15

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 18
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/f;

    move-result-object v16

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/i;->m()Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v17

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 20
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->c()I

    move-result v18

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 21
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->b()I

    move-result v19

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 22
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->a()Z

    move-result v20

    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 23
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->d()I

    move-result v21

    .line 24
    invoke-interface/range {v2 .. v21}, Lcom/facebook/imagepipeline/core/h$d;->a(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/core/e;Lcom/facebook/common/memory/g;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/bitmaps/f;IIZI)Lcom/facebook/imagepipeline/core/k;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/imagepipeline/core/i;->l:Lcom/facebook/imagepipeline/core/k;

    .line 25
    :cond_0
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/i;->l:Lcom/facebook/imagepipeline/core/k;

    return-object v1
.end method

.method private p()Lcom/facebook/imagepipeline/core/l;
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 2
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->m:Lcom/facebook/imagepipeline/core/l;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/facebook/imagepipeline/core/l;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/i;->o()Lcom/facebook/imagepipeline/core/k;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 7
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getNetworkFetcher()Lcom/facebook/imagepipeline/producers/d0;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isResizeAndRotateEnabledForNetwork()Z

    move-result v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 9
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->o()Z

    move-result v6

    iget-object v7, p0, Lcom/facebook/imagepipeline/core/i;->a:Lcom/facebook/imagepipeline/producers/u0;

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isDownsampleEnabled()Z

    move-result v8

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 11
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->n()Z

    move-result v10

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 12
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->isDiskCacheEnabled()Z

    move-result v11

    .line 13
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/i;->i()Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/facebook/imagepipeline/core/l;-><init>(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/core/k;Lcom/facebook/imagepipeline/producers/d0;ZZLcom/facebook/imagepipeline/producers/u0;ZZZZLcom/facebook/imagepipeline/transcoder/d;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->m:Lcom/facebook/imagepipeline/core/l;

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->m:Lcom/facebook/imagepipeline/core/l;

    return-object v0
.end method

.method private q()Lcom/facebook/imagepipeline/cache/e;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->n:Lcom/facebook/imagepipeline/cache/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/cache/e;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->r()Lcom/facebook/cache/disk/h;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMemoryChunkType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/d0;->h(I)Lcom/facebook/common/memory/g;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/j;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 7
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/n;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/e;-><init>(Lcom/facebook/cache/disk/h;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/n;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->n:Lcom/facebook/imagepipeline/cache/e;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->n:Lcom/facebook/imagepipeline/cache/e;

    return-object v0
.end method

.method public static declared-synchronized s()Z
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/core/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/i;->t:Lcom/facebook/imagepipeline/core/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized t(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/facebook/imagepipeline/core/i;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImagePipelineFactory#initialize"

    .line 2
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/i;->u(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized u(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V
    .locals 3

    const-class v0, Lcom/facebook/imagepipeline/core/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/i;->t:Lcom/facebook/imagepipeline/core/i;

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/facebook/imagepipeline/core/i;->s:Ljava/lang/Class;

    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    invoke-static {v1, v2}, Lcom/facebook/common/logging/a;->k0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/core/i;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/i;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    sput-object v1, Lcom/facebook/imagepipeline/core/i;->t:Lcom/facebook/imagepipeline/core/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static v(Lcom/facebook/imagepipeline/core/i;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/facebook/imagepipeline/core/i;->t:Lcom/facebook/imagepipeline/core/i;

    return-void
.end method

.method public static declared-synchronized w()V
    .locals 3

    const-class v0, Lcom/facebook/imagepipeline/core/i;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/i;->t:Lcom/facebook/imagepipeline/core/i;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->d()Lcom/facebook/imagepipeline/cache/o;

    move-result-object v1

    invoke-static {}, Lcom/facebook/common/internal/a;->b()Lcom/facebook/common/internal/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/cache/o;->b(Lcom/facebook/common/internal/i;)I

    .line 3
    sget-object v1, Lcom/facebook/imagepipeline/core/i;->t:Lcom/facebook/imagepipeline/core/i;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/i;->f()Lcom/facebook/imagepipeline/cache/o;

    move-result-object v1

    invoke-static {}, Lcom/facebook/common/internal/a;->b()Lcom/facebook/common/internal/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/cache/o;->b(Lcom/facebook/common/internal/i;)I

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/facebook/imagepipeline/core/i;->t:Lcom/facebook/imagepipeline/core/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lp0/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/i;->b()Lcom/facebook/imagepipeline/animated/factory/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/factory/a;->a(Landroid/content/Context;)Lp0/a;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c()Lcom/facebook/imagepipeline/cache/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->c:Lcom/facebook/imagepipeline/cache/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/c;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 5
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/h$c;

    move-result-object v2

    .line 6
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/a;->b(Lcom/facebook/common/internal/k;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/h$c;)Lcom/facebook/imagepipeline/cache/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->c:Lcom/facebook/imagepipeline/cache/h;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/cache/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/o<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->d:Lcom/facebook/imagepipeline/cache/o;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->c()Lcom/facebook/imagepipeline/cache/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/n;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/b;->a(Lcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/n;)Lcom/facebook/imagepipeline/cache/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->d:Lcom/facebook/imagepipeline/cache/o;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->d:Lcom/facebook/imagepipeline/cache/o;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/cache/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/h<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->e:Lcom/facebook/imagepipeline/cache/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/k;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/c;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/l;->a(Lcom/facebook/common/internal/k;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/cache/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->e:Lcom/facebook/imagepipeline/cache/h;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->e:Lcom/facebook/imagepipeline/cache/h;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/cache/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/o<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->f:Lcom/facebook/imagepipeline/cache/o;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->e()Lcom/facebook/imagepipeline/cache/h;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/n;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/m;->a(Lcom/facebook/imagepipeline/cache/h;Lcom/facebook/imagepipeline/cache/n;)Lcom/facebook/imagepipeline/cache/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->f:Lcom/facebook/imagepipeline/cache/o;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->f:Lcom/facebook/imagepipeline/cache/o;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/core/g;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->j:Lcom/facebook/imagepipeline/core/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/core/g;

    .line 3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/i;->p()Lcom/facebook/imagepipeline/core/l;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getRequestListeners()Ljava/util/Set;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getIsPrefetchEnabledSupplier()Lcom/facebook/common/internal/k;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->d()Lcom/facebook/imagepipeline/cache/o;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->f()Lcom/facebook/imagepipeline/cache/o;

    move-result-object v6

    .line 8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->k()Lcom/facebook/imagepipeline/cache/e;

    move-result-object v7

    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/i;->q()Lcom/facebook/imagepipeline/cache/e;

    move-result-object v8

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/f;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/imagepipeline/core/i;->a:Lcom/facebook/imagepipeline/producers/u0;

    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/facebook/common/internal/l;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/k;

    move-result-object v11

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 12
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->l()Lcom/facebook/common/internal/k;

    move-result-object v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/facebook/imagepipeline/core/g;-><init>(Lcom/facebook/imagepipeline/core/l;Ljava/util/Set;Lcom/facebook/common/internal/k;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/p;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/u0;Lcom/facebook/common/internal/k;Lcom/facebook/common/internal/k;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->j:Lcom/facebook/imagepipeline/core/g;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->j:Lcom/facebook/imagepipeline/core/g;

    return-object v0
.end method

.method public k()Lcom/facebook/imagepipeline/cache/e;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->g:Lcom/facebook/imagepipeline/cache/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/facebook/imagepipeline/cache/e;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->l()Lcom/facebook/cache/disk/h;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 4
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMemoryChunkType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/d0;->h(I)Lcom/facebook/common/memory/g;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 5
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/d0;->i()Lcom/facebook/common/memory/j;

    move-result-object v4

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 6
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 7
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/n;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/e;-><init>(Lcom/facebook/cache/disk/h;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/n;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->g:Lcom/facebook/imagepipeline/cache/e;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->g:Lcom/facebook/imagepipeline/cache/e;

    return-object v0
.end method

.method public l()Lcom/facebook/cache/disk/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->h:Lcom/facebook/cache/disk/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMainDiskCacheConfig()Lcom/facebook/cache/disk/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getFileCacheFactory()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/core/f;->a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->h:Lcom/facebook/cache/disk/h;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->h:Lcom/facebook/cache/disk/h;

    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->p:Lcom/facebook/imagepipeline/bitmaps/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/i;->n()Lcom/facebook/imagepipeline/platform/f;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/bitmaps/g;->a(Lcom/facebook/imagepipeline/memory/d0;Lcom/facebook/imagepipeline/platform/f;)Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->p:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->p:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object v0
.end method

.method public n()Lcom/facebook/imagepipeline/platform/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->q:Lcom/facebook/imagepipeline/platform/f;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getExperiments()Lcom/facebook/imagepipeline/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/h;->k()Z

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/platform/g;->a(Lcom/facebook/imagepipeline/memory/d0;Z)Lcom/facebook/imagepipeline/platform/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->q:Lcom/facebook/imagepipeline/platform/f;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->q:Lcom/facebook/imagepipeline/platform/f;

    return-object v0
.end method

.method public r()Lcom/facebook/cache/disk/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->o:Lcom/facebook/cache/disk/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/i;->b:Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getFileCacheFactory()Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/core/f;->a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/i;->o:Lcom/facebook/cache/disk/h;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/i;->o:Lcom/facebook/cache/disk/h;

    return-object v0
.end method
