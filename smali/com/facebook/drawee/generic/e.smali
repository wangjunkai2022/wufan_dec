.class public Lcom/facebook/drawee/generic/e;
.super Ljava/lang/Object;
.source "WrappingUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "WrappingUtils"

.field private static final b:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/facebook/drawee/generic/e;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    new-instance v0, Lcom/facebook/drawee/drawable/m;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-direct {v0, p2, v1, p0}, Lcom/facebook/drawee/drawable/m;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 6
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/e;->b(Lcom/facebook/drawee/drawable/l;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object v0

    .line 7
    :cond_0
    instance-of p2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p2, :cond_1

    .line 8
    check-cast p0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 9
    new-instance p2, Lcom/facebook/drawee/drawable/p;

    invoke-direct {p2, p0}, Lcom/facebook/drawee/drawable/p;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    .line 10
    invoke-static {p2, p1}, Lcom/facebook/drawee/generic/e;->b(Lcom/facebook/drawee/drawable/l;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object p2

    .line 11
    :cond_1
    instance-of p2, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p2, v0, :cond_2

    .line 12
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    invoke-static {p0}, Lcom/facebook/drawee/drawable/n;->d(Landroid/graphics/drawable/ColorDrawable;)Lcom/facebook/drawee/drawable/n;

    move-result-object p0

    .line 14
    invoke-static {p0, p1}, Lcom/facebook/drawee/generic/e;->b(Lcom/facebook/drawee/drawable/l;Lcom/facebook/drawee/generic/RoundingParams;)V

    return-object p0

    :cond_2
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    const-string p2, "WrappingUtils"

    const-string v0, "Don\'t know how to round that drawable: %s"

    .line 15
    invoke-static {p2, v0, p1}, Lcom/facebook/common/logging/a;->q0(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static b(Lcom/facebook/drawee/drawable/l;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->k()Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/l;->c(Z)V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->g()[F

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/l;->t([F)V

    .line 3
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->f()F

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/facebook/drawee/drawable/l;->a(IF)V

    .line 4
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->j()F

    move-result v0

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/l;->g(F)V

    .line 5
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->m()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/l;->m(Z)V

    return-void
.end method

.method static c(Lcom/facebook/drawee/drawable/d;)Lcom/facebook/drawee/drawable/d;
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p0}, Lcom/facebook/drawee/drawable/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/facebook/drawee/drawable/d;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    move-object p0, v0

    check-cast p0, Lcom/facebook/drawee/drawable/d;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method static d(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WrappingUtils#maybeApplyLeafRounding"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->l()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p0, Lcom/facebook/drawee/drawable/h;

    if-eqz v0, :cond_3

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/facebook/drawee/drawable/h;

    invoke-static {v0}, Lcom/facebook/drawee/generic/e;->c(Lcom/facebook/drawee/drawable/d;)Lcom/facebook/drawee/drawable/d;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/facebook/drawee/generic/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7
    invoke-static {v1, p1, p2}, Lcom/facebook/drawee/generic/e;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    invoke-interface {v0, p1}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object p0

    .line 11
    :cond_3
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/facebook/drawee/generic/e;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-object p0

    .line 14
    :cond_5
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_6
    return-object p0

    :catchall_0
    move-exception p0

    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 18
    :cond_7
    throw p0
.end method

.method static e(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lcom/facebook/drawee/drawable/i;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/drawable/i;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static f(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WrappingUtils#maybeWrapWithRoundedOverlayColor"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->l()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v0

    sget-object v1, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/e;->b(Lcom/facebook/drawee/drawable/l;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 6
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->i()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->z(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_2
    return-object v0

    .line 9
    :cond_3
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_4
    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 13
    :cond_5
    throw p0
.end method

.method static g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/drawee/drawable/r$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/facebook/drawee/generic/e;->h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static h(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;Landroid/graphics/PointF;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/drawee/drawable/r$c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WrappingUtils#maybeWrapWithScaleType"

    .line 2
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lcom/facebook/drawee/drawable/q;

    invoke-direct {v0, p0, p1}, Lcom/facebook/drawee/drawable/q;-><init>(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)V

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/drawable/q;->C(Landroid/graphics/PointF;)V

    .line 5
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_3
    return-object v0

    .line 7
    :cond_4
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    :cond_5
    return-object p0
.end method

.method static i(Lcom/facebook/drawee/drawable/l;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/l;->c(Z)V

    const/4 v1, 0x0

    .line 2
    invoke-interface {p0, v1}, Lcom/facebook/drawee/drawable/l;->h(F)V

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/facebook/drawee/drawable/l;->a(IF)V

    .line 4
    invoke-interface {p0, v1}, Lcom/facebook/drawee/drawable/l;->g(F)V

    .line 5
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/l;->m(Z)V

    return-void
.end method

.method static j(Lcom/facebook/drawee/drawable/d;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)V
    .locals 3
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/facebook/drawee/generic/e;->c(Lcom/facebook/drawee/drawable/d;)Lcom/facebook/drawee/drawable/d;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/facebook/drawee/drawable/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->l()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->BITMAP_ONLY:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-ne v1, v2, :cond_1

    .line 4
    instance-of v1, v0, Lcom/facebook/drawee/drawable/l;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lcom/facebook/drawee/drawable/l;

    .line 6
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/e;->b(Lcom/facebook/drawee/drawable/l;Lcom/facebook/drawee/generic/RoundingParams;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    .line 7
    sget-object v1, Lcom/facebook/drawee/generic/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v1}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-static {v0, p1, p2}, Lcom/facebook/drawee/generic/e;->a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 10
    :cond_1
    instance-of p0, v0, Lcom/facebook/drawee/drawable/l;

    if-eqz p0, :cond_2

    .line 11
    check-cast v0, Lcom/facebook/drawee/drawable/l;

    invoke-static {v0}, Lcom/facebook/drawee/generic/e;->i(Lcom/facebook/drawee/drawable/l;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static k(Lcom/facebook/drawee/drawable/d;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 3
    .param p1    # Lcom/facebook/drawee/generic/RoundingParams;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0}, Lcom/facebook/drawee/drawable/d;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->l()Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    move-result-object v1

    sget-object v2, Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;->OVERLAY_COLOR:Lcom/facebook/drawee/generic/RoundingParams$RoundingMethod;

    if-ne v1, v2, :cond_1

    .line 3
    instance-of v1, v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    .line 5
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/e;->b(Lcom/facebook/drawee/drawable/l;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 6
    invoke-virtual {p1}, Lcom/facebook/drawee/generic/RoundingParams;->i()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;->z(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/facebook/drawee/generic/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 8
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/e;->f(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/generic/RoundingParams;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 10
    :cond_1
    instance-of p1, v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    if-eqz p1, :cond_2

    .line 11
    check-cast v0, Lcom/facebook/drawee/drawable/RoundedCornersDrawable;

    .line 12
    sget-object p1, Lcom/facebook/drawee/generic/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/h;->w(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    .line 14
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static l(Lcom/facebook/drawee/drawable/d;Lcom/facebook/drawee/drawable/r$c;)Lcom/facebook/drawee/drawable/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/drawee/generic/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {p0, v0}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/facebook/drawee/generic/e;->g(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/r$c;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    invoke-interface {p0, p1}, Lcom/facebook/drawee/drawable/d;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const-string p0, "Parent has no child drawable!"

    .line 4
    invoke-static {p1, p0}, Lcom/facebook/common/internal/h;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast p1, Lcom/facebook/drawee/drawable/q;

    return-object p1
.end method
