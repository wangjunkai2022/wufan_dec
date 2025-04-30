.class Lcom/join/mgps/customview/l0;
.super Landroid/widget/LinearLayout;
.source "SlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/l0$b;
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

.field private h:Lcom/join/mgps/customview/SlidingTabLayout$d;

.field private final i:Lcom/join/mgps/customview/l0$b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/l0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-static {p1, v1}, Lcom/join/mgps/customview/l0;->c(IB)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/l0;->e:I

    .line 9
    new-instance v1, Lcom/join/mgps/customview/l0$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/join/mgps/customview/l0$b;-><init>(Lcom/join/mgps/customview/l0$a;)V

    iput-object v1, p0, Lcom/join/mgps/customview/l0;->i:Lcom/join/mgps/customview/l0$b;

    new-array v2, v3, [I

    const v3, -0xcc4a1b

    aput v3, v2, p2

    .line 10
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/l0$b;->b([I)V

    const/4 p2, 0x0

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/l0;->a:I

    .line 12
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/l0;->b:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40400000    # 3.0f

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 14
    iput p1, p0, Lcom/join/mgps/customview/l0;->c:I

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/l0;->d:Landroid/graphics/Paint;

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

.method private static c(IB)I
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
.method b(IF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/l0;->f:I

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/l0;->g:F

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method d(Lcom/join/mgps/customview/SlidingTabLayout$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/l0;->h:Lcom/join/mgps/customview/SlidingTabLayout$d;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method varargs e([I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/join/mgps/customview/l0;->h:Lcom/join/mgps/customview/SlidingTabLayout$d;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/l0;->i:Lcom/join/mgps/customview/l0$b;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/l0$b;->b([I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 3
    iget-object v3, v0, Lcom/join/mgps/customview/l0;->h:Lcom/join/mgps/customview/SlidingTabLayout$d;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, v0, Lcom/join/mgps/customview/l0;->i:Lcom/join/mgps/customview/l0$b;

    :goto_0
    if-lez v2, :cond_3

    .line 5
    iget v2, v0, Lcom/join/mgps/customview/l0;->f:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 8
    iget v5, v0, Lcom/join/mgps/customview/l0;->f:I

    invoke-interface {v3, v5}, Lcom/join/mgps/customview/SlidingTabLayout$d;->a(I)I

    move-result v5

    .line 9
    iget v6, v0, Lcom/join/mgps/customview/l0;->g:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v0, Lcom/join/mgps/customview/l0;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 10
    iget v6, v0, Lcom/join/mgps/customview/l0;->f:I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v3, v6}, Lcom/join/mgps/customview/SlidingTabLayout$d;->a(I)I

    move-result v3

    if-eq v5, v3, :cond_1

    .line 11
    iget v6, v0, Lcom/join/mgps/customview/l0;->g:F

    invoke-static {v3, v5, v6}, Lcom/join/mgps/customview/l0;->a(IIF)I

    move-result v3

    move v5, v3

    .line 12
    :cond_1
    iget v3, v0, Lcom/join/mgps/customview/l0;->f:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 13
    iget v6, v0, Lcom/join/mgps/customview/l0;->g:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    iget v7, v0, Lcom/join/mgps/customview/l0;->g:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v7

    int-to-float v4, v4

    mul-float v9, v9, v4

    add-float/2addr v6, v9

    float-to-int v4, v6

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    mul-float v7, v7, v3

    iget v3, v0, Lcom/join/mgps/customview/l0;->g:F

    sub-float/2addr v8, v3

    int-to-float v2, v2

    mul-float v8, v8, v2

    add-float/2addr v7, v8

    float-to-int v2, v7

    .line 15
    :cond_2
    iget-object v3, v0, Lcom/join/mgps/customview/l0;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v4

    .line 16
    iget v3, v0, Lcom/join/mgps/customview/l0;->c:I

    sub-int v3, v1, v3

    int-to-float v8, v3

    int-to-float v9, v2

    int-to-float v10, v1

    iget-object v11, v0, Lcom/join/mgps/customview/l0;->d:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    const/4 v13, 0x0

    .line 17
    iget v2, v0, Lcom/join/mgps/customview/l0;->a:I

    sub-int v2, v1, v2

    int-to-float v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v15, v2

    int-to-float v1, v1

    iget-object v2, v0, Lcom/join/mgps/customview/l0;->b:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
