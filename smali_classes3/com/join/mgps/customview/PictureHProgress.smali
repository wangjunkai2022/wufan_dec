.class public Lcom/join/mgps/customview/PictureHProgress;
.super Landroid/view/View;
.source "PictureHProgress.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Landroid/graphics/Bitmap;

.field i:I

.field j:I

.field k:Landroid/graphics/Paint;

.field l:Landroid/graphics/Paint;

.field m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/PorterDuffXfermode;

.field o:F

.field p:I

.field q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/PictureHProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/PictureHProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->a:I

    const p1, -0x333334

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->b:I

    const p1, 0x7f080638

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->c:I

    const/16 p1, 0x38

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->d:I

    const/16 p1, 0x19

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    const/16 p3, 0x64

    .line 10
    iput p3, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lcom/join/mgps/customview/PictureHProgress;->h:Landroid/graphics/Bitmap;

    .line 12
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->i:I

    .line 13
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->j:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->o:F

    .line 15
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/PictureHProgress;->a(Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1, p3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 17
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->n:Landroid/graphics/PorterDuffXfermode;

    .line 18
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->l:Landroid/graphics/Paint;

    .line 19
    iget p3, p0, Lcom/join/mgps/customview/PictureHProgress;->b:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->l:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->k:Landroid/graphics/Paint;

    .line 22
    iget p3, p0, Lcom/join/mgps/customview/PictureHProgress;->a:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->k:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/PictureHProgress;->m:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->PictureHProgress:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->a:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->a:I

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->b:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->b:I

    .line 4
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->c:I

    .line 5
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->d:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->d:I

    .line 6
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    int-to-float v0, v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    .line 7
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->p:I

    int-to-float v3, v0

    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->q:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/join/mgps/customview/PictureHProgress;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/join/mgps/customview/PictureHProgress;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/join/mgps/customview/PictureHProgress;->o:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/PictureHProgress;->h:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/join/mgps/customview/PictureHProgress;->c:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    .line 6
    invoke-static {v2, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/customview/PictureHProgress;->h:Landroid/graphics/Bitmap;

    .line 7
    :cond_0
    iget v2, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    div-int/lit8 v2, v2, 0x2

    .line 8
    iget v3, p0, Lcom/join/mgps/customview/PictureHProgress;->p:I

    sub-int/2addr v3, v1

    .line 9
    iget v4, p0, Lcom/join/mgps/customview/PictureHProgress;->q:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v5, v2

    .line 10
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    .line 11
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v5, v5

    int-to-float v8, v3

    int-to-float v4, v4

    invoke-direct {v6, v7, v5, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, v2

    .line 12
    iget-object v8, p0, Lcom/join/mgps/customview/PictureHProgress;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/customview/PictureHProgress;->k:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/join/mgps/customview/PictureHProgress;->n:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 14
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/join/mgps/customview/PictureHProgress;->getProgress()I

    move-result v6

    mul-int v3, v3, v6

    iget v6, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    div-int/2addr v3, v6

    int-to-float v3, v3

    invoke-direct {v2, v7, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 15
    iget-object v3, p0, Lcom/join/mgps/customview/PictureHProgress;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 16
    iget v2, p0, Lcom/join/mgps/customview/PictureHProgress;->p:I

    iget-object v3, p0, Lcom/join/mgps/customview/PictureHProgress;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/join/mgps/customview/PictureHProgress;->getProgress()I

    move-result v3

    mul-int v2, v2, v3

    iget v3, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    .line 17
    iget v3, p0, Lcom/join/mgps/customview/PictureHProgress;->q:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    int-to-float v1, v3

    .line 18
    iget-object v3, p0, Lcom/join/mgps/customview/PictureHProgress;->h:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/join/mgps/customview/PictureHProgress;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/PictureHProgress;->k:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 20
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->p:I

    .line 2
    iget p1, p0, Lcom/join/mgps/customview/PictureHProgress;->d:I

    iget p2, p0, Lcom/join/mgps/customview/PictureHProgress;->e:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->q:I

    .line 3
    iget p2, p0, Lcom/join/mgps/customview/PictureHProgress;->p:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/PictureHProgress;->g:I

    if-le p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/PictureHProgress;->f:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
