.class public Lcom/google/android/material/color/m;
.super Ljava/lang/Object;
.source "MaterialColors.java"


# static fields
.field public static final a:F = 1.0f

.field public static final b:F = 0.54f

.field public static final c:F = 0.38f

.field public static final d:F = 0.32f

.field public static final e:F = 0.12f

.field private static final f:I = 0x28

.field private static final g:I = 0x64

.field private static final h:I = 0x5a

.field private static final i:I = 0xa

.field private static final j:I = 0x50

.field private static final k:I = 0x14

.field private static final l:I = 0x1e

.field private static final m:I = 0x5a


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int v0, v0, p1

    div-int/lit16 v0, v0, 0xff

    .line 2
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;II)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/resources/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/b;->g(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;I)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/resources/b;->h(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/view/View;II)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/android/material/color/m;->b(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static f(II)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/material/color/l;->c(I)Lcom/google/android/material/color/l;

    move-result-object p0

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/l;->l(F)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/color/l;->m()I

    move-result p0

    return p0
.end method

.method public static g(IZ)Lcom/google/android/material/color/e;
    .locals 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 v0, 0x5a

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/material/color/e;

    const/16 v1, 0x28

    .line 2
    invoke-static {p0, v1}, Lcom/google/android/material/color/m;->f(II)I

    move-result v1

    const/16 v2, 0x64

    .line 3
    invoke-static {p0, v2}, Lcom/google/android/material/color/m;->f(II)I

    move-result v2

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/material/color/m;->f(II)I

    move-result v0

    const/16 v3, 0xa

    .line 5
    invoke-static {p0, v3}, Lcom/google/android/material/color/m;->f(II)I

    move-result p0

    invoke-direct {p1, v1, v2, v0, p0}, Lcom/google/android/material/color/e;-><init>(IIII)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/google/android/material/color/e;

    const/16 v1, 0x50

    .line 7
    invoke-static {p0, v1}, Lcom/google/android/material/color/m;->f(II)I

    move-result v1

    const/16 v2, 0x14

    .line 8
    invoke-static {p0, v2}, Lcom/google/android/material/color/m;->f(II)I

    move-result v2

    const/16 v3, 0x1e

    .line 9
    invoke-static {p0, v3}, Lcom/google/android/material/color/m;->f(II)I

    move-result v3

    .line 10
    invoke-static {p0, v0}, Lcom/google/android/material/color/m;->f(II)I

    move-result p0

    invoke-direct {p1, v1, v2, v3, p0}, Lcom/google/android/material/color/e;-><init>(IIII)V

    :goto_0
    return-object p1
.end method

.method public static h(Landroid/content/Context;I)Lcom/google/android/material/color/e;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->isLightTheme:I

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/b;->b(Landroid/content/Context;IZ)Z

    move-result p0

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/material/color/m;->g(IZ)Lcom/google/android/material/color/e;

    move-result-object p0

    return-object p0
.end method

.method public static i(II)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/color/a;->c(II)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;I)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    const-class v1, Lcom/google/android/material/color/m;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/m;->c(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/material/color/m;->i(II)I

    move-result p0

    return p0
.end method

.method public static k(I)Z
    .locals 4
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(II)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method public static m(IIF)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 2
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/material/color/m;->l(II)I

    move-result p0

    return p0
.end method

.method public static n(Landroid/view/View;II)I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/m;->o(Landroid/view/View;IIF)I

    move-result p0

    return p0
.end method

.method public static o(Landroid/view/View;IIF)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/color/m;->d(Landroid/view/View;I)I

    move-result p1

    .line 2
    invoke-static {p0, p2}, Lcom/google/android/material/color/m;->d(Landroid/view/View;I)I

    move-result p0

    .line 3
    invoke-static {p1, p0, p3}, Lcom/google/android/material/color/m;->m(IIF)I

    move-result p0

    return p0
.end method
