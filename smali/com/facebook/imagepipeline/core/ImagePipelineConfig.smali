.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;,
        Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    }
.end annotation


# static fields
.field private static sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;


# instance fields
.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/h$c;

.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/f;

.field private final mContext:Landroid/content/Context;

.field private final mDiskCacheEnabled:Z

.field private final mDownsampleEnabled:Z

.field private final mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutorSupplier:Lcom/facebook/imagepipeline/core/e;

.field private final mFileCacheFactory:Lcom/facebook/imagepipeline/core/f;

.field private final mHttpNetworkTimeout:I

.field private final mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/n;

.field private final mImageDecoder:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImagePipelineExperiments:Lcom/facebook/imagepipeline/core/h;

.field private final mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageTranscoderType:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainDiskCacheConfig:Lcom/facebook/cache/disk/b;

.field private final mMemoryChunkType:I

.field private final mMemoryTrimmableRegistry:Lcom/facebook/common/memory/c;

.field private final mNetworkFetcher:Lcom/facebook/imagepipeline/producers/d0;

.field private final mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPoolFactory:Lcom/facebook/imagepipeline/memory/d0;

.field private final mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/d;

.field private final mRequestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr0/c;",
            ">;"
        }
    .end annotation
.end field

.field private final mResizeAndRotateEnabledForNetwork:Z

.field private final mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImagePipelineConfig()"

    .line 4
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h$b;->m()Lcom/facebook/imagepipeline/core/h;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImagePipelineExperiments:Lcom/facebook/imagepipeline/core/h;

    .line 6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/k;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/facebook/imagepipeline/cache/i;

    .line 7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/cache/i;-><init>(Landroid/app/ActivityManager;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/k;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;

    .line 9
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/h$c;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/facebook/imagepipeline/cache/d;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/d;-><init>()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/h$c;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/h$c;

    .line 11
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/f;

    move-result-object v1

    if-nez v1, :cond_4

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/cache/j;->f()Lcom/facebook/imagepipeline/cache/j;

    move-result-object v1

    goto :goto_3

    .line 14
    :cond_4
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/f;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/f;

    .line 15
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/facebook/imagepipeline/core/b;

    new-instance v2, Lcom/facebook/imagepipeline/core/d;

    invoke-direct {v2}, Lcom/facebook/imagepipeline/core/d;-><init>()V

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/core/b;-><init>(Lcom/facebook/imagepipeline/core/c;)V

    goto :goto_4

    .line 17
    :cond_5
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/f;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/f;

    .line 18
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDownsampleEnabled:Z

    .line 19
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/k;

    move-result-object v1

    if-nez v1, :cond_6

    new-instance v1, Lcom/facebook/imagepipeline/cache/k;

    invoke-direct {v1}, Lcom/facebook/imagepipeline/cache/k;-><init>()V

    goto :goto_5

    .line 20
    :cond_6
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/k;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;

    .line 21
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/n;

    move-result-object v1

    if-nez v1, :cond_7

    .line 22
    invoke-static {}, Lcom/facebook/imagepipeline/cache/t;->n()Lcom/facebook/imagepipeline/cache/t;

    move-result-object v1

    goto :goto_6

    .line 23
    :cond_7
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/n;

    move-result-object v1

    :goto_6
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/n;

    .line 24
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/b;

    .line 25
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/d;

    .line 26
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderType:Ljava/lang/Integer;

    .line 27
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/k;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    goto :goto_7

    .line 28
    :cond_8
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/k;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/k;

    .line 29
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;

    move-result-object v1

    if-nez v1, :cond_9

    .line 30
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getDefaultMainDiskCacheConfig(Landroid/content/Context;)Lcom/facebook/cache/disk/b;

    move-result-object v1

    goto :goto_8

    .line 31
    :cond_9
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;

    move-result-object v1

    :goto_8
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/b;

    .line 32
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/memory/c;

    move-result-object v2

    if-nez v2, :cond_a

    .line 33
    invoke-static {}, Lcom/facebook/common/memory/d;->c()Lcom/facebook/common/memory/d;

    move-result-object v2

    goto :goto_9

    .line 34
    :cond_a
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/memory/c;

    move-result-object v2

    :goto_9
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/c;

    .line 35
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/h;)I

    move-result v2

    iput v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryChunkType:I

    .line 36
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)I

    move-result v2

    if-gez v2, :cond_b

    const/16 v2, 0x7530

    goto :goto_a

    .line 37
    :cond_b
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)I

    move-result v2

    :goto_a
    iput v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mHttpNetworkTimeout:I

    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "ImagePipelineConfig->mNetworkFetcher"

    .line 39
    invoke-static {v3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 40
    :cond_c
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/producers/d0;

    move-result-object v3

    if-nez v3, :cond_d

    new-instance v3, Lcom/facebook/imagepipeline/producers/s;

    invoke-direct {v3, v2}, Lcom/facebook/imagepipeline/producers/s;-><init>(I)V

    goto :goto_b

    .line 41
    :cond_d
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/producers/d0;

    move-result-object v3

    :goto_b
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/d0;

    .line 42
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 43
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 44
    :cond_e
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/bitmaps/f;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 45
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v2

    if-nez v2, :cond_f

    new-instance v2, Lcom/facebook/imagepipeline/memory/d0;

    .line 46
    invoke-static {}, Lcom/facebook/imagepipeline/memory/c0;->m()Lcom/facebook/imagepipeline/memory/c0$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/c0$b;->m()Lcom/facebook/imagepipeline/memory/c0;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/imagepipeline/memory/d0;-><init>(Lcom/facebook/imagepipeline/memory/c0;)V

    goto :goto_c

    .line 47
    :cond_f
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v2

    :goto_c
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPoolFactory:Lcom/facebook/imagepipeline/memory/d0;

    .line 48
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v3

    if-nez v3, :cond_10

    new-instance v3, Lcom/facebook/imagepipeline/decoder/f;

    invoke-direct {v3}, Lcom/facebook/imagepipeline/decoder/f;-><init>()V

    goto :goto_d

    .line 49
    :cond_10
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/d;

    move-result-object v3

    :goto_d
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/d;

    .line 50
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_11

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_e

    .line 51
    :cond_11
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;

    move-result-object v3

    :goto_e
    iput-object v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListeners:Ljava/util/Set;

    .line 52
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mResizeAndRotateEnabledForNetwork:Z

    .line 53
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;

    move-result-object v3

    if-nez v3, :cond_12

    goto :goto_f

    .line 54
    :cond_12
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;

    move-result-object v1

    :goto_f
    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/b;

    .line 55
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/c;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/c;

    .line 56
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/d0;->d()I

    move-result v1

    .line 57
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/e;

    move-result-object v2

    if-nez v2, :cond_13

    new-instance v2, Lcom/facebook/imagepipeline/core/a;

    invoke-direct {v2, v1}, Lcom/facebook/imagepipeline/core/a;-><init>(I)V

    goto :goto_10

    .line 58
    :cond_13
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/e;

    move-result-object v2

    :goto_10
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/e;

    .line 59
    invoke-static {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDiskCacheEnabled:Z

    .line 60
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->h()Lcom/facebook/common/webp/b;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 61
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/d;-><init>(Lcom/facebook/imagepipeline/memory/d0;)V

    .line 62
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->setWebpBitmapFactory(Lcom/facebook/common/webp/b;Lcom/facebook/imagepipeline/core/h;Lcom/facebook/common/webp/a;)V

    goto :goto_11

    .line 63
    :cond_14
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/h;->o()Z

    move-result p1

    if-eqz p1, :cond_15

    sget-boolean p1, Lcom/facebook/common/webp/c;->a:Z

    if-eqz p1, :cond_15

    .line 64
    invoke-static {}, Lcom/facebook/common/webp/c;->j()Lcom/facebook/common/webp/b;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 65
    new-instance v1, Lcom/facebook/imagepipeline/bitmaps/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/bitmaps/d;-><init>(Lcom/facebook/imagepipeline/memory/d0;)V

    .line 66
    invoke-static {p1, v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->setWebpBitmapFactory(Lcom/facebook/common/webp/b;Lcom/facebook/imagepipeline/core/h;Lcom/facebook/common/webp/a;)V

    .line 67
    :cond_15
    :goto_11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 68
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_16
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    return-void
.end method

.method public static getDefaultImageRequestConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-object v0
.end method

.method private static getDefaultMainDiskCacheConfig(Landroid/content/Context;)Lcom/facebook/cache/disk/b;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DiskCacheConfig.getDefaultMainDiskCacheConfig"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/facebook/cache/disk/b;->l(Landroid/content/Context;)Lcom/facebook/cache/disk/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/cache/disk/b$b;->m()Lcom/facebook/cache/disk/b;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 8
    :cond_2
    throw p0
.end method

.method private static getImageTranscoderFactory(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$1200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t define a custom ImageTranscoderFactory and provide an ImageTranscoderType"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/d;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMemoryChunkType(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/h;)I
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->access$2900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/h;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    return-object v0
.end method

.method static resetDefaultRequestConfig()V
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    sput-object v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->sDefaultImageRequestConfig:Lcom/facebook/imagepipeline/core/ImagePipelineConfig$DefaultImageRequestConfig;

    return-void
.end method

.method private static setWebpBitmapFactory(Lcom/facebook/common/webp/b;Lcom/facebook/imagepipeline/core/h;Lcom/facebook/common/webp/a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/facebook/common/webp/c;->d:Lcom/facebook/common/webp/b;

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/h;->i()Lcom/facebook/common/webp/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/facebook/common/webp/b;->c(Lcom/facebook/common/webp/b$a;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p0, p2}, Lcom/facebook/common/webp/b;->a(Lcom/facebook/common/webp/a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;

    return-object v0
.end method

.method public getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/h$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/h$c;

    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/f;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;

    return-object v0
.end method

.method public getExecutorSupplier()Lcom/facebook/imagepipeline/core/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/e;

    return-object v0
.end method

.method public getExperiments()Lcom/facebook/imagepipeline/core/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImagePipelineExperiments:Lcom/facebook/imagepipeline/core/h;

    return-object v0
.end method

.method public getFileCacheFactory()Lcom/facebook/imagepipeline/core/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/f;

    return-object v0
.end method

.method public getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/n;

    return-object v0
.end method

.method public getImageDecoder()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method public getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/c;

    return-object v0
.end method

.method public getImageTranscoderFactory()Lcom/facebook/imagepipeline/transcoder/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/d;

    return-object v0
.end method

.method public getImageTranscoderType()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mImageTranscoderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsPrefetchEnabledSupplier()Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/k;

    return-object v0
.end method

.method public getMainDiskCacheConfig()Lcom/facebook/cache/disk/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/b;

    return-object v0
.end method

.method public getMemoryChunkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryChunkType:I

    return v0
.end method

.method public getMemoryTrimmableRegistry()Lcom/facebook/common/memory/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/c;

    return-object v0
.end method

.method public getNetworkFetcher()Lcom/facebook/imagepipeline/producers/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/d0;

    return-object v0
.end method

.method public getPlatformBitmapFactory()Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object v0
.end method

.method public getPoolFactory()Lcom/facebook/imagepipeline/memory/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mPoolFactory:Lcom/facebook/imagepipeline/memory/d0;

    return-object v0
.end method

.method public getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/d;

    return-object v0
.end method

.method public getRequestListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lr0/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mRequestListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/b;

    return-object v0
.end method

.method public isDiskCacheEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDiskCacheEnabled:Z

    return v0
.end method

.method public isDownsampleEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mDownsampleEnabled:Z

    return v0
.end method

.method public isResizeAndRotateEnabledForNetwork()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->mResizeAndRotateEnabledForNetwork:Z

    return v0
.end method
