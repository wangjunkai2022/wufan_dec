.class Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;,
        Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final A:I = 0x534

.field private static final B:F = 5.0f

.field private static final C:I = 0xa

.field private static final D:I = 0x5

.field private static final E:F = 5.0f

.field private static final F:I = 0xc

.field private static final G:I = 0x6

.field private static final H:F = 0.8f

.field public static I:Landroid/graphics/Bitmap; = null

.field private static final l:Landroid/view/animation/Interpolator;

.field static final m:Landroid/view/animation/Interpolator;

.field private static final n:F = 1080.0f

.field static final o:I = 0x0

.field static final p:I = 0x1

.field private static final q:I = 0x28

.field private static final r:F = 8.75f

.field private static final s:F = 2.5f

.field private static final t:I = 0x28

.field private static final u:F = 12.5f

.field private static final v:F = 3.0f

.field private static final w:[I

.field private static final x:F = 0.75f

.field private static final y:F = 0.5f

.field private static final z:F = 0.5f


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

.field private c:F

.field private d:Landroid/content/res/Resources;

.field private e:Landroid/view/View;

.field private f:Landroid/view/animation/Animation;

.field g:F

.field private h:D

.field private i:D

.field j:Z

.field private final k:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->l:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->m:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 3
    sput-object v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->w:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$c;-><init>(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;)V

    iput-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->k:Landroid/graphics/drawable/Drawable$Callback;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->e:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->d:Landroid/content/res/Resources;

    const p2, 0x7f080690

    .line 6
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->I:Landroid/graphics/Bitmap;

    .line 7
    new-instance p1, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-direct {p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 8
    sget-object p2, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->w:[I

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->A([I)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->o(I)V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->l()V

    return-void
.end method

.method private b(FII)I
    .locals 6

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method private d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->c:F

    return v0
.end method

.method private j(DDDDFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->d:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    iput-wide p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->h:D

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v2

    iput-wide p3, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->i:D

    double-to-float p1, p7

    mul-float p1, p1, v1

    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->G(F)V

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p5, p5, v2

    invoke-virtual {v0, p5, p6}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->w(D)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->z(I)V

    mul-float p9, p9, v1

    mul-float p10, p10, v1

    .line 9
    invoke-virtual {v0, p9, p10}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->t(FF)V

    .line 10
    iget-wide p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->h:D

    double-to-int p1, p1

    iget-wide p2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->i:D

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->C(II)V

    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    .line 2
    new-instance v1, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$a;-><init>(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V

    const/4 v2, -0x1

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 5
    sget-object v2, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->l:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6
    new-instance v2, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$b;-><init>(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    iput-object v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method a(FLcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->n(FLcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->m()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 3
    invoke-virtual {p0, p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->c(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)F

    move-result v1

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->n()F

    move-result v2

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->l()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-virtual {p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->n()F

    move-result v1

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    .line 6
    invoke-virtual {p2, v2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->F(F)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->l()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->B(F)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->m()F

    move-result v1

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->m()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    .line 10
    invoke-virtual {p2, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->D(F)V

    return-void
.end method

.method c(Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)F
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->o()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->d()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->c:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v2, p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->u(F)V

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->v(I)V

    return-void
.end method

.method public varargs g([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->A([I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->z(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->c()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->i:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->h:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->D(F)V

    return-void
.end method

.method i(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->c:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->a:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public k(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->F(F)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->B(F)V

    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->E(Z)V

    return-void
.end method

.method n(FLcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->k()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->g()I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b(FII)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->x(I)V

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 22

    if-nez p1, :cond_0

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->j(DDDDFF)V

    goto :goto_0

    :cond_0
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    const-wide v16, 0x4021800000000000L    # 8.75

    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v11, p0

    .line 2
    invoke-direct/range {v11 .. v21}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->j(DDDDFF)V

    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->s(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->y(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->H()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->e()F

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->j()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->j:Z

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->z(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->r()V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->i(F)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->E(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->z(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable;->b:Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;

    invoke-virtual {v0}, Lcom/join/mgps/customview/swiperefresh/MaterialProgressDrawable$d;->r()V

    return-void
.end method
