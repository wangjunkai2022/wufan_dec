.class public Lcom/mob/tools/gui/AsyncImageView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/mob/tools/gui/BitmapProcessor$BitmapCallback;


# static fields
.field private static final MSG_IMG_GOT:I = 0x1

.field private static final RND:Ljava/security/SecureRandom;


# instance fields
.field private defaultBm:Landroid/graphics/Bitmap;

.field private defaultRes:I

.field private desiredHeight:I

.field private desiredWidth:I

.field private diskCacheTime:J

.field private errorBm:Landroid/graphics/Bitmap;

.field private errorRes:I

.field private lastReqIsOk:Z

.field private maxBytes:J

.field private path:Landroid/graphics/Path;

.field private quality:I

.field private rect:[F

.field private refAiv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mob/tools/gui/AsyncImageView;",
            ">;"
        }
    .end annotation
.end field

.field private result:Landroid/graphics/Bitmap;

.field private scaleToCrop:Z

.field private url:Ljava/lang/String;

.field private useDiskCache:Z

.field private useRamCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/mob/tools/gui/AsyncImageView;->RND:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    .line 4
    iput-object v1, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    .line 6
    iput-boolean v1, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    .line 8
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    .line 9
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    .line 10
    iput-wide v1, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    .line 11
    iput v0, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    .line 12
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    .line 16
    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    .line 18
    iput-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    .line 20
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    .line 21
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    .line 22
    iput-wide v0, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    .line 23
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    .line 24
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    const/4 p3, 0x0

    .line 27
    iput-object p3, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    .line 28
    iput-object p3, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    const/4 p3, 0x1

    .line 29
    iput-boolean p3, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    .line 30
    iput-boolean p3, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    .line 32
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    .line 33
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    .line 34
    iput-wide v0, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    .line 35
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    .line 36
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;
    .locals 5

    .line 1
    iget v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    if-gt v0, v1, :cond_2

    :cond_0
    iget-wide v0, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    const-wide/16 v2, 0x2800

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    iget v0, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_2
    :goto_0
    new-instance v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    invoke-direct {v0}, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;-><init>()V

    .line 3
    iget v1, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    iput v1, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredWidth:I

    .line 4
    iget v1, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    iput v1, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->desiredHeight:I

    .line 5
    iget-wide v1, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    iput-wide v1, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->maxBytes:J

    .line 6
    iget v1, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    iput v1, v0, Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;->quality:I

    :goto_1
    return-object v0
.end method

.method private getSize()[I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p0, v2, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v2

    const/4 v0, 0x1

    aput v1, v3, v0

    return-object v3
.end method

.method private goCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_4

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getSize()[I

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    aget v4, v2, v3

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    aget v5, v2, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    aget v5, v2, v4

    int-to-float v5, v5

    mul-float v5, v5, v0

    aget v6, v2, v3

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpl-float v6, v5, v1

    if-nez v6, :cond_2

    return-object p1

    :cond_2
    const/4 v6, 0x4

    new-array v6, v6, [I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/high16 v9, 0x40000000    # 2.0f

    cmpg-float v10, v5, v1

    if-gez v10, :cond_3

    sub-float/2addr v1, v5

    div-float/2addr v1, v9

    float-to-int v0, v1

    aput v0, v6, v4

    .line 6
    aget v0, v6, v4

    aput v0, v6, v7

    goto :goto_0

    .line 7
    :cond_3
    aget v5, v2, v3

    int-to-float v5, v5

    mul-float v5, v5, v1

    aget v1, v2, v4

    int-to-float v1, v1

    div-float/2addr v5, v1

    sub-float/2addr v0, v5

    div-float/2addr v0, v9

    float-to-int v0, v0

    aput v0, v6, v3

    .line 8
    aget v0, v6, v3

    aput v0, v6, v8

    .line 9
    :goto_0
    :try_start_0
    aget v0, v6, v3

    aget v1, v6, v4

    aget v2, v6, v8

    aget v3, v6, v7

    invoke-static {p1, v0, v1, v2, v3}, Lcom/mob/tools/utils/BitmapHelper;->cropBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, -0x1000000

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/mob/tools/gui/BitmapProcessor;->prepare(Landroid/content/Context;)V

    return-void
.end method

.method private myClip(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->path:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 5
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/mob/tools/gui/AsyncImageView;->path:Landroid/graphics/Path;

    .line 6
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteCachedFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/gui/BitmapProcessor;->deleteCachedFile(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)V

    return-void
.end method

.method public execute(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;II)V

    return-void
.end method

.method public execute(Ljava/lang/String;II)V
    .locals 7

    .line 2
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    .line 4
    iput-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    .line 6
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultRes:I

    .line 7
    iput p3, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move p2, p3

    .line 9
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 10
    :cond_3
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v1

    .line 11
    iget-boolean p3, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-eqz p3, :cond_4

    .line 12
    invoke-static {p1, v1}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 13
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    invoke-virtual {p0, p3}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    return-void

    :cond_4
    if-lez p2, :cond_5

    .line 16
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    .line 18
    :cond_6
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    .line 19
    :cond_7
    iget-boolean v2, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    iget-boolean v3, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    iget-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/mob/tools/gui/BitmapProcessor;->process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;ZZJLcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V

    return-void
.end method

.method public execute(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, p2, v0}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public execute(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 21
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    .line 23
    iput-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    .line 25
    iput-object p2, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    .line 26
    iput-object p3, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, p3

    .line 28
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 29
    :cond_3
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v1

    .line 30
    iget-boolean p3, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-eqz p3, :cond_4

    .line 31
    invoke-static {p1, v1}, Lcom/mob/tools/gui/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 32
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 33
    invoke-virtual {p0, p3}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 35
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_5

    .line 36
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    :cond_5
    iget-object p2, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    .line 38
    :cond_6
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    .line 39
    :cond_7
    iget-boolean v2, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    iget-boolean v3, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    iget-wide v4, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/mob/tools/gui/BitmapProcessor;->process(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;ZZJLcom/mob/tools/gui/BitmapProcessor$BitmapCallback;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 2
    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 4
    check-cast p1, [Ljava/lang/Object;

    aget-object p1, p1, v2

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    iget-object v3, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    .line 7
    iget-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/tools/gui/AsyncImageView;

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    iput-boolean v2, p0, Lcom/mob/tools/gui/AsyncImageView;->lastReqIsOk:Z

    goto :goto_0

    .line 9
    :cond_1
    iget p1, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    if-lez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/tools/gui/AsyncImageView;

    iget v0, p0, Lcom/mob/tools/gui/AsyncImageView;->errorRes:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/tools/gui/AsyncImageView;

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->errorBm:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/tools/gui/AsyncImageView;

    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultBm:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/tools/gui/AsyncImageView;

    iget v0, p0, Lcom/mob/tools/gui/AsyncImageView;->defaultRes:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    nop

    :cond_5
    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    iget-object v4, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 9
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->myClip(Landroid/graphics/Canvas;)V

    .line 10
    iget-object v1, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-eqz v2, :cond_5

    .line 11
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getCropToPadding()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScrollX()I

    move-result v4

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScrollY()I

    move-result v5

    add-int v6, v4, v1

    add-int v7, v5, v2

    .line 15
    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result v8

    add-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v4, v8

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v5, v8

    .line 17
    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    int-to-float v1, v1

    int-to-float v2, v2

    .line 18
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 20
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    :goto_0
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->refAiv:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/mob/tools/gui/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->scaleToCrop:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p2}, Lcom/mob/tools/gui/AsyncImageView;->goCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 5
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    .line 7
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/mob/tools/gui/AsyncImageView;->RND:Ljava/security/SecureRandom;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    .line 9
    invoke-static {v0, p1, p2, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public removeRamCache(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mob/tools/gui/AsyncImageView;->getBitmapDesiredOptions()Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/gui/BitmapProcessor;->removeBitmapFromRamCache(Ljava/lang/String;Lcom/mob/tools/gui/BitmapProcessor$BitmapDesiredOptions;)V

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/tools/gui/AsyncImageView;->scaleToCrop:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/AsyncImageView;->goCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    iput-object p1, p0, Lcom/mob/tools/gui/AsyncImageView;->result:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCompressOptions(IIIJ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredWidth:I

    .line 2
    iput p2, p0, Lcom/mob/tools/gui/AsyncImageView;->desiredHeight:I

    .line 3
    iput p3, p0, Lcom/mob/tools/gui/AsyncImageView;->quality:I

    .line 4
    iput-wide p4, p0, Lcom/mob/tools/gui/AsyncImageView;->maxBytes:J

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Not Support"

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-void
.end method

.method public setRound(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/mob/tools/gui/AsyncImageView;->setRound(FFFF)V

    return-void
.end method

.method public setRound(FFFF)V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    const/4 p1, 0x5

    aput p3, v0, p1

    const/4 p1, 0x6

    aput p4, v0, p1

    const/4 p1, 0x7

    aput p4, v0, p1

    .line 2
    iput-object v0, p0, Lcom/mob/tools/gui/AsyncImageView;->rect:[F

    return-void
.end method

.method public setScaleToCropCenter(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/tools/gui/AsyncImageView;->scaleToCrop:Z

    return-void
.end method

.method public setUseCacheOption(ZZ)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mob/tools/gui/AsyncImageView;->setUseCacheOption(ZZJ)V

    return-void
.end method

.method public setUseCacheOption(ZZJ)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mob/tools/gui/AsyncImageView;->useRamCache:Z

    .line 3
    iput-boolean p2, p0, Lcom/mob/tools/gui/AsyncImageView;->useDiskCache:Z

    if-eqz p2, :cond_0

    .line 4
    iput-wide p3, p0, Lcom/mob/tools/gui/AsyncImageView;->diskCacheTime:J

    :cond_0
    return-void
.end method
