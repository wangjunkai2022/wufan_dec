.class public Lcom/join/android/app/component/optimizetext/a;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static a:Landroid/util/DisplayMetrics; = null

.field private static final b:I = 0x140

.field private static final c:I = 0x280

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:F

.field private static h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static b()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->f:I

    return v0
.end method

.method public static c()F
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->g:F

    return v0
.end method

.method public static d()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->e:I

    return v0
.end method

.method public static e()F
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static f()I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static g()I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static h()I
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static i()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->h:I

    return v0
.end method

.method public static j(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public static k()I
    .locals 1

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->d:I

    return v0
.end method

.method public static l(Landroid/view/View;)I
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 3
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    sput-object p0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    const/high16 p0, 0x43a00000    # 320.0f

    .line 2
    invoke-static {p0}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    move-result p0

    sput p0, Lcom/join/android/app/component/optimizetext/a;->d:I

    const/16 v0, 0x280

    if-le p0, v0, :cond_0

    .line 3
    sput v0, Lcom/join/android/app/component/optimizetext/a;->d:I

    :cond_0
    return-void
.end method

.method public static n(I)I
    .locals 1

    int-to-float p0, p0

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static o(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget v0, Lcom/join/android/app/component/optimizetext/a;->h:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sput v0, Lcom/join/android/app/component/optimizetext/a;->e:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sput v0, Lcom/join/android/app/component/optimizetext/a;->f:I

    .line 5
    sget v1, Lcom/join/android/app/component/optimizetext/a;->e:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    sput v1, Lcom/join/android/app/component/optimizetext/a;->g:F

    .line 6
    invoke-static {p0}, Lcom/join/android/app/component/optimizetext/a;->l(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    sput v0, Lcom/join/android/app/component/optimizetext/a;->h:I

    :cond_0
    return-void
.end method

.method public static p(I)V
    .locals 0

    .line 1
    sput p0, Lcom/join/android/app/component/optimizetext/a;->f:I

    return-void
.end method

.method public static q(F)V
    .locals 0

    .line 1
    sput p0, Lcom/join/android/app/component/optimizetext/a;->g:F

    return-void
.end method

.method public static r(I)V
    .locals 0

    .line 1
    sput p0, Lcom/join/android/app/component/optimizetext/a;->e:I

    return-void
.end method

.method public static s(I)I
    .locals 2

    int-to-float p0, p0

    .line 1
    sget-object v0, Lcom/join/android/app/component/optimizetext/a;->a:Landroid/util/DisplayMetrics;

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method
