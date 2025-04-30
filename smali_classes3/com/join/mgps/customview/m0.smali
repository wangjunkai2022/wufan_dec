.class Lcom/join/mgps/customview/m0;
.super Landroid/widget/LinearLayout;
.source "SlidingTabStrip2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/m0$b;
    }
.end annotation


# static fields
.field private static final j:I = 0x0

.field private static final k:B = 0x26t

.field private static final l:I = 0x3

.field private static final m:I = -0xcc4a1b


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:Landroid/graphics/Paint;

.field private final e:I

.field private f:I

.field private g:F

.field private h:Lcom/join/mgps/customview/SlidingTabLayout2$d;

.field private final i:Lcom/join/mgps/customview/m0$b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/m0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v2, 0x1010030

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 7
    iget p1, v1, Landroid/util/TypedValue;->data:I

    const/16 v1, 0x26

    .line 8
    invoke-static {p1, v1}, Lcom/join/mgps/customview/m0;->d(IB)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/m0;->e:I

    .line 9
    new-instance v1, Lcom/join/mgps/customview/m0$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/join/mgps/customview/m0$b;-><init>(Lcom/join/mgps/customview/m0$a;)V

    iput-object v1, p0, Lcom/join/mgps/customview/m0;->i:Lcom/join/mgps/customview/m0$b;

    new-array v2, v3, [I

    const v3, -0xcc4a1b

    aput v3, v2, p2

    .line 10
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/m0$b;->b([I)V

    const/4 p2, 0x0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/m0;->a:I

    .line 12
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/m0;->b:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/m0;->c:I

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/m0;->d:Landroid/graphics/Paint;

    return-void
.end method

.method private static a(IIF)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int p0, p0

    .line 4
    invoke-static {p1, p2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private static d(IB)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public b(F)I
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    .line 4
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method c(IF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/m0;->f:I

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/m0;->g:F

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method e(Lcom/join/mgps/customview/SlidingTabLayout2$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/m0;->h:Lcom/join/mgps/customview/SlidingTabLayout2$d;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method varargs f([I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/join/mgps/customview/m0;->h:Lcom/join/mgps/customview/SlidingTabLayout2$d;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/m0;->i:Lcom/join/mgps/customview/m0$b;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/m0$b;->b([I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/join/mgps/customview/m0;->h:Lcom/join/mgps/customview/SlidingTabLayout2$d;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/m0;->i:Lcom/join/mgps/customview/m0$b;

    :goto_0
    if-lez v1, :cond_4

    .line 5
    iget v1, p0, Lcom/join/mgps/customview/m0;->f:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 8
    iget v5, p0, Lcom/join/mgps/customview/m0;->f:I

    invoke-interface {v2, v5}, Lcom/join/mgps/customview/SlidingTabLayout2$d;->a(I)I

    move-result v5

    .line 9
    iget v6, p0, Lcom/join/mgps/customview/m0;->g:F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, p0, Lcom/join/mgps/customview/m0;->f:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v6, v7, :cond_2

    .line 10
    iget v6, p0, Lcom/join/mgps/customview/m0;->f:I

    add-int/2addr v6, v9

    invoke-interface {v2, v6}, Lcom/join/mgps/customview/SlidingTabLayout2$d;->a(I)I

    move-result v2

    if-eq v5, v2, :cond_1

    .line 11
    iget v6, p0, Lcom/join/mgps/customview/m0;->g:F

    invoke-static {v2, v5, v6}, Lcom/join/mgps/customview/m0;->a(IIF)I

    move-result v2

    move v5, v2

    .line 12
    :cond_1
    iget v2, p0, Lcom/join/mgps/customview/m0;->f:I

    add-int/2addr v2, v9

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 13
    iget v6, p0, Lcom/join/mgps/customview/m0;->g:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    iget v7, p0, Lcom/join/mgps/customview/m0;->g:F

    sub-float v10, v8, v7

    int-to-float v3, v3

    mul-float v10, v10, v3

    add-float/2addr v6, v10

    float-to-int v3, v6

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    mul-float v7, v7, v2

    iget v2, p0, Lcom/join/mgps/customview/m0;->g:F

    sub-float v2, v8, v2

    int-to-float v4, v4

    mul-float v2, v2, v4

    add-float/2addr v7, v2

    float-to-int v4, v7

    .line 15
    :cond_2
    iget-object v2, p0, Lcom/join/mgps/customview/m0;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 17
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/join/mgps/customview/m0;->b(F)I

    move-result v1

    .line 18
    iget-object v2, p0, Lcom/join/mgps/customview/m0;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget-object v2, p0, Lcom/join/mgps/customview/m0;->d:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    iget-object v2, p0, Lcom/join/mgps/customview/m0;->d:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v2, v5}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 22
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    iput v3, v5, Landroid/graphics/RectF;->left:F

    sub-int v1, v0, v1

    .line 24
    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x1

    int-to-float v3, v1

    iput v3, v5, Landroid/graphics/RectF;->top:F

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v4, v3

    int-to-float v3, v4

    iput v3, v5, Landroid/graphics/RectF;->right:F

    sub-int v1, v0, v1

    int-to-float v1, v1

    .line 26
    iput v1, v5, Landroid/graphics/RectF;->bottom:F

    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/m0;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    int-to-float v7, v3

    .line 28
    iget v1, p0, Lcom/join/mgps/customview/m0;->c:I

    sub-int v1, v0, v1

    int-to-float v8, v1

    int-to-float v9, v4

    int-to-float v10, v0

    iget-object v11, p0, Lcom/join/mgps/customview/m0;->d:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 29
    iget v1, p0, Lcom/join/mgps/customview/m0;->a:I

    sub-int v1, v0, v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v0

    iget-object v6, p0, Lcom/join/mgps/customview/m0;->b:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
