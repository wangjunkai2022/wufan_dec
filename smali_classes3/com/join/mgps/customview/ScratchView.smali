.class public Lcom/join/mgps/customview/ScratchView;
.super Landroid/view/View;
.source "ScratchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ScratchView$b;,
        Lcom/join/mgps/customview/ScratchView$c;
    }
.end annotation


# static fields
.field private static v:Landroid/graphics/Bitmap;

.field private static w:Landroid/graphics/Bitmap;


# instance fields
.field public final a:I

.field public final b:I

.field private final c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Canvas;

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Paint;

.field private j:I

.field private k:I

.field private l:Lcom/join/mgps/customview/ScratchView$b;

.field private m:Lcom/join/mgps/customview/ScratchView$c;

.field private n:I

.field private o:I

.field private volatile p:Z

.field private q:Z

.field private r:Ljava/lang/Runnable;

.field private s:Landroid/graphics/Bitmap;

.field t:Z

.field u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/ScratchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/ScratchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x46

    .line 4
    iput p3, p0, Lcom/join/mgps/customview/ScratchView;->a:I

    const/16 p3, 0x32

    .line 5
    iput p3, p0, Lcom/join/mgps/customview/ScratchView;->b:I

    const/4 p3, 0x0

    .line 6
    iput-boolean p3, p0, Lcom/join/mgps/customview/ScratchView;->p:Z

    .line 7
    iput-boolean p3, p0, Lcom/join/mgps/customview/ScratchView;->q:Z

    .line 8
    new-instance v0, Lcom/join/mgps/customview/ScratchView$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/ScratchView$a;-><init>(Lcom/join/mgps/customview/ScratchView;)V

    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->r:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->t:Z

    .line 10
    iput v0, p0, Lcom/join/mgps/customview/ScratchView;->u:I

    .line 11
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->scratchView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->c:I

    .line 13
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->i()V

    return-void
.end method

.method static synthetic a()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ScratchView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ScratchView;->k:I

    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/ScratchView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScratchView;->p:Z

    return p1
.end method

.method static synthetic d(Lcom/join/mgps/customview/ScratchView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScratchView;->q:Z

    return p1
.end method

.method public static e(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_1
    :goto_0
    if-le p0, v0, :cond_2

    .line 3
    div-int/2addr v0, p2

    int-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    goto :goto_1

    .line 4
    :cond_2
    div-int/2addr p0, p1

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    :goto_1
    double-to-int p0, p0

    :goto_2
    return p0
.end method

.method public static f(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    invoke-static {v0, p2, p3}, Lcom/join/mgps/customview/ScratchView;->e(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->f:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private h()V
    .locals 5

    .line 1
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->v:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/customview/ScratchView;->c:I

    iget v2, p0, Lcom/join/mgps/customview/ScratchView;->n:I

    iget v3, p0, Lcom/join/mgps/customview/ScratchView;->o:I

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/customview/ScratchView;->f(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/ScratchView;->v:Landroid/graphics/Bitmap;

    .line 3
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/join/mgps/customview/ScratchView;->n:I

    iget v1, p0, Lcom/join/mgps/customview/ScratchView;->o:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->f:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->f:Landroid/graphics/Canvas;

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->m()V

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->l()V

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/join/mgps/customview/ScratchView;->n:I

    iget v2, p0, Lcom/join/mgps/customview/ScratchView;->o:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/ScratchView;->f:Landroid/graphics/Canvas;

    sget-object v2, Lcom/join/mgps/customview/ScratchView;->v:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/join/mgps/customview/ScratchView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->i:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Path;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f88

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ScratchView;->j:I

    const/16 v0, 0x32

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/ScratchView;->k:I

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->i:Landroid/graphics/Paint;

    const-string v1, "#c3c3c3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    const-string v1, "#c3c3c3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/ScratchView;->j:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->i()V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->h()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->p:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->l:Lcom/join/mgps/customview/ScratchView$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/join/mgps/customview/ScratchView$b;->complete()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->p:Z

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->g()V

    .line 6
    sget-object v0, Lcom/join/mgps/customview/ScratchView;->w:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->n:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->o:I

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/ScratchView;->h()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->t:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/join/mgps/customview/ScratchView;->q:Z

    if-nez v0, :cond_1

    .line 2
    iget p1, p0, Lcom/join/mgps/customview/ScratchView;->u:I

    if-lez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5df2\u7ecf\u6ca1\u6709\u6b21\u6570\u4e86\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/ScratchView;->g:I

    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 9
    iget v3, p0, Lcom/join/mgps/customview/ScratchView;->h:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x3

    if-gt v0, v4, :cond_3

    if-le v3, v4, :cond_4

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Path;

    int-to-float v3, v2

    int-to-float v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->m:Lcom/join/mgps/customview/ScratchView$c;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v0}, Lcom/join/mgps/customview/ScratchView$c;->onScratch()V

    .line 13
    :cond_4
    iput v2, p0, Lcom/join/mgps/customview/ScratchView;->g:I

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->h:I

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/ScratchView;->r:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 16
    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/customview/ScratchView;->q:Z

    .line 17
    iput v2, p0, Lcom/join/mgps/customview/ScratchView;->g:I

    .line 18
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->h:I

    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView;->e:Landroid/graphics/Path;

    int-to-float v2, v2

    int-to-float p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 21
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public setCanCratch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/ScratchView;->t:Z

    return-void
.end method

.method public setCompletePercentage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->k:I

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ScratchView;->u:I

    return-void
.end method

.method public setOnCompleteListener(Lcom/join/mgps/customview/ScratchView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScratchView;->l:Lcom/join/mgps/customview/ScratchView$b;

    return-void
.end method

.method public setOnScratchListener(Lcom/join/mgps/customview/ScratchView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScratchView;->m:Lcom/join/mgps/customview/ScratchView$c;

    return-void
.end method
