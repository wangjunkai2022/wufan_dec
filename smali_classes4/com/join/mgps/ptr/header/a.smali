.class public Lcom/join/mgps/ptr/header/a;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/ptr/header/a$g;,
        Lcom/join/mgps/ptr/header/a$i;,
        Lcom/join/mgps/ptr/header/a$f;,
        Lcom/join/mgps/ptr/header/a$h;
    }
.end annotation


# static fields
.field private static final A:I = 0x535

.field private static final B:F = 5.0f

.field private static final C:I = 0xa

.field private static final D:I = 0x5

.field private static final E:F = 5.0f

.field private static final F:I = 0xc

.field private static final G:I = 0x6

.field private static final H:F = 0.8f

.field private static final I:I = 0x1e000000

.field private static final J:I = 0x3d000000

.field private static final K:F = 3.5f

.field private static final n0:F = 0.0f

.field public static final o:I = 0x0

.field private static final o0:F = 1.75f

.field public static final p:I = 0x1

.field private static final q:Landroid/view/animation/Interpolator;

.field private static final r:Landroid/view/animation/Interpolator;

.field private static final s:Landroid/view/animation/Interpolator;

.field private static final t:Landroid/view/animation/Interpolator;

.field private static final u:I = 0x28

.field private static final v:F = 8.75f

.field private static final w:F = 2.5f

.field private static final x:I = 0x38

.field private static final y:F = 12.5f

.field private static final z:F = 3.0f


# instance fields
.field private final a:[I

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/join/mgps/ptr/header/a$h;

.field private final d:Landroid/graphics/drawable/Drawable$Callback;

.field private e:F

.field private f:Landroid/content/res/Resources;

.field private g:Landroid/view/View;

.field private h:Landroid/view/animation/Animation;

.field private i:F

.field private j:D

.field private k:D

.field private l:Landroid/view/animation/Animation;

.field private m:I

.field private n:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/join/mgps/ptr/header/a;->q:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Lcom/join/mgps/ptr/header/a$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/a$f;-><init>(Lcom/join/mgps/ptr/header/a$a;)V

    sput-object v0, Lcom/join/mgps/ptr/header/a;->r:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Lcom/join/mgps/ptr/header/a$i;

    invoke-direct {v0, v1}, Lcom/join/mgps/ptr/header/a$i;-><init>(Lcom/join/mgps/ptr/header/a$a;)V

    sput-object v0, Lcom/join/mgps/ptr/header/a;->s:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/join/mgps/ptr/header/a;->t:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/join/mgps/ptr/header/a;->a:[I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/join/mgps/ptr/header/a;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Lcom/join/mgps/ptr/header/a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/ptr/header/a$a;-><init>(Lcom/join/mgps/ptr/header/a;)V

    iput-object v1, p0, Lcom/join/mgps/ptr/header/a;->d:Landroid/graphics/drawable/Drawable$Callback;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/ptr/header/a;->g:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/ptr/header/a;->f:Landroid/content/res/Resources;

    .line 7
    new-instance p1, Lcom/join/mgps/ptr/header/a$h;

    invoke-direct {p1, v1}, Lcom/join/mgps/ptr/header/a$h;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    .line 8
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/header/a$h;->w([I)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/ptr/header/a;->r(I)V

    .line 10
    invoke-direct {p0}, Lcom/join/mgps/ptr/header/a;->p()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x36cbc9
        -0xc8a40f
        -0x82dc2
        -0xcb5cb0
    .end array-data
.end method

.method static synthetic a(Lcom/join/mgps/ptr/header/a;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/ptr/header/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/ptr/header/a;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/ptr/header/a;->s:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic d()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/ptr/header/a;->r:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic e(Lcom/join/mgps/ptr/header/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/ptr/header/a;->i:F

    return p0
.end method

.method static synthetic f(Lcom/join/mgps/ptr/header/a;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/a;->i:F

    return p1
.end method

.method private g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/ptr/header/a;->e:F

    return v0
.end method

.method private m(DDDDFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/ptr/header/a;->f:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    iput-wide p1, p0, Lcom/join/mgps/ptr/header/a;->j:D

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, v2

    iput-wide p3, p0, Lcom/join/mgps/ptr/header/a;->k:D

    double-to-float p1, p7

    mul-float p1, p1, v1

    .line 6
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->C(F)V

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p5, p5, v2

    invoke-virtual {v0, p5, p6}, Lcom/join/mgps/ptr/header/a$h;->t(D)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->v(I)V

    mul-float p9, p9, v1

    mul-float p10, p10, v1

    .line 9
    invoke-virtual {v0, p9, p10}, Lcom/join/mgps/ptr/header/a$h;->q(FF)V

    .line 10
    iget-wide p1, p0, Lcom/join/mgps/ptr/header/a;->j:D

    double-to-int p1, p1

    iget-wide p2, p0, Lcom/join/mgps/ptr/header/a;->k:D

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/ptr/header/a$h;->y(II)V

    .line 11
    iget-wide p1, p0, Lcom/join/mgps/ptr/header/a;->j:D

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/ptr/header/a;->o(D)V

    return-void
.end method

.method private o(D)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/ptr/util/b;->c(Landroid/content/Context;)V

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 2
    invoke-static {v0}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v1

    const/high16 v2, 0x40600000    # 3.5f

    .line 4
    invoke-static {v2}, Lcom/join/mgps/ptr/util/b;->b(F)I

    move-result v2

    .line 5
    new-instance v3, Lcom/join/mgps/ptr/header/a$g;

    double-to-int p1, p1

    invoke-direct {v3, p0, v2, p1}, Lcom/join/mgps/ptr/header/a$g;-><init>(Lcom/join/mgps/ptr/header/a;II)V

    .line 6
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/join/mgps/ptr/header/a;->n:Landroid/graphics/drawable/ShapeDrawable;

    .line 7
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt p2, v3, :cond_0

    .line 8
    iget-object p2, p0, Lcom/join/mgps/ptr/header/a;->g:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a;->n:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    int-to-float p2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v2, 0x1e000000

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    .line 2
    new-instance v1, Lcom/join/mgps/ptr/header/a$b;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/ptr/header/a$b;-><init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V

    .line 3
    sget-object v2, Lcom/join/mgps/ptr/header/a;->t:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x29a

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5
    new-instance v2, Lcom/join/mgps/ptr/header/a$c;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/ptr/header/a$c;-><init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6
    new-instance v2, Lcom/join/mgps/ptr/header/a$d;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/ptr/header/a$d;-><init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V

    const/4 v3, -0x1

    .line 7
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 9
    sget-object v3, Lcom/join/mgps/ptr/header/a;->q:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0x535

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    new-instance v3, Lcom/join/mgps/ptr/header/a$e;

    invoke-direct {v3, p0, v0}, Lcom/join/mgps/ptr/header/a$e;-><init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 12
    iput-object v1, p0, Lcom/join/mgps/ptr/header/a;->l:Landroid/view/animation/Animation;

    .line 13
    iput-object v2, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->n:Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/join/mgps/ptr/header/a;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->n:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 6
    iget v2, p0, Lcom/join/mgps/ptr/header/a;->e:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v2, p1, v0}, Lcom/join/mgps/ptr/header/a$h;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->c()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/ptr/header/a;->k:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/ptr/header/a;->j:D

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
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->r(F)V

    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/a;->m:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->s(I)V

    return-void
.end method

.method public isRunning()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->b:Ljava/util/ArrayList;

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

.method public varargs j([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->w([I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/header/a$h;->v(I)V

    return-void
.end method

.method public k(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->z(F)V

    return-void
.end method

.method l(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/ptr/header/a;->e:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public n(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->B(F)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {p1, p2}, Lcom/join/mgps/ptr/header/a$h;->x(F)V

    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->A(Z)V

    return-void
.end method

.method public r(I)V
    .locals 22

    if-nez p1, :cond_0

    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/join/mgps/ptr/header/a;->m(DDDDFF)V

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
    invoke-direct/range {v11 .. v21}, Lcom/join/mgps/ptr/header/a;->m(DDDDFF)V

    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->p(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0, p1}, Lcom/join/mgps/ptr/header/a$h;->u(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->D()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->e()F

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v1}, Lcom/join/mgps/ptr/header/a$h;->h()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/ptr/header/a;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/a$h;->v(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->o()V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/join/mgps/ptr/header/a;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/ptr/header/a;->l(F)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/a$h;->A(Z)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/header/a$h;->v(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ptr/header/a;->c:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/header/a$h;->o()V

    return-void
.end method
