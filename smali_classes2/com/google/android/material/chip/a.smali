.class public Lcom/google/android/material/chip/a;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "ChipDrawable.java"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/google/android/material/internal/l$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/a$a;
    }
.end annotation


# static fields
.field private static final q1:Z = false

.field private static final r1:[I

.field private static final s1:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"

.field private static final t1:I = 0x18

.field private static final u1:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private A0:Z

.field private B0:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C0:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private D0:Lcom/google/android/material/animation/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private E:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private E0:Lcom/google/android/material/animation/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private F:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private F0:F

.field private G:F

.field private G0:F

.field private H:F

.field private H0:F

.field private I:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private I0:F

.field private J:F

.field private J0:F

.field private K:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private K0:F

.field private L0:F

.field private M0:F

.field private final N0:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final O0:Landroid/graphics/Paint;

.field private final P0:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final Q0:Landroid/graphics/Paint$FontMetrics;

.field private final R0:Landroid/graphics/RectF;

.field private final S0:Landroid/graphics/PointF;

.field private final T0:Landroid/graphics/Path;

.field private final U0:Lcom/google/android/material/internal/l;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private V0:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private W0:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private X0:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private Y0:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private Z0:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private a1:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private b1:Z

.field private c1:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private d1:I

.field private e1:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f1:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g1:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h1:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i1:[I

.field private j1:Z

.field private k1:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l1:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/chip/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private m1:Landroid/text/TextUtils$TruncateAt;

.field private n0:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n1:Z

.field private o0:Z

.field private o1:I

.field private p0:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p1:Z

.field private q0:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r0:F

.field private s0:Z

.field private t0:Z

.field private u0:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v0:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w0:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x0:F

.field private y0:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    .line 1
    sput-object v0, Lcom/google/android/material/chip/a;->r1:[I

    .line 2
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lcom/google/android/material/chip/a;->u1:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 2
    iput p2, p0, Lcom/google/android/material/chip/a;->H:F

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    .line 4
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->Q0:Landroid/graphics/Paint$FontMetrics;

    .line 5
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    .line 6
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->S0:Landroid/graphics/PointF;

    .line 7
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->T0:Landroid/graphics/Path;

    const/16 p2, 0xff

    .line 8
    iput p2, p0, Lcom/google/android/material/chip/a;->d1:I

    .line 9
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/google/android/material/chip/a;->h1:Landroid/graphics/PorterDuff$Mode;

    .line 10
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->l1:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->Z(Landroid/content/Context;)V

    .line 12
    iput-object p1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    .line 13
    new-instance p2, Lcom/google/android/material/internal/l;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/l;-><init>(Lcom/google/android/material/internal/l$b;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/google/android/material/chip/a;->n0:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/material/internal/l;->e()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 16
    iput-object p4, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    .line 17
    sget-object p1, Lcom/google/android/material/chip/a;->r1:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f3([I)Z

    .line 19
    iput-boolean p3, p0, Lcom/google/android/material/chip/a;->n1:Z

    .line 20
    sget-boolean p1, Lcom/google/android/material/ripple/b;->a:Z

    if-eqz p1, :cond_0

    .line 21
    sget-object p1, Lcom/google/android/material/chip/a;->u1:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method private G1()F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->b1:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/android/material/chip/a;->r0:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/google/android/material/internal/w;->e(Landroid/content/Context;I)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    return v1
.end method

.method private H1()F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->b1:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    .line 2
    :goto_0
    iget v1, p0, Lcom/google/android/material/chip/a;->r0:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    return v1
.end method

.method private L3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->A0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->b1:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private M3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->o0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private N3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->t0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private O3(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private P0(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->D1()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->w0:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_3

    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->s0:Z

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q0:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method private P3()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->j1:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/ripple/b;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/a;->k1:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private Q0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->L3()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->F0:F

    iget v1, p0, Lcom/google/android/material/chip/a;->G0:F

    add-float/2addr v0, v1

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->H1()F

    move-result v1

    .line 5
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_1

    .line 6
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    .line 7
    iput v2, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 8
    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    .line 9
    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->G1()F

    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    .line 12
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
    return-void
.end method

.method private Q3()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->N1()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/ripple/b;->d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/google/android/material/chip/a;->u1:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->v0:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private S0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/material/chip/a;->M0:F

    iget v1, p0, Lcom/google/android/material/chip/a;->L0:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->x0:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->K0:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->J0:F

    add-float/2addr v0, v1

    .line 4
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->left:F

    :cond_1
    :goto_0
    return-void
.end method

.method private T0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/material/chip/a;->M0:F

    iget v1, p0, Lcom/google/android/material/chip/a;->L0:F

    add-float/2addr v0, v1

    .line 4
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 6
    iget v0, p0, Lcom/google/android/material/chip/a;->x0:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 8
    iget v0, p0, Lcom/google/android/material/chip/a;->x0:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lcom/google/android/material/chip/a;->x0:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    .line 10
    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private T1()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->e1:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->f1:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    return-object v0
.end method

.method private T2(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->E:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->E:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method private U0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/material/chip/a;->M0:F

    iget v1, p0, Lcom/google/android/material/chip/a;->L0:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->x0:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->K0:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->J0:F

    add-float/2addr v0, v1

    .line 4
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    .line 6
    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 7
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 8
    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 9
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 10
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private static V1([II)Z
    .locals 4
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private W0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->n0:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/material/chip/a;->F0:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->I0:F

    add-float/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/google/android/material/chip/a;->M0:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->V0()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/a;->J0:F

    add-float/2addr v1, v2

    .line 5
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 7
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 8
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 9
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 10
    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 11
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private X0()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->e()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->Q0:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q0:Landroid/graphics/Paint$FontMetrics;

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    return v1
.end method

.method private Z0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->A0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->z0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a1(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/chip/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/chip/a;->i2(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method public static b1(Landroid/content/Context;I)Lcom/google/android/material/chip/a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "chip"

    .line 1
    invoke-static {p0, p1, v0}, La1/a;->a(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Chip_Entry:I

    .line 4
    :cond_0
    sget v1, Lcom/google/android/material/R$attr;->chipStandaloneStyle:I

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/material/chip/a;->a1(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;

    move-result-object p0

    return-object p0
.end method

.method private c1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->L3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->Q0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 3
    iget-object p2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 4
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float p2, p2

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private d1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->W0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->T1()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 6
    iget-object p2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->o1()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->o1()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private e1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->Q0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 3
    iget-object p2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 4
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v0, v0

    neg-float p2, p2

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private f1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->Y0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->T1()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/chip/a;->J:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    add-float/2addr v1, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float v5, v2, v3

    add-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    div-float v6, v2, v3

    sub-float/2addr v5, v6

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr v2, v3

    sub-float/2addr p2, v2

    invoke-virtual {v0, v1, v4, v5, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget p2, p0, Lcom/google/android/material/chip/a;->H:F

    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    .line 8
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private static f2(Landroid/content/res/ColorStateList;)Z
    .locals 0
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private g1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->V0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->o1()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->o1()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private static g2(Landroid/graphics/drawable/Drawable;)Z
    .locals 0
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private h1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->T0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 3
    iget-object p2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 4
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    sget-boolean v1, Lcom/google/android/material/ripple/b;->a:Z

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/google/android/material/chip/a;->v0:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9
    iget-object v1, p0, Lcom/google/android/material/chip/a;->v0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 10
    iget-object v1, p0, Lcom/google/android/material/chip/a;->v0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    neg-float v0, v0

    neg-float p2, p2

    .line 12
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method private static h2(Lcom/google/android/material/resources/d;)Z
    .locals 1
    .param p0    # Lcom/google/android/material/resources/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/resources/d;->i()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/resources/d;->i()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->Z0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-nez v0, :cond_0

    .line 5
    iget-object p2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->o1()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->o1()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->T0:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->h(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 7
    iget-object p2, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/chip/a;->T0:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->v()Landroid/graphics/RectF;

    move-result-object v1

    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method private i2(Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->Chip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/o;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    sget p3, Lcom/google/android/material/R$styleable;->Chip_shapeAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/chip/a;->p1:Z

    .line 4
    iget-object p3, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipSurfaceColor:I

    .line 5
    invoke-static {p3, p2, v0}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/material/chip/a;->T2(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object p3, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget v0, Lcom/google/android/material/R$styleable;->Chip_chipBackgroundColor:I

    .line 8
    invoke-static {p3, p2, v0}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 9
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->v2(Landroid/content/res/ColorStateList;)V

    .line 10
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipMinHeight:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->L2(F)V

    .line 11
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipCornerRadius:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->x2(F)V

    .line 13
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipStrokeColor:I

    .line 14
    invoke-static {p3, p2, v1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 15
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->P2(Landroid/content/res/ColorStateList;)V

    .line 16
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->R2(F)V

    .line 17
    iget-object p3, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget v1, Lcom/google/android/material/R$styleable;->Chip_rippleColor:I

    invoke-static {p3, p2, v1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->t3(Landroid/content/res/ColorStateList;)V

    .line 18
    sget p3, Lcom/google/android/material/R$styleable;->Chip_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->y3(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p3, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_textAppearance:I

    .line 20
    invoke-static {p3, p2, v1}, Lcom/google/android/material/resources/c;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/d;

    move-result-object p3

    .line 21
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_textSize:I

    .line 22
    invoke-virtual {p3}, Lcom/google/android/material/resources/d;->j()F

    move-result v2

    .line 23
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 24
    invoke-virtual {p3, v1}, Lcom/google/android/material/resources/d;->l(F)V

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 26
    iget-object v1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_android_textColor:I

    .line 27
    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 28
    invoke-virtual {p3, v1}, Lcom/google/android/material/resources/d;->k(Landroid/content/res/ColorStateList;)V

    .line 29
    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->z3(Lcom/google/android/material/resources/d;)V

    .line 30
    sget p3, Lcom/google/android/material/R$styleable;->Chip_android_ellipsize:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_4

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    goto :goto_0

    .line 31
    :cond_2
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->l3(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 32
    :cond_3
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->l3(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 33
    :cond_4
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->l3(Landroid/text/TextUtils$TruncateAt;)V

    .line 34
    :goto_0
    sget p3, Lcom/google/android/material/R$styleable;->Chip_chipIconVisible:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->K2(Z)V

    const-string p3, "http://schemas.android.com/apk/res-auto"

    if-eqz p1, :cond_5

    const-string v1, "chipIconEnabled"

    .line 35
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "chipIconVisible"

    .line 36
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 37
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconEnabled:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->K2(Z)V

    .line 38
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_chipIcon:I

    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->B2(Landroid/graphics/drawable/Drawable;)V

    .line 39
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconTint:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 40
    iget-object v2, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    .line 41
    invoke-static {v2, p2, v1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 42
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->H2(Landroid/content/res/ColorStateList;)V

    .line 43
    :cond_6
    sget v1, Lcom/google/android/material/R$styleable;->Chip_chipIconSize:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->F2(F)V

    .line 44
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconVisible:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->j3(Z)V

    if-eqz p1, :cond_7

    const-string v1, "closeIconEnabled"

    .line 45
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "closeIconVisible"

    .line 46
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 47
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconEnabled:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->j3(Z)V

    .line 48
    :cond_7
    iget-object v1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIcon:I

    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->U2(Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Chip_closeIconTint:I

    .line 50
    invoke-static {v1, p2, v2}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->g3(Landroid/content/res/ColorStateList;)V

    .line 52
    sget v1, Lcom/google/android/material/R$styleable;->Chip_closeIconSize:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->b3(F)V

    .line 53
    sget v1, Lcom/google/android/material/R$styleable;->Chip_android_checkable:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->l2(Z)V

    .line 54
    sget v1, Lcom/google/android/material/R$styleable;->Chip_checkedIconVisible:I

    invoke-virtual {p2, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/a;->u2(Z)V

    if-eqz p1, :cond_8

    const-string v1, "checkedIconEnabled"

    .line 55
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "checkedIconVisible"

    .line 56
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 57
    sget p1, Lcom/google/android/material/R$styleable;->Chip_checkedIconEnabled:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->u2(Z)V

    .line 58
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget p3, Lcom/google/android/material/R$styleable;->Chip_checkedIcon:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->n2(Landroid/graphics/drawable/Drawable;)V

    .line 59
    sget p1, Lcom/google/android/material/R$styleable;->Chip_checkedIconTint:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 60
    iget-object p3, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    .line 61
    invoke-static {p3, p2, p1}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->r2(Landroid/content/res/ColorStateList;)V

    .line 63
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget p3, Lcom/google/android/material/R$styleable;->Chip_showMotionSpec:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->w3(Lcom/google/android/material/animation/h;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    sget p3, Lcom/google/android/material/R$styleable;->Chip_hideMotionSpec:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/animation/h;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/animation/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->m3(Lcom/google/android/material/animation/h;)V

    .line 65
    sget p1, Lcom/google/android/material/R$styleable;->Chip_chipStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->N2(F)V

    .line 66
    sget p1, Lcom/google/android/material/R$styleable;->Chip_iconStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->q3(F)V

    .line 67
    sget p1, Lcom/google/android/material/R$styleable;->Chip_iconEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->o3(F)V

    .line 68
    sget p1, Lcom/google/android/material/R$styleable;->Chip_textStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->H3(F)V

    .line 69
    sget p1, Lcom/google/android/material/R$styleable;->Chip_textEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->D3(F)V

    .line 70
    sget p1, Lcom/google/android/material/R$styleable;->Chip_closeIconStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d3(F)V

    .line 71
    sget p1, Lcom/google/android/material/R$styleable;->Chip_closeIconEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->Y2(F)V

    .line 72
    sget p1, Lcom/google/android/material/R$styleable;->Chip_chipEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->z2(F)V

    .line 73
    sget p1, Lcom/google/android/material/R$styleable;->Chip_android_maxWidth:I

    const p3, 0x7fffffff

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->s3(I)V

    .line 74
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private j1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    .line 2
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->L3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->Q0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->n0:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 8
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    move-object v3, p1

    .line 10
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->T0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->S0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->U0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 19
    iget-object p2, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/chip/a;->P0:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private k1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->n0:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S0:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/chip/a;->Y0(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/chip/a;->W0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 4
    iget-object p2, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    invoke-virtual {p2}, Lcom/google/android/material/internal/l;->d()Lcom/google/android/material/resources/d;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    invoke-virtual {p2}, Lcom/google/android/material/internal/l;->e()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iput-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    iget-object p2, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/l;->k(Landroid/content/Context;)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    invoke-virtual {p2}, Lcom/google/android/material/internal/l;->e()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 8
    iget-object p2, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->P1()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/l;->f(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 12
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->n0:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    .line 14
    iget-object v2, p0, Lcom/google/android/material/chip/a;->m1:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_3

    .line 15
    iget-object v2, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/material/internal/l;->e()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->R0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/chip/a;->m1:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    .line 17
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/material/chip/a;->S0:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->e()Landroid/text/TextPaint;

    move-result-object v8

    move-object v2, p1

    .line 18
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_4

    .line 19
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method private k2([I[I)Z
    .locals 6
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/chip/a;->E:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget v3, p0, Lcom/google/android/material/chip/a;->V0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->l(I)I

    move-result v1

    .line 5
    iget v3, p0, Lcom/google/android/material/chip/a;->V0:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 6
    iput v1, p0, Lcom/google/android/material/chip/a;->V0:I

    const/4 v0, 0x1

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/a;->F:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 8
    iget v5, p0, Lcom/google/android/material/chip/a;->W0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 9
    :goto_1
    invoke-virtual {p0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->l(I)I

    move-result v3

    .line 10
    iget v5, p0, Lcom/google/android/material/chip/a;->W0:I

    if-eq v5, v3, :cond_3

    .line 11
    iput v3, p0, Lcom/google/android/material/chip/a;->W0:I

    const/4 v0, 0x1

    .line 12
    :cond_3
    invoke-static {v1, v3}, Lcom/google/android/material/color/m;->l(II)I

    move-result v1

    .line 13
    iget v3, p0, Lcom/google/android/material/chip/a;->X0:I

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->y()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 15
    iput v1, p0, Lcom/google/android/material/chip/a;->X0:I

    .line 16
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->o0(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    .line 18
    iget v3, p0, Lcom/google/android/material/chip/a;->Y0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 19
    :goto_4
    iget v3, p0, Lcom/google/android/material/chip/a;->Y0:I

    if-eq v3, v1, :cond_8

    .line 20
    iput v1, p0, Lcom/google/android/material/chip/a;->Y0:I

    const/4 v0, 0x1

    .line 21
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/chip/a;->k1:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    invoke-static {p1}, Lcom/google/android/material/ripple/b;->e([I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 22
    iget-object v1, p0, Lcom/google/android/material/chip/a;->k1:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->Z0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 23
    :goto_5
    iget v3, p0, Lcom/google/android/material/chip/a;->Z0:I

    if-eq v3, v1, :cond_a

    .line 24
    iput v1, p0, Lcom/google/android/material/chip/a;->Z0:I

    .line 25
    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->j1:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 26
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/material/internal/l;->d()Lcom/google/android/material/resources/d;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    .line 28
    invoke-virtual {v1}, Lcom/google/android/material/internal/l;->d()Lcom/google/android/material/resources/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/resources/d;->i()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 29
    iget-object v1, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    .line 30
    invoke-virtual {v1}, Lcom/google/android/material/internal/l;->d()Lcom/google/android/material/resources/d;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/material/resources/d;->i()Landroid/content/res/ColorStateList;

    move-result-object v1

    iget v3, p0, Lcom/google/android/material/chip/a;->a1:I

    .line 32
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 33
    :goto_6
    iget v3, p0, Lcom/google/android/material/chip/a;->a1:I

    if-eq v3, v1, :cond_c

    .line 34
    iput v1, p0, Lcom/google/android/material/chip/a;->a1:I

    const/4 v0, 0x1

    .line 35
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    invoke-static {v1, v3}, Lcom/google/android/material/chip/a;->V1([II)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->z0:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    .line 36
    :goto_7
    iget-boolean v3, p0, Lcom/google/android/material/chip/a;->b1:Z

    if-eq v3, v1, :cond_f

    iget-object v3, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    .line 37
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v0

    .line 38
    iput-boolean v1, p0, Lcom/google/android/material/chip/a;->b1:Z

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x1

    :cond_f
    const/4 v1, 0x0

    .line 40
    :goto_8
    iget-object v3, p0, Lcom/google/android/material/chip/a;->g1:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_10

    iget v5, p0, Lcom/google/android/material/chip/a;->c1:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    .line 41
    :goto_9
    iget v5, p0, Lcom/google/android/material/chip/a;->c1:I

    if-eq v5, v3, :cond_11

    .line 42
    iput v3, p0, Lcom/google/android/material/chip/a;->c1:I

    .line 43
    iget-object v0, p0, Lcom/google/android/material/chip/a;->g1:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->h1:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, La1/a;->c(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/a;->f1:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_a

    :cond_11
    move v4, v0

    .line 44
    :goto_a
    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->g2(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 46
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->g2(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 47
    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    .line 48
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->g2(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 49
    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    .line 50
    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object p1, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    .line 53
    :cond_14
    sget-boolean p1, Lcom/google/android/material/ripple/b;->a:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/material/chip/a;->v0:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/a;->g2(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 54
    iget-object p1, p0, Lcom/google/android/material/chip/a;->v0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_15
    if-eqz v4, :cond_16

    .line 55
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_16
    if-eqz v1, :cond_17

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_17
    return v4
.end method


# virtual methods
.method public A1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->L0:F

    return v0
.end method

.method public A2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->z2(F)V

    return-void
.end method

.method public A3(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/material/resources/d;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->z3(Lcom/google/android/material/resources/d;)V

    return-void
.end method

.method public B1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->x0:F

    return v0
.end method

.method public B2(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->q1()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result p1

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->O3(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->P0(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_2
    return-void
.end method

.method public B3(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->C3(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public C1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->K0:F

    return v0
.end method

.method public C2(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->K2(Z)V

    return-void
.end method

.method public C3(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->Q1()Lcom/google/android/material/resources/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/d;->k(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public D1()[I
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->i1:[I

    return-object v0
.end method

.method public D2(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->J2(I)V

    return-void
.end method

.method public D3(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->J0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->J0:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public E1()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->w0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public E2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->B2(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public E3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->D3(F)V

    return-void
.end method

.method public F1(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->U0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public F2(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->r0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v0

    .line 3
    iput p1, p0, Lcom/google/android/material/chip/a;->r0:F

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public F3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->y3(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public G2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->F2(F)V

    return-void
.end method

.method public G3(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->Q1()Lcom/google/android/material/resources/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/resources/d;->l(F)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->e()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a()V

    :cond_0
    return-void
.end method

.method public H2(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/material/chip/a;->s0:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 3
    iput-object p1, p0, Lcom/google/android/material/chip/a;->q0:Landroid/content/res/ColorStateList;

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public H3(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->I0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->I0:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public I1()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->m1:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public I2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->H2(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public I3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->H3(F)V

    return-void
.end method

.method public J1()Lcom/google/android/material/animation/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->E0:Lcom/google/android/material/animation/h;

    return-object v0
.end method

.method public J2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->K2(Z)V

    return-void
.end method

.method public J3(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->j1:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->j1:Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->P3()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public K1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->H0:F

    return v0
.end method

.method public K2(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->o0:Z

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->o0:Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->P0(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->O3(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_2
    return-void
.end method

.method K3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->n1:Z

    return v0
.end method

.method public L1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->G0:F

    return v0
.end method

.method public L2(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->G:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public M1()I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->o1:I

    return v0
.end method

.method public M2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->L2(F)V

    return-void
.end method

.method public N1()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public N2(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->F0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->F0:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public O1()Lcom/google/android/material/animation/h;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D0:Lcom/google/android/material/animation/h;

    return-object v0
.end method

.method public O2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->N2(F)V

    return-void
.end method

.method public P1()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->n0:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public P2(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/res/ColorStateList;

    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->F0(Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public Q1()Lcom/google/android/material/resources/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->d()Lcom/google/android/material/resources/d;

    move-result-object v0

    return-object v0
.end method

.method public Q2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->P2(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method R0()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->L3()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/a;->G0:F

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->H1()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->H0:F

    add-float/2addr v0, v1

    return v0
.end method

.method public R1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->J0:F

    return v0
.end method

.method public R2(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->J:F

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->I0(F)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public S1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->I0:F

    return v0
.end method

.method public S2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->R2(F)V

    return-void
.end method

.method public U1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->j1:Z

    return v0
.end method

.method public U2(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->y1()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->V0()F

    move-result v1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    .line 4
    sget-boolean p1, Lcom/google/android/material/ripple/b;->a:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Q3()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->V0()F

    move-result p1

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->O3(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->P0(Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_3
    return-void
.end method

.method V0()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/material/chip/a;->K0:F

    iget v1, p0, Lcom/google/android/material/chip/a;->x0:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->L0:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public V2(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->y0:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 2
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->y0:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public W1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->z0:Z

    return v0
.end method

.method public W2(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->j3(Z)V

    return-void
.end method

.method public X1()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->Y1()Z

    move-result v0

    return v0
.end method

.method public X2(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->i3(I)V

    return-void
.end method

.method Y0(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 2
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/a;->n0:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 4
    iget v0, p0, Lcom/google/android/material/chip/a;->F0:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->I0:F

    add-float/2addr v0, v1

    .line 5
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 7
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 8
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 9
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->X0()F

    move-result v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/PointF;->y:F

    :cond_1
    return-object v0
.end method

.method public Y1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->A0:Z

    return v0
.end method

.method public Y2(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->L0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->L0:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public Z1()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->a2()Z

    move-result v0

    return v0
.end method

.method public Z2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->Y2(F)V

    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    return-void
.end method

.method public a2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->o0:Z

    return v0
.end method

.method public a3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->U2(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b2()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d2()Z

    move-result v0

    return v0
.end method

.method public b3(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->x0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->x0:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public c2()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->g2(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public c3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b3(F)V

    return-void
.end method

.method public d2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->t0:Z

    return v0
.end method

.method public d3(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->K0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->K0:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iget v7, p0, Lcom/google/android/material/chip/a;->d1:I

    const/16 v8, 0xff

    if-ge v7, v8, :cond_1

    .line 4
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    move-object v2, p1

    .line 5
    invoke-static/range {v2 .. v7}, Lz0/a;->a(Landroid/graphics/Canvas;FFFFI)I

    move-result v1

    .line 6
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->g1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->d1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 8
    iget-boolean v2, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-eqz v2, :cond_2

    .line 9
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->f1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->i1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->e1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->c1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 14
    iget-boolean v2, p0, Lcom/google/android/material/chip/a;->n1:Z

    if-eqz v2, :cond_3

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->k1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 16
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->h1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->j1(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 18
    iget v0, p0, Lcom/google/android/material/chip/a;->d1:I

    if-ge v0, v8, :cond_4

    .line 19
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method e2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    return v0
.end method

.method public e3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d3(F)V

    return-void
.end method

.method public f3([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->i1:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->i1:[I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->k2([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g3(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->w0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->w0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->d1:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->e1:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->F0:F

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->I0:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->P1()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/l;->f(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->J0:F

    add-float/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->V0()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->M0:F

    add-float/2addr v0, v1

    .line 5
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/google/android/material/chip/a;->o1:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/chip/a;->H:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public h3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g3(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public i3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->j3(Z)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->E:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->f2(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->F:Landroid/content/res/ColorStateList;

    .line 2
    invoke-static {v0}, Lcom/google/android/material/chip/a;->f2(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/res/ColorStateList;

    .line 3
    invoke-static {v0}, Lcom/google/android/material/chip/a;->f2(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->j1:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->k1:Landroid/content/res/ColorStateList;

    .line 4
    invoke-static {v0}, Lcom/google/android/material/chip/a;->f2(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/internal/l;->d()Lcom/google/android/material/resources/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/chip/a;->h2(Lcom/google/android/material/resources/d;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {v0}, Lcom/google/android/material/chip/a;->g2(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-static {v0}, Lcom/google/android/material/chip/a;->g2(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->g1:Landroid/content/res/ColorStateList;

    .line 9
    invoke-static {v0}, Lcom/google/android/material/chip/a;->f2(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected j2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/a$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/material/chip/a$a;->a()V

    :cond_0
    return-void
.end method

.method public j3(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->t0:Z

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->t0:Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->P0(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->O3(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_2
    return-void
.end method

.method public k3(Lcom/google/android/material/chip/a$a;)V
    .locals 1
    .param p1    # Lcom/google/android/material/chip/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->l1:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public l1()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public l2(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->z0:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->z0:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v0

    if-nez p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lcom/google/android/material/chip/a;->b1:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->b1:Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result p1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_1
    return-void
.end method

.method public l3(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/a;->m1:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public m1()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->C0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public m2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->l2(Z)V

    return-void
.end method

.method public m3(Lcom/google/android/material/animation/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/a;->E0:Lcom/google/android/material/animation/h;

    return-void
.end method

.method public n1()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->F:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public n2(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v0

    .line 3
    iput-object p1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->O3(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->P0(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public n3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/animation/h;->d(Landroid/content/Context;I)Lcom/google/android/material/animation/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->m3(Lcom/google/android/material/animation/h;)V

    return-void
.end method

.method public o1()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->S()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    :goto_0
    return v0
.end method

.method public o2(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->u2(Z)V

    return-void
.end method

.method public o3(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->H0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v0

    .line 3
    iput p1, p0, Lcom/google/android/material/chip/a;->H0:F

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->L3()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->L3()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public onStateChange([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->D1()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->k2([I[I)Z

    move-result p1

    return p1
.end method

.method public p1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->M0:F

    return v0
.end method

.method public p2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->u2(Z)V

    return-void
.end method

.method public p3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->o3(F)V

    return-void
.end method

.method public q1()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public q2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->n2(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public q3(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->G0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result v0

    .line 3
    iput p1, p0, Lcom/google/android/material/chip/a;->G0:F

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->R0()F

    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public r1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->r0:F

    return v0
.end method

.method public r2(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->C0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->C0:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->Z0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public r3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->q3(F)V

    return-void
.end method

.method public s1()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q0:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public s2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->r2(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public s3(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/chip/a;->o1:I

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->d1:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->d1:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->e1:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->e1:Landroid/graphics/ColorFilter;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->g1:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->g1:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->h1:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->h1:Landroid/graphics/PorterDuff$Mode;

    .line 3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->g1:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, La1/a;->c(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->f1:Landroid/graphics/PorterDuffColorFilter;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->M3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/chip/a;->p0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->L3()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->N3()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public t1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    return v0
.end method

.method public t2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->u2(Z)V

    return-void
.end method

.method public t3(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->K:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->P3()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public u1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->F0:F

    return v0
.end method

.method public u2(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->A0:Z

    if-eq v0, p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->L3()Z

    move-result v0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->A0:Z

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->L3()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->P0(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->B0:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->O3(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_2
    return-void
.end method

.method public u3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->t3(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public v1()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->I:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public v2(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->F:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->F:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method v3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->n1:Z

    return-void
.end method

.method public w1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    return v0
.end method

.method public w2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->v2(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public w3(Lcom/google/android/material/animation/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/animation/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/chip/a;->D0:Lcom/google/android/material/animation/h;

    return-void
.end method

.method public x1(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->S0(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public x2(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->H:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/m;->w(F)Lcom/google/android/material/shape/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/m;)V

    :cond_0
    return-void
.end method

.method public x3(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/animation/h;->d(Landroid/content/Context;I)Lcom/google/android/material/animation/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->w3(Lcom/google/android/material/animation/h;)V

    return-void
.end method

.method public y1()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->u0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public y2(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->x2(F)V

    return-void
.end method

.method public y3(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->n0:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/google/android/material/chip/a;->n0:Ljava/lang/CharSequence;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/l;->j(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_1
    return-void
.end method

.method public z1()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->y0:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public z2(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/chip/a;->M0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/chip/a;->M0:F

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j2()V

    :cond_0
    return-void
.end method

.method public z3(Lcom/google/android/material/resources/d;)V
    .locals 2
    .param p1    # Lcom/google/android/material/resources/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->U0:Lcom/google/android/material/internal/l;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->N0:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/l;->i(Lcom/google/android/material/resources/d;Landroid/content/Context;)V

    return-void
.end method
