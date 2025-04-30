.class public Lcom/join/mgps/Util/h2;
.super Ljava/lang/Object;
.source "TipViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "#8dbbec"

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/j;->h(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    const/16 v2, 0x41

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 5
    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 6
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/j;->g()F

    move-result v2

    mul-float v2, v2, v1

    .line 7
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/j;->g()F

    .line 8
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput v2, v4, v3

    const/4 v3, 0x1

    aput v2, v4, v3

    const/4 v3, 0x2

    aput v2, v4, v3

    const/4 v3, 0x3

    aput v2, v4, v3

    const/4 v3, 0x4

    aput v2, v4, v3

    const/4 v3, 0x5

    aput v2, v4, v3

    const/4 v3, 0x6

    aput v2, v4, v3

    const/4 v3, 0x7

    aput v2, v4, v3

    const/4 v2, 0x0

    invoke-direct {v1, v4, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 10
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/join/android/app/common/utils/j;->g()F

    move-result p0

    mul-float p0, p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "#8dbbec"

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/k0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 5
    instance-of v0, p1, Lcom/join/mgps/customview/k0;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/customview/k0;

    const/4 v1, 0x0

    invoke-static {v1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/k0;->o(F)Lcom/join/mgps/customview/k0;

    .line 7
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/k0;->q(Landroid/widget/ImageView$ScaleType;)Lcom/join/mgps/customview/k0;

    :cond_1
    return-object p1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "#8dbbec"

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p2, v1

    .line 3
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4
    invoke-static {v0}, Lcom/join/mgps/customview/k0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 6
    instance-of v0, p1, Lcom/join/mgps/customview/k0;

    if-eqz v0, :cond_2

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/join/mgps/customview/k0;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/customview/k0;->l(I)Lcom/join/mgps/customview/k0;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 8
    invoke-static {v1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/customview/k0;->n(F)Lcom/join/mgps/customview/k0;

    const/high16 p2, 0x40000000    # 2.0f

    .line 9
    invoke-static {v1, p2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/k0;->o(F)Lcom/join/mgps/customview/k0;

    .line 10
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/k0;->q(Landroid/widget/ImageView$ScaleType;)Lcom/join/mgps/customview/k0;

    :cond_2
    return-object p1
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "#8dbbec"

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/join/android/app/common/utils/j;->h(Landroid/content/Context;)F

    move-result p0

    mul-int/lit8 p2, p2, 0x41

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v1, v1, p0

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v2, p2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 5
    new-instance p2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v1, 0x8

    new-array v3, v1, [F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float p0, p0, v4

    aput p0, v3, v2

    const/4 v4, 0x1

    aput p0, v3, v4

    const/4 v5, 0x2

    aput p0, v3, v5

    const/4 v6, 0x3

    aput p0, v3, v6

    const/4 v7, 0x4

    aput p0, v3, v7

    const/4 v8, 0x5

    aput p0, v3, v8

    const/4 v9, 0x6

    aput p0, v3, v9

    const/4 v10, 0x7

    aput p0, v3, v10

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12, v12, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v1, v1, [F

    aput p0, v1, v2

    aput p0, v1, v4

    aput p0, v1, v5

    aput p0, v1, v6

    aput p0, v1, v7

    aput p0, v1, v8

    aput p0, v1, v9

    aput p0, v1, v10

    invoke-direct {p2, v3, v11, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    .line 7
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 9
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-object v0
.end method
