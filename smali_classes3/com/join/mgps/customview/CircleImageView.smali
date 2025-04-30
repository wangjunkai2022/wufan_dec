.class public Lcom/join/mgps/customview/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field private static final r:Landroid/widget/ImageView$ScaleType;

.field private static final s:Landroid/graphics/Bitmap$Config;

.field private static final t:I = 0x2

.field private static final u:I = 0x0

.field private static final v:I = -0x1000000

.field private static final w:Z


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/BitmapShader;

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:Landroid/graphics/ColorFilter;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/join/mgps/customview/CircleImageView;->r:Landroid/widget/ImageView$ScaleType;

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/join/mgps/customview/CircleImageView;->s:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/Matrix;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    .line 7
    iput p1, p0, Lcom/join/mgps/customview/CircleImageView;->f:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    .line 9
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->f:I

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    .line 19
    sget-object v2, Lcom/join/android/app/mgsim/wufun/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    .line 20
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CircleImageView;->f:I

    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/CircleImageView;->q:Z

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->b()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Lcom/join/mgps/customview/CircleImageView;->s:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lcom/join/mgps/customview/CircleImageView;->s:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private b()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/CircleImageView;->r:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->o:Z

    .line 3
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->p:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->p:Z

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->o:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/join/mgps/customview/CircleImageView;->p:Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->h:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/BitmapShader;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->k:I

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->j:I

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->m:F

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 16
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->q:Z

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    iget v2, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/CircleImageView;->l:F

    .line 19
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->e()V

    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->j:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/join/mgps/customview/CircleImageView;->k:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/join/mgps/customview/CircleImageView;->j:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    move v2, v1

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/CircleImageView;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/join/mgps/customview/CircleImageView;->k:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v3

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/Matrix;

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/join/mgps/customview/CircleImageView;->a:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iget v3, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->i:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/join/mgps/customview/CircleImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->q:Z

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->f:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/CircleImageView;->r:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/join/mgps/customview/CircleImageView;->l:F

    iget-object v3, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/join/mgps/customview/CircleImageView;->m:F

    iget-object v3, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "adjustViewBounds not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->f:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/CircleImageView;->f:I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setBorderColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CircleImageView;->setBorderColor(I)V

    return-void
.end method

.method public setBorderOverlay(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/CircleImageView;->q:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/join/mgps/customview/CircleImageView;->q:Z

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/join/mgps/customview/CircleImageView;->g:I

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->n:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->n:Landroid/graphics/ColorFilter;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/CircleImageView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->h:Landroid/graphics/Bitmap;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->h:Landroid/graphics/Bitmap;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->h:Landroid/graphics/Bitmap;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/customview/CircleImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/CircleImageView;->h:Landroid/graphics/Bitmap;

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/CircleImageView;->d()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/join/mgps/customview/CircleImageView;->r:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
