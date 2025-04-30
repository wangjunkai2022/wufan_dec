.class public Lcom/join/mgps/customview/MyTextView;
.super Landroid/widget/TextView;
.source "MyTextView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field h:I

.field i:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/MyTextView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/MyTextView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/MyTextView;->c()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyTextView;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->h:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    .line 3
    const-class v0, I

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/join/mgps/customview/MyTextView;->i:[[I

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget v6, p0, Lcom/join/mgps/customview/MyTextView;->h:I

    if-ge v0, v6, :cond_4

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 6
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    .line 7
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iget-object v8, p0, Lcom/join/mgps/customview/MyTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v8, v6, v4, v3, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 9
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    const-string v8, "\u300a"

    .line 10
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "\uff08"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 11
    :cond_0
    iget v8, p0, Lcom/join/mgps/customview/MyTextView;->g:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    :cond_1
    int-to-float v7, v7

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 12
    iget v8, p0, Lcom/join/mgps/customview/MyTextView;->b:I

    if-le v5, v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    int-to-float v5, v5

    sub-float/2addr v5, v7

    float-to-int v5, v5

    .line 13
    :goto_1
    iget-object v8, p0, Lcom/join/mgps/customview/MyTextView;->i:[[I

    aget-object v9, v8, v0

    aput v5, v9, v4

    .line 14
    aget-object v8, v8, v0

    iget v9, p0, Lcom/join/mgps/customview/MyTextView;->f:I

    mul-int v9, v9, v2

    iget v10, p0, Lcom/join/mgps/customview/MyTextView;->e:I

    add-int/lit8 v11, v2, -0x1

    mul-int v10, v10, v11

    add-int/2addr v9, v10

    aput v9, v8, v3

    .line 15
    invoke-virtual {p0, v6}, Lcom/join/mgps/customview/MyTextView;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    int-to-float v5, v5

    .line 16
    iget v6, p0, Lcom/join/mgps/customview/MyTextView;->g:I

    goto :goto_2

    :cond_3
    int-to-float v5, v5

    .line 17
    iget v6, p0, Lcom/join/mgps/customview/MyTextView;->d:I

    :goto_2
    int-to-float v6, v6

    add-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_4
    iget p1, p0, Lcom/join/mgps/customview/MyTextView;->f:I

    iget v0, p0, Lcom/join/mgps/customview/MyTextView;->e:I

    add-int/2addr p1, v0

    mul-int p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHeight(I)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/MyTextView;->c:Landroid/graphics/Paint;

    const-string v1, "#787878"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/MyTextView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/MyTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Lcom/join/mgps/customview/MyTextView;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/MyTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 6
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->f:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/join/mgps/customview/MyTextView;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->d:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/join/mgps/customview/MyTextView;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->e:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/join/mgps/customview/MyTextView;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->g:I

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[A-Za-z0-9_]+$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/MyTextView;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/MyTextView;->h:I

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/MyTextView;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/join/mgps/customview/MyTextView;->i:[[I

    aget-object v4, v3, v1

    aget v4, v4, v0

    int-to-float v4, v4

    aget-object v3, v3, v1

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lcom/join/mgps/customview/MyTextView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/MyTextView;->b:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/MyTextView;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
