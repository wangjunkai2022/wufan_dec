.class public Lcom/join/mgps/customview/k0;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedDrawable.java"


# static fields
.field public static final t:Ljava/lang/String; = "RoundedDrawable"

.field public static final u:I = -0x1000000


# instance fields
.field private final a:Landroid/graphics/RectF;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/Bitmap;

.field private final e:Landroid/graphics/Paint;

.field private final f:I

.field private final g:I

.field private final h:Landroid/graphics/RectF;

.field private final i:Landroid/graphics/Paint;

.field private final j:Landroid/graphics/Matrix;

.field private k:Landroid/graphics/BitmapShader;

.field private l:Landroid/graphics/Shader$TileMode;

.field private m:Landroid/graphics/Shader$TileMode;

.field private n:Z

.field private o:F

.field private p:Z

.field private q:F

.field private r:Landroid/content/res/ColorStateList;

.field private s:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/k0;->b:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    .line 6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    .line 7
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iput-object v1, p0, Lcom/join/mgps/customview/k0;->l:Landroid/graphics/Shader$TileMode;

    .line 8
    iput-object v1, p0, Lcom/join/mgps/customview/k0;->m:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/customview/k0;->n:Z

    const/4 v2, 0x0

    .line 10
    iput v2, p0, Lcom/join/mgps/customview/k0;->o:F

    const/4 v3, 0x0

    .line 11
    iput-boolean v3, p0, Lcom/join/mgps/customview/k0;->p:Z

    .line 12
    iput v2, p0, Lcom/join/mgps/customview/k0;->q:F

    const/high16 v3, -0x1000000

    .line 13
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/join/mgps/customview/k0;->r:Landroid/content/res/ColorStateList;

    .line 14
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lcom/join/mgps/customview/k0;->s:Landroid/widget/ImageView$ScaleType;

    .line 15
    iput-object p1, p0, Lcom/join/mgps/customview/k0;->d:Landroid/graphics/Bitmap;

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/join/mgps/customview/k0;->f:I

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/k0;->g:I

    int-to-float v4, v4

    int-to-float p1, p1

    .line 18
    invoke-virtual {v0, v2, v2, v4, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/k0;->i:Landroid/graphics/Paint;

    .line 23
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 25
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget v0, p0, Lcom/join/mgps/customview/k0;->q:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static b(Landroid/graphics/Bitmap;)Lcom/join/mgps/customview/k0;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/join/mgps/customview/k0;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/k0;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-eqz p0, :cond_3

    .line 1
    instance-of v0, p0, Lcom/join/mgps/customview/k0;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    invoke-static {v2}, Lcom/join/mgps/customview/k0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0

    .line 7
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/customview/k0;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    new-instance p0, Lcom/join/mgps/customview/k0;

    invoke-direct {p0, v0}, Lcom/join/mgps/customview/k0;-><init>(Landroid/graphics/Bitmap;)V

    :cond_3
    return-object p0
.end method

.method private u()V
    .locals 6

    .line 1
    sget-object v0, Lcom/join/mgps/customview/k0$a;->a:[I

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->s:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/k0;->q:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/k0;->q:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/k0;->q:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/k0;->q:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 22
    iget v0, p0, Lcom/join/mgps/customview/k0;->f:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/join/mgps/customview/k0;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/k0;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    .line 24
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/join/mgps/customview/k0;->g:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/join/mgps/customview/k0;->f:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    .line 27
    iget-object v4, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, p0, Lcom/join/mgps/customview/k0;->g:I

    int-to-float v5, v5

    mul-float v5, v5, v0

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v2

    float-to-int v2, v4

    int-to-float v2, v2

    .line 28
    iget-object v4, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/k0;->q:F

    div-float v2, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->c:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_2

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/k0;->q:F

    div-float v4, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 37
    iget v0, p0, Lcom/join/mgps/customview/k0;->f:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/join/mgps/customview/k0;->g:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 38
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/k0;->g:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 39
    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v4, p0, Lcom/join/mgps/customview/k0;->f:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    move v3, v1

    const/4 v1, 0x0

    goto :goto_1

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/k0;->f:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 41
    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v4, p0, Lcom/join/mgps/customview/k0;->g:I

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v1, v4

    mul-float v1, v1, v2

    .line 42
    :goto_1
    iget-object v4, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 43
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    add-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/join/mgps/customview/k0;->q:F

    add-float/2addr v3, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 44
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 45
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/k0;->q:F

    div-float v4, v1, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 46
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 47
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/join/mgps/customview/k0;->f:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    .line 48
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/join/mgps/customview/k0;->g:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 50
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/k0;->n:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->l:Landroid/graphics/Shader$TileMode;

    iget-object v3, p0, Lcom/join/mgps/customview/k0;->m:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/join/mgps/customview/k0;->k:Landroid/graphics/BitmapShader;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/k0;->l:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->m:Landroid/graphics/Shader$TileMode;

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/k0;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->k:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/customview/k0;->n:Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/join/mgps/customview/k0;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 8
    iget v0, p0, Lcom/join/mgps/customview/k0;->q:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 12
    :cond_3
    iget v0, p0, Lcom/join/mgps/customview/k0;->q:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->b:Landroid/graphics/RectF;

    iget v2, p0, Lcom/join/mgps/customview/k0;->o:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/join/mgps/customview/k0;->o:F

    .line 14
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v3, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    .line 15
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->h:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/k0;->o:F

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->b:Landroid/graphics/RectF;

    iget v1, p0, Lcom/join/mgps/customview/k0;->o:F

    iget-object v2, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public e()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->r:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/k0;->q:F

    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/k0;->o:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/k0;->g:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/k0;->f:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->s:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public i()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->l:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method public j()Landroid/graphics/Shader$TileMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->m:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/k0;->p:Z

    return v0
.end method

.method public l(I)Lcom/join/mgps/customview/k0;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/k0;->m(Landroid/content/res/ColorStateList;)Lcom/join/mgps/customview/k0;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroid/content/res/ColorStateList;)Lcom/join/mgps/customview/k0;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/join/mgps/customview/k0;->r:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-object p0
.end method

.method public n(F)Lcom/join/mgps/customview/k0;
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/k0;->q:F

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object p0
.end method

.method public o(F)Lcom/join/mgps/customview/k0;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/k0;->o:F

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/k0;->u()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->r:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/k0;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/k0;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p1

    return p1
.end method

.method public p(Z)Lcom/join/mgps/customview/k0;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/k0;->p:Z

    return-object p0
.end method

.method public q(Landroid/widget/ImageView$ScaleType;)Lcom/join/mgps/customview/k0;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->s:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 3
    iput-object p1, p0, Lcom/join/mgps/customview/k0;->s:Landroid/widget/ImageView$ScaleType;

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/customview/k0;->u()V

    :cond_1
    return-object p0
.end method

.method public r(Landroid/graphics/Shader$TileMode;)Lcom/join/mgps/customview/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->l:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/k0;->l:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/k0;->n:Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public s(Landroid/graphics/Shader$TileMode;)Lcom/join/mgps/customview/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->m:Landroid/graphics/Shader$TileMode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/k0;->m:Landroid/graphics/Shader$TileMode;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/customview/k0;->n:Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/k0;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public t()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/customview/k0;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
