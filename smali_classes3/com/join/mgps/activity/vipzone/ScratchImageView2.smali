.class public Lcom/join/mgps/activity/vipzone/ScratchImageView2;
.super Landroid/view/View;
.source "ScratchImageView2.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBgBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field mDstBmp:Landroid/graphics/Bitmap;

.field mEventX:F

.field mEventY:F

.field private mFgBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field mSrcBmp:Landroid/graphics/Bitmap;

.field mTxtBmp:Landroid/graphics/Bitmap;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "ScratchImageView2"

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "ScratchImageView2"

    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->TAG:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "ScratchImageView2"

    .line 7
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->TAG:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080690

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mTxtBmp:Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080aa9

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mSrcBmp:Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mSrcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mDstBmp:Landroid/graphics/Bitmap;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mTxtBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mDstBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mDstBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mSrcBmp:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventY:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventY:F

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventY:F

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/join/mgps/activity/vipzone/ScratchImageView2;->mEventX:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x1

    return p1
.end method
