.class public Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
.super Ljava/lang/Object;
.source "ImagePipelineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/h$c;

.field private mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/f;

.field private final mContext:Landroid/content/Context;

.field private mDiskCacheEnabled:Z

.field private mDownsampleEnabled:Z

.field private mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorSupplier:Lcom/facebook/imagepipeline/core/e;

.field private final mExperimentsBuilder:Lcom/facebook/imagepipeline/core/h$b;

.field private mFileCacheFactory:Lcom/facebook/imagepipeline/core/f;

.field private mHttpConnectionTimeout:I

.field private mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/n;

.field private mImageDecoder:Lcom/facebook/imagepipeline/decoder/b;

.field private mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/c;

.field private mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/d;

.field private mImageTranscoderType:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMainDiskCacheConfig:Lcom/facebook/cache/disk/b;

.field private mMemoryChunkType:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mMemoryTrimmableRegistry:Lcom/facebook/common/memory/c;

.field private mNetworkFetcher:Lcom/facebook/imagepipeline/producers/d0;

.field private mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/f;

.field private mPoolFactory:Lcom/facebook/imagepipeline/memory/d0;

.field private mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/d;

.field private mRequestListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr0/c;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeAndRotateEnabledForNetwork:Z

.field private mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderType:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryChunkType:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mResizeAndRotateEnabledForNetwork:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mHttpConnectionTimeout:I

    .line 8
    new-instance v1, Lcom/facebook/imagepipeline/core/h$b;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/h$b;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExperimentsBuilder:Lcom/facebook/imagepipeline/core/h$b;

    .line 9
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDiskCacheEnabled:Z

    .line 10
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/h$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExperimentsBuilder:Lcom/facebook/imagepipeline/core/h$b;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/n;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/b;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/k;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/b;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/memory/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/c;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mHttpConnectionTimeout:I

    return p0
.end method

.method static synthetic access$1700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/producers/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/d0;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/memory/d0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPoolFactory:Lcom/facebook/imagepipeline/memory/d0;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/d;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mRequestListeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mResizeAndRotateEnabledForNetwork:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/cache/disk/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/b;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/decoder/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/c;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/e;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDiskCacheEnabled:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/transcoder/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/d;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryChunkType:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/h$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/h$c;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/cache/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/f;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/imagepipeline/core/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/f;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;)Lcom/facebook/common/internal/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;-><init>(Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;Lcom/facebook/imagepipeline/core/ImagePipelineConfig$1;)V

    return-object v0
.end method

.method public experiment()Lcom/facebook/imagepipeline/core/h$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExperimentsBuilder:Lcom/facebook/imagepipeline/core/h$b;

    return-object v0
.end method

.method public getImageTranscoderType()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMemoryChunkType()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryChunkType:Ljava/lang/Integer;

    return-object v0
.end method

.method public isDiskCacheEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDiskCacheEnabled:Z

    return v0
.end method

.method public isDownsampleEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    return v0
.end method

.method public setBitmapMemoryCacheParamsSupplier(Lcom/facebook/common/internal/k;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/internal/k;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;

    return-object p0
.end method

.method public setBitmapMemoryCacheTrimStrategy(Lcom/facebook/imagepipeline/cache/h$c;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapMemoryCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/h$c;

    return-object p0
.end method

.method public setBitmapsConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public setCacheKeyFactory(Lcom/facebook/imagepipeline/cache/f;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/f;

    return-object p0
.end method

.method public setDiskCacheEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDiskCacheEnabled:Z

    return-object p0
.end method

.method public setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mDownsampleEnabled:Z

    return-object p0
.end method

.method public setEncodedMemoryCacheParamsSupplier(Lcom/facebook/common/internal/k;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/imagepipeline/cache/q;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/common/internal/k;

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mEncodedMemoryCacheParamsSupplier:Lcom/facebook/common/internal/k;

    return-object p0
.end method

.method public setExecutorSupplier(Lcom/facebook/imagepipeline/core/e;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mExecutorSupplier:Lcom/facebook/imagepipeline/core/e;

    return-object p0
.end method

.method public setFileCacheFactory(Lcom/facebook/imagepipeline/core/f;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mFileCacheFactory:Lcom/facebook/imagepipeline/core/f;

    return-object p0
.end method

.method public setHttpConnectionTimeout(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mHttpConnectionTimeout:I

    return-object p0
.end method

.method public setImageCacheStatsTracker(Lcom/facebook/imagepipeline/cache/n;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageCacheStatsTracker:Lcom/facebook/imagepipeline/cache/n;

    return-object p0
.end method

.method public setImageDecoder(Lcom/facebook/imagepipeline/decoder/b;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoder:Lcom/facebook/imagepipeline/decoder/b;

    return-object p0
.end method

.method public setImageDecoderConfig(Lcom/facebook/imagepipeline/decoder/c;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageDecoderConfig:Lcom/facebook/imagepipeline/decoder/c;

    return-object p0
.end method

.method public setImageTranscoderFactory(Lcom/facebook/imagepipeline/transcoder/d;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderFactory:Lcom/facebook/imagepipeline/transcoder/d;

    return-object p0
.end method

.method public setImageTranscoderType(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mImageTranscoderType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIsPrefetchEnabledSupplier(Lcom/facebook/common/internal/k;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/k<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mIsPrefetchEnabledSupplier:Lcom/facebook/common/internal/k;

    return-object p0
.end method

.method public setMainDiskCacheConfig(Lcom/facebook/cache/disk/b;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMainDiskCacheConfig:Lcom/facebook/cache/disk/b;

    return-object p0
.end method

.method public setMemoryChunkType(I)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryChunkType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMemoryTrimmableRegistry(Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mMemoryTrimmableRegistry:Lcom/facebook/common/memory/c;

    return-object p0
.end method

.method public setNetworkFetcher(Lcom/facebook/imagepipeline/producers/d0;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mNetworkFetcher:Lcom/facebook/imagepipeline/producers/d0;

    return-object p0
.end method

.method public setPlatformBitmapFactory(Lcom/facebook/imagepipeline/bitmaps/f;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPlatformBitmapFactory:Lcom/facebook/imagepipeline/bitmaps/f;

    return-object p0
.end method

.method public setPoolFactory(Lcom/facebook/imagepipeline/memory/d0;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mPoolFactory:Lcom/facebook/imagepipeline/memory/d0;

    return-object p0
.end method

.method public setProgressiveJpegConfig(Lcom/facebook/imagepipeline/decoder/d;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mProgressiveJpegConfig:Lcom/facebook/imagepipeline/decoder/d;

    return-object p0
.end method

.method public setRequestListeners(Ljava/util/Set;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lr0/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mRequestListeners:Ljava/util/Set;

    return-object p0
.end method

.method public setResizeAndRotateEnabledForNetwork(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mResizeAndRotateEnabledForNetwork:Z

    return-object p0
.end method

.method public setSmallImageDiskCacheConfig(Lcom/facebook/cache/disk/b;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->mSmallImageDiskCacheConfig:Lcom/facebook/cache/disk/b;

    return-object p0
.end method
