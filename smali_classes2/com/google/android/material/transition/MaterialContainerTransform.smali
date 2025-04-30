.class public final Lcom/google/android/material/transition/MaterialContainerTransform;
.super Landroidx/transition/Transition;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/MaterialContainerTransform$d;,
        Lcom/google/android/material/transition/MaterialContainerTransform$c;,
        Lcom/google/android/material/transition/MaterialContainerTransform$e;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field public static final T0:I = 0x0

.field public static final U0:I = 0x1

.field public static final V0:I = 0x2

.field public static final W0:I = 0x0

.field public static final X0:I = 0x1

.field public static final Y0:I = 0x2

.field public static final Z0:I = 0x3

.field public static final a1:I = 0x0

.field public static final b1:I = 0x1

.field public static final c1:I = 0x2

.field private static final d1:Ljava/lang/String;

.field private static final e1:Ljava/lang/String; = "materialContainerTransition:bounds"

.field private static final f1:Ljava/lang/String; = "materialContainerTransition:shapeAppearance"

.field private static final g1:[Ljava/lang/String;

.field private static final h1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field private static final i1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field private static final j1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field private static final k1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

.field private static final l1:F = -1.0f


# instance fields
.field private A0:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private B0:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private C0:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private D0:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private E0:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private F0:I

.field private G0:I

.field private H0:I

.field private I0:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private J0:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private K0:Lcom/google/android/material/shape/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private L0:Lcom/google/android/material/shape/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private M0:Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private N0:Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private O0:Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private P0:Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Q0:Z

.field private R0:F

.field private S0:F

.field private u0:Z

.field private v0:Z

.field private w0:Z

.field private x0:Z

.field private y0:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private z0:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    const-class v0, Lcom/google/android/material/transition/MaterialContainerTransform;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->d1:Ljava/lang/String;

    const-string v0, "materialContainerTransition:bounds"

    const-string v1, "materialContainerTransition:shapeAppearance"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->g1:[Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v2, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const/4 v7, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v2, v7, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v4, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v5, v7, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->h1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    .line 4
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v10, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v11, v7, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v13, v3, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->i1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    .line 5
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v3, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v5, v4, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v6, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v6, v4, v8}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v8, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v8, v4, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    const/16 v20, 0x0

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v20}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->j1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    .line 6
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    new-instance v10, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v11, v7, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v13, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$c;-><init>(FF)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    sput-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->k1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->u0:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->v0:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->w0:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->x0:Z

    const v1, 0x1020002

    .line 6
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->y0:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->z0:I

    .line 8
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->A0:I

    .line 9
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->B0:I

    .line 10
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->C0:I

    .line 11
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->D0:I

    const/high16 v1, 0x52000000

    .line 12
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->E0:I

    .line 13
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->F0:I

    .line 14
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->G0:I

    .line 15
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->H0:I

    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->Q0:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 17
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->R0:F

    .line 18
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->S0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->u0:Z

    .line 21
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->v0:Z

    .line 22
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->w0:Z

    .line 23
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->x0:Z

    const v1, 0x1020002

    .line 24
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->y0:I

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->z0:I

    .line 26
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->A0:I

    .line 27
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->B0:I

    .line 28
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->C0:I

    .line 29
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->D0:I

    const/high16 v1, 0x52000000

    .line 30
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->E0:I

    .line 31
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->F0:I

    .line 32
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->G0:I

    .line 33
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->H0:I

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->Q0:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->R0:F

    .line 36
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->S0:F

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transition/MaterialContainerTransform;->o0(Landroid/content/Context;Z)V

    .line 38
    iput-boolean v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->x0:Z

    return-void
.end method

.method static synthetic H(Lcom/google/android/material/transition/MaterialContainerTransform;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->v0:Z

    return p0
.end method

.method private I(Z)Lcom/google/android/material/transition/MaterialContainerTransform$d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/transition/ArcMotion;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/android/material/transition/k;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->h1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    sget-object v1, Lcom/google/android/material/transition/MaterialContainerTransform;->i1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->h0(ZLcom/google/android/material/transition/MaterialContainerTransform$d;Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$d;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->j1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    sget-object v1, Lcom/google/android/material/transition/MaterialContainerTransform;->k1:Lcom/google/android/material/transition/MaterialContainerTransform$d;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform;->h0(ZLcom/google/android/material/transition/MaterialContainerTransform$d;Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$d;

    move-result-object p1

    return-object p1
.end method

.method private static J(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/transition/r;->g(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method private static K(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/m;)Lcom/google/android/material/shape/m;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/material/transition/MaterialContainerTransform;->a0(Landroid/view/View;Lcom/google/android/material/shape/m;)Lcom/google/android/material/shape/m;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/material/transition/r;->b(Lcom/google/android/material/shape/m;Landroid/graphics/RectF;)Lcom/google/android/material/shape/m;

    move-result-object p0

    return-object p0
.end method

.method private static L(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/m;)V
    .locals 2
    .param p0    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/google/android/material/transition/r;->f(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget p2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 5
    iget-object v0, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 6
    iput-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 8
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_5

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/google/android/material/transition/r;->h(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/google/android/material/transition/r;->g(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    .line 10
    :goto_1
    iget-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "materialContainerTransition:bounds"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 12
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/MaterialContainerTransform;->K(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/m;)Lcom/google/android/material/shape/m;

    move-result-object p1

    const-string p2, "materialContainerTransition:shapeAppearance"

    .line 13
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private static O(FLandroid/view/View;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static a0(Landroid/view/View;Lcom/google/android/material/shape/m;)Lcom/google/android/material/shape/m;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    sget p1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/shape/m;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/shape/m;

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/material/transition/MaterialContainerTransform;->j0(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x0

    .line 5
    invoke-static {p1, v0, p0}, Lcom/google/android/material/shape/m;->b(Landroid/content/Context;II)Lcom/google/android/material/shape/m$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/m$b;->m()Lcom/google/android/material/shape/m;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    instance-of p1, p0, Lcom/google/android/material/shape/q;

    if-eqz p1, :cond_3

    .line 7
    check-cast p0, Lcom/google/android/material/shape/q;

    invoke-interface {p0}, Lcom/google/android/material/shape/q;->getShapeAppearanceModel()Lcom/google/android/material/shape/m;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    invoke-static {}, Lcom/google/android/material/shape/m;->a()Lcom/google/android/material/shape/m$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/shape/m$b;->m()Lcom/google/android/material/shape/m;

    move-result-object p0

    return-object p0
.end method

.method private h0(ZLcom/google/android/material/transition/MaterialContainerTransform$d;Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$d;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 1
    :goto_0
    new-instance p1, Lcom/google/android/material/transition/MaterialContainerTransform$d;

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->M0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    .line 2
    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->a(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/transition/r;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->N0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    .line 3
    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->b(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/transition/r;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->O0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    .line 4
    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->c(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/transition/r;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->P0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    .line 5
    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$d;->d(Lcom/google/android/material/transition/MaterialContainerTransform$d;)Lcom/google/android/material/transition/MaterialContainerTransform$c;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/android/material/transition/r;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/google/android/material/transition/MaterialContainerTransform$c;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$d;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$c;Lcom/google/android/material/transition/MaterialContainerTransform$a;)V

    return-object p1
.end method

.method private static j0(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sget v1, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private m0(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->F0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid transition direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->F0:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v2

    .line 3
    :cond_2
    invoke-static {p2}, Lcom/google/android/material/transition/r;->a(Landroid/graphics/RectF;)F

    move-result p2

    invoke-static {p1}, Lcom/google/android/material/transition/r;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private o0(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v1, Lcom/google/android/material/animation/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/transition/r;->r(Landroidx/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    if-eqz p2, :cond_0

    .line 2
    sget p2, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/google/android/material/R$attr;->motionDurationMedium2:I

    .line 3
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/transition/r;->q(Landroidx/transition/Transition;Landroid/content/Context;I)Z

    .line 4
    iget-boolean p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->w0:Z

    if-nez p2, :cond_1

    .line 5
    sget p2, Lcom/google/android/material/R$attr;->motionPath:I

    invoke-static {p0, p1, p2}, Lcom/google/android/material/transition/r;->s(Landroidx/transition/Transition;Landroid/content/Context;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public A0(Lcom/google/android/material/transition/MaterialContainerTransform$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->M0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-void
.end method

.method public B0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->H0:I

    return-void
.end method

.method public C0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->v0:Z

    return-void
.end method

.method public D0(Lcom/google/android/material/transition/MaterialContainerTransform$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->O0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-void
.end method

.method public E0(Lcom/google/android/material/transition/MaterialContainerTransform$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->N0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-void
.end method

.method public F0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->E0:I

    return-void
.end method

.method public G0(Lcom/google/android/material/transition/MaterialContainerTransform$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/transition/MaterialContainerTransform$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->P0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-void
.end method

.method public H0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->C0:I

    return-void
.end method

.method public I0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->R0:F

    return-void
.end method

.method public J0(Lcom/google/android/material/shape/m;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->K0:Lcom/google/android/material/shape/m;

    return-void
.end method

.method public K0(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->I0:Landroid/view/View;

    return-void
.end method

.method public L0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->z0:I

    return-void
.end method

.method public M()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->B0:I

    return v0
.end method

.method public M0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->F0:I

    return-void
.end method

.method public N()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->y0:I

    return v0
.end method

.method public P()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->D0:I

    return v0
.end method

.method public Q()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->S0:F

    return v0
.end method

.method public R()Lcom/google/android/material/shape/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->L0:Lcom/google/android/material/shape/m;

    return-object v0
.end method

.method public S()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->J0:Landroid/view/View;

    return-object v0
.end method

.method public T()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->A0:I

    return v0
.end method

.method public U()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->G0:I

    return v0
.end method

.method public V()Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->M0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-object v0
.end method

.method public W()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->H0:I

    return v0
.end method

.method public X()Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->O0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-object v0
.end method

.method public Y()Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->N0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-object v0
.end method

.method public Z()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->E0:I

    return v0
.end method

.method public b0()Lcom/google/android/material/transition/MaterialContainerTransform$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->P0:Lcom/google/android/material/transition/MaterialContainerTransform$c;

    return-object v0
.end method

.method public c0()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->C0:I

    return v0
.end method

.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->J0:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->A0:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->L0:Lcom/google/android/material/shape/m;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->L(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/m;)V

    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 3
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->I0:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->z0:I

    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->K0:Lcom/google/android/material/shape/m;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform;->L(Landroidx/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/m;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 29
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/graphics/RectF;

    .line 2
    iget-object v3, v0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "materialContainerTransition:shapeAppearance"

    .line 3
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/material/shape/m;

    if-eqz v10, :cond_6

    if-nez v11, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v3, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/RectF;

    .line 5
    iget-object v3, v1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/material/shape/m;

    if-eqz v14, :cond_6

    if-nez v15, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    iget-object v4, v0, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 8
    iget-object v5, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 9
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 10
    :goto_0
    iget v1, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->y0:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, v1

    move-object v1, v0

    goto :goto_1

    .line 12
    :cond_4
    iget v1, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->y0:I

    invoke-static {v0, v1}, Lcom/google/android/material/transition/r;->e(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v28, v2

    move-object v2, v1

    move-object/from16 v1, v28

    .line 13
    :goto_1
    invoke-static {v2}, Lcom/google/android/material/transition/r;->g(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v3

    .line 14
    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    .line 15
    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    .line 16
    invoke-static {v2, v1, v7, v3}, Lcom/google/android/material/transition/MaterialContainerTransform;->J(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v1

    .line 17
    invoke-virtual {v10, v7, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 18
    invoke-virtual {v14, v7, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 19
    invoke-direct {v6, v10, v14}, Lcom/google/android/material/transition/MaterialContainerTransform;->m0(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    .line 20
    iget-boolean v7, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->x0:Z

    if-nez v7, :cond_5

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0, v3}, Lcom/google/android/material/transition/MaterialContainerTransform;->o0(Landroid/content/Context;Z)V

    .line 22
    :cond_5
    new-instance v0, Lcom/google/android/material/transition/MaterialContainerTransform$e;

    move-object v7, v0

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v8

    iget v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->R0:F

    .line 24
    invoke-static {v9, v4}, Lcom/google/android/material/transition/MaterialContainerTransform;->O(FLandroid/view/View;)F

    move-result v12

    iget v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->S0:F

    .line 25
    invoke-static {v9, v5}, Lcom/google/android/material/transition/MaterialContainerTransform;->O(FLandroid/view/View;)F

    move-result v16

    iget v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->B0:I

    move/from16 v17, v9

    iget v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->C0:I

    move/from16 v18, v9

    iget v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->D0:I

    move/from16 v19, v9

    iget v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->E0:I

    move/from16 v20, v9

    iget-boolean v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->Q0:Z

    move/from16 v22, v9

    iget v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->G0:I

    .line 26
    invoke-static {v9, v3}, Lcom/google/android/material/transition/b;->a(IZ)Lcom/google/android/material/transition/a;

    move-result-object v23

    iget v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->H0:I

    .line 27
    invoke-static {v9, v3, v10, v14}, Lcom/google/android/material/transition/g;->a(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/f;

    move-result-object v24

    .line 28
    invoke-direct {v6, v3}, Lcom/google/android/material/transition/MaterialContainerTransform;->I(Z)Lcom/google/android/material/transition/MaterialContainerTransform$d;

    move-result-object v25

    iget-boolean v9, v6, Lcom/google/android/material/transition/MaterialContainerTransform;->u0:Z

    move/from16 v26, v9

    const/16 v27, 0x0

    move-object v9, v4

    move-object v13, v5

    move/from16 v21, v3

    invoke-direct/range {v7 .. v27}, Lcom/google/android/material/transition/MaterialContainerTransform$e;-><init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/m;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/m;FIIIIZZLcom/google/android/material/transition/a;Lcom/google/android/material/transition/f;Lcom/google/android/material/transition/MaterialContainerTransform$d;ZLcom/google/android/material/transition/MaterialContainerTransform$a;)V

    .line 29
    iget v3, v1, Landroid/graphics/RectF;->left:F

    .line 30
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v7, v1, Landroid/graphics/RectF;->top:F

    .line 31
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v1, Landroid/graphics/RectF;->right:F

    .line 32
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 33
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 34
    invoke-virtual {v0, v3, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 35
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 36
    new-instance v1, Lcom/google/android/material/transition/MaterialContainerTransform$a;

    invoke-direct {v1, v6, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$a;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Lcom/google/android/material/transition/MaterialContainerTransform$e;)V

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    new-instance v8, Lcom/google/android/material/transition/MaterialContainerTransform$b;

    move-object v3, v0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/MaterialContainerTransform$b;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/MaterialContainerTransform$e;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-object v7

    :cond_6
    :goto_2
    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public d0()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->R0:F

    return v0
.end method

.method public e0()Lcom/google/android/material/shape/m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->K0:Lcom/google/android/material/shape/m;

    return-object v0
.end method

.method public f0()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->I0:Landroid/view/View;

    return-object v0
.end method

.method public g0()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->z0:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/material/transition/MaterialContainerTransform;->g1:[Ljava/lang/String;

    return-object v0
.end method

.method public i0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->F0:I

    return v0
.end method

.method public k0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->u0:Z

    return v0
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->Q0:Z

    return v0
.end method

.method public n0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->v0:Z

    return v0
.end method

.method public p0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->B0:I

    .line 2
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->C0:I

    .line 3
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->D0:I

    return-void
.end method

.method public q0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->B0:I

    return-void
.end method

.method public r0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->u0:Z

    return-void
.end method

.method public s0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->y0:I

    return-void
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .locals 0
    .param p1    # Landroidx/transition/PathMotion;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->w0:Z

    return-void
.end method

.method public t0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->Q0:Z

    return-void
.end method

.method public u0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->D0:I

    return-void
.end method

.method public v0(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->S0:F

    return-void
.end method

.method public w0(Lcom/google/android/material/shape/m;)V
    .locals 0
    .param p1    # Lcom/google/android/material/shape/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->L0:Lcom/google/android/material/shape/m;

    return-void
.end method

.method public x0(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->J0:Landroid/view/View;

    return-void
.end method

.method public y0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->A0:I

    return-void
.end method

.method public z0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform;->G0:I

    return-void
.end method
