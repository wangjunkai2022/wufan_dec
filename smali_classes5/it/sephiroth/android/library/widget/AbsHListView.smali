.class public abstract Lit/sephiroth/android/library/widget/AbsHListView;
.super Lit/sephiroth/android/library/widget/AdapterView;
.source "AbsHListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/widget/AbsHListView$l;,
        Lit/sephiroth/android/library/widget/AbsHListView$m;,
        Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;,
        Lit/sephiroth/android/library/widget/AbsHListView$c;,
        Lit/sephiroth/android/library/widget/AbsHListView$k;,
        Lit/sephiroth/android/library/widget/AbsHListView$g;,
        Lit/sephiroth/android/library/widget/AbsHListView$f;,
        Lit/sephiroth/android/library/widget/AbsHListView$d;,
        Lit/sephiroth/android/library/widget/AbsHListView$e;,
        Lit/sephiroth/android/library/widget/AbsHListView$j;,
        Lit/sephiroth/android/library/widget/AbsHListView$o;,
        Lit/sephiroth/android/library/widget/AbsHListView$h;,
        Lit/sephiroth/android/library/widget/AbsHListView$SavedState;,
        Lit/sephiroth/android/library/widget/AbsHListView$n;,
        Lit/sephiroth/android/library/widget/AbsHListView$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/AdapterView<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final Q1:Ljava/lang/String; = "AbsListView"

.field public static final R1:I = 0x0

.field public static final S1:I = 0x1

.field public static final T1:I = 0x2

.field public static final U1:I = -0x1

.field public static final V1:I = 0x0

.field public static final W1:I = 0x1

.field public static final X1:I = 0x2

.field public static final Y1:I = 0x3

.field public static final Z1:I = 0x4

.field public static final a2:I = 0x5

.field public static final b2:I = 0x6

.field public static final c2:I = 0x0

.field public static final d2:I = 0x1

.field public static final e2:I = 0x2

.field public static final f2:I = 0x3

.field public static final g2:I = 0x4

.field public static final h2:I = 0x5

.field public static final i2:I = 0x6

.field protected static final j2:I = 0x3

.field private static final k2:I = 0x14

.field private static final l2:I = -0x1

.field private static final m2:I = 0x0

.field private static final n2:I = 0x1

.field private static final o2:I = -0x1

.field static final p2:Landroid/view/animation/Interpolator;

.field public static final q2:[I


# instance fields
.field protected A0:Landroid/graphics/Rect;

.field A1:I

.field protected final B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

.field private B1:Landroidx/core/widget/EdgeEffectCompat;

.field C0:I

.field private C1:Landroidx/core/widget/EdgeEffectCompat;

.field D0:I

.field private D1:I

.field E0:I

.field private E1:I

.field F0:I

.field private F1:I

.field protected G0:Landroid/graphics/Rect;

.field private G1:Z

.field protected H0:I

.field private H1:I

.field I0:Landroid/view/View;

.field private I1:I

.field J0:Landroid/view/View;

.field private J1:Lit/sephiroth/android/library/widget/AbsHListView$h;

.field K:Lit/sephiroth/android/library/util/b$a;

.field protected K0:Z

.field private K1:I

.field protected L0:Z

.field private L1:I

.field protected M0:I

.field protected M1:Z

.field N0:I

.field private N1:I

.field O0:I

.field private O1:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

.field P0:I

.field private P1:F

.field Q0:I

.field protected R0:I

.field S0:I

.field T0:I

.field private U0:Landroid/view/VelocityTracker;

.field private V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

.field protected W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

.field protected X0:I

.field protected Y0:Z

.field Z0:Z

.field a1:Z

.field private b1:Lit/sephiroth/android/library/widget/AbsHListView$i;

.field private c1:Z

.field private d1:Landroid/graphics/Rect;

.field protected e1:I

.field private f1:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected g1:I

.field private h1:I

.field private i1:Lit/sephiroth/android/library/widget/AbsHListView$e;

.field private j1:Ljava/lang/Runnable;

.field private k1:Lit/sephiroth/android/library/widget/AbsHListView$d;

.field private l1:Lit/sephiroth/android/library/widget/AbsHListView$j;

.field private m1:Ljava/lang/Runnable;

.field protected n0:I

.field private n1:I

.field public o0:Ljava/lang/Object;

.field private o1:I

.field p0:Ljava/lang/Object;

.field private p1:Z

.field q0:I

.field private q1:I

.field protected r0:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private r1:I

.field s0:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s1:Ljava/lang/Runnable;

.field protected t0:I

.field protected t1:Ljava/lang/Runnable;

.field protected u0:Lit/sephiroth/android/library/widget/AbsHListView$c;

.field private u1:I

.field protected v0:Landroid/widget/ListAdapter;

.field private v1:I

.field w0:Z

.field private w1:F

.field x0:Z

.field protected final x1:[Z

.field y0:Landroid/graphics/drawable/Drawable;

.field private y1:I

.field z0:I

.field z1:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->p2:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 2
    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->q2:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    .line 3
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    .line 4
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x0:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z0:I

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A0:Landroid/graphics/Rect;

    .line 7
    new-instance v1, Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-direct {v1, p0}, Lit/sephiroth/android/library/widget/AbsHListView$l;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 8
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C0:I

    .line 9
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D0:I

    .line 10
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E0:I

    .line 11
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F0:I

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    .line 13
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H0:I

    .line 14
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 15
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->X0:I

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c1:Z

    .line 17
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 19
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h1:I

    .line 20
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q1:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 21
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w1:F

    new-array v1, v1, [Z

    .line 22
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x1:[Z

    .line 23
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    .line 24
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F1:I

    .line 25
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04025f

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    .line 29
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    .line 30
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x0:Z

    const/4 v1, -0x1

    .line 31
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z0:I

    .line 32
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A0:Landroid/graphics/Rect;

    .line 33
    new-instance v2, Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-direct {v2, p0}, Lit/sephiroth/android/library/widget/AbsHListView$l;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    .line 34
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C0:I

    .line 35
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D0:I

    .line 36
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E0:I

    .line 37
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F0:I

    .line 38
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    .line 39
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H0:I

    .line 40
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 41
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->X0:I

    const/4 v2, 0x1

    .line 42
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c1:Z

    .line 43
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    const/4 v3, 0x0

    .line 44
    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 45
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h1:I

    .line 46
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q1:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 47
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w1:F

    new-array v4, v2, [Z

    .line 48
    iput-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x1:[Z

    .line 49
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    .line 50
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F1:I

    .line 51
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e0()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 53
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->AbsHListView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 55
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 p3, 0x6

    .line 56
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/4 v1, 0x2

    .line 57
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v4, 0x7

    .line 58
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x3

    .line 59
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 v6, 0x5

    .line 60
    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v6, 0x4

    .line 61
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move p1, v0

    move v0, p2

    move p2, v2

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :cond_1
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x0:Z

    .line 65
    invoke-virtual {p0, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->setStackFromRight(Z)V

    .line 66
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 67
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->setTranscriptMode(I)V

    .line 68
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    .line 69
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSmoothScrollbarEnabled(Z)V

    .line 70
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChoiceMode(I)V

    return-void
.end method

.method static synthetic A(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p9}, Landroid/view/ViewGroup;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic B(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p9}, Landroid/view/ViewGroup;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method private B0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method static synthetic C(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p9}, Landroid/view/ViewGroup;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic D(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic E(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic F(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic G(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic H(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static H0(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->d:I

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic I(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private I0(I)V
    .locals 20

    move-object/from16 v10, p0

    move/from16 v11, p1

    .line 1
    iget v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    sub-int v12, v11, v0

    .line 2
    iget v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->T0:I

    sub-int v0, v12, v0

    .line 3
    iget v1, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S0:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    sub-int v2, v11, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 4
    :goto_0
    iget v3, v10, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/4 v9, 0x0

    if-ne v3, v14, :cond_c

    if-eq v11, v1, :cond_1b

    .line 5
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, v10, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    if-le v1, v3, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    :cond_1
    iget v1, v10, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    if-ltz v1, :cond_2

    .line 9
    iget v3, v10, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr v1, v3

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 11
    :goto_1
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v10, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->V0(II)Z

    move-result v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 14
    :goto_3
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-eqz v0, :cond_a

    neg-int v0, v2

    sub-int/2addr v1, v3

    sub-int v14, v0, v1

    const/4 v2, 0x0

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v10, Lit/sephiroth/android/library/widget/AbsHListView;->z1:I

    const/4 v8, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v14

    const/4 v13, 0x0

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Landroid/view/ViewGroup;->overScrollBy(IIIIIIIIZ)Z

    .line 17
    iget v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->z1:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 18
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 20
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_6

    if-ne v0, v15, :cond_a

    .line 21
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->T()Z

    move-result v0

    if-nez v0, :cond_a

    .line 22
    :cond_6
    iput v13, v10, Lit/sephiroth/android/library/widget/AbsHListView;->F1:I

    const/4 v0, 0x5

    .line 23
    iput v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-lez v12, :cond_8

    .line 24
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 25
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 27
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_4

    :cond_8
    if-gez v12, :cond_a

    .line 28
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 29
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 30
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 31
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 32
    :cond_a
    :goto_4
    iput v11, v10, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    .line 33
    :cond_b
    iput v11, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S0:I

    goto/16 :goto_a

    :cond_c
    const/4 v0, 0x5

    const/4 v13, 0x0

    if-ne v3, v0, :cond_1b

    if-eq v11, v1, :cond_1b

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    sub-int v1, v0, v2

    .line 35
    iget v3, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S0:I

    if-le v11, v3, :cond_d

    const/4 v9, 0x1

    goto :goto_5

    :cond_d
    const/4 v3, -0x1

    const/4 v9, -0x1

    .line 36
    :goto_5
    iget v3, v10, Lit/sephiroth/android/library/widget/AbsHListView;->F1:I

    if-nez v3, :cond_e

    .line 37
    iput v9, v10, Lit/sephiroth/android/library/widget/AbsHListView;->F1:I

    :cond_e
    neg-int v3, v2

    if-gez v1, :cond_f

    if-gez v0, :cond_10

    :cond_f
    if-lez v1, :cond_11

    if-gtz v0, :cond_11

    :cond_10
    neg-int v3, v0

    add-int v0, v2, v3

    move v7, v0

    move v8, v3

    goto :goto_6

    :cond_11
    move v8, v3

    const/4 v7, 0x0

    :goto_6
    if-eqz v8, :cond_16

    const/4 v2, 0x0

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v1, v10, Lit/sephiroth/android/library/widget/AbsHListView;->z1:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v18, v1

    move v1, v8

    move v14, v7

    move/from16 v7, v18

    move v13, v8

    move/from16 v8, v16

    move/from16 v19, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Landroid/view/ViewGroup;->overScrollBy(IIIIIIIIZ)Z

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_12

    if-ne v0, v15, :cond_17

    .line 40
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->T()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_12
    if-lez v12, :cond_14

    .line 41
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 42
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_13

    .line 43
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 44
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_7

    :cond_14
    if-gez v12, :cond_17

    .line 45
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    int-to-float v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPull(F)Z

    .line 46
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_15

    .line 47
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 48
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_7

    :cond_16
    move v14, v7

    move/from16 v19, v9

    :cond_17
    :goto_7
    if-eqz v14, :cond_1a

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_18

    .line 50
    iget-object v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->K:Lit/sephiroth/android/library/util/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/util/b$a;->c(I)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h0()V

    goto :goto_8

    :cond_18
    const/4 v1, 0x0

    .line 52
    :goto_8
    invoke-virtual {v10, v14, v14}, Lit/sephiroth/android/library/widget/AbsHListView;->V0(II)Z

    const/4 v0, 0x3

    .line 53
    iput v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 54
    invoke-virtual/range {p0 .. p1}, Lit/sephiroth/android/library/widget/AbsHListView;->Y(I)I

    move-result v0

    .line 55
    iput v1, v10, Lit/sephiroth/android/library/widget/AbsHListView;->T0:I

    .line 56
    iget v2, v10, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int v2, v0, v2

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v9

    goto :goto_9

    :cond_19
    const/4 v9, 0x0

    :goto_9
    iput v9, v10, Lit/sephiroth/android/library/widget/AbsHListView;->N0:I

    .line 58
    iput v11, v10, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    .line 59
    iput v0, v10, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    .line 60
    :cond_1a
    iput v11, v10, Lit/sephiroth/android/library/widget/AbsHListView;->S0:I

    move/from16 v15, v19

    .line 61
    iput v15, v10, Lit/sephiroth/android/library/widget/AbsHListView;->F1:I

    :cond_1b
    :goto_a
    return-void
.end method

.method static synthetic J(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic K(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic L(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic M(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/AbsHListView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$e;

    return-object p0
.end method

.method static synthetic N(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$e;)Lit/sephiroth/android/library/widget/AbsHListView$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$e;

    return-object p1
.end method

.method static synthetic O(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    return p0
.end method

.method static synthetic P(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/view/VelocityTracker;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method private R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Lit/sephiroth/android/library/util/b$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lit/sephiroth/android/library/util/b$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s1:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$b;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s1:Ljava/lang/Runnable;

    .line 4
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s1:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private T()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 3
    :cond_1
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_2

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    if-gt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private T0(I)Z
    .locals 6

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    sub-int v0, p1, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 4
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    if-le v1, v5, :cond_1

    goto :goto_1

    :cond_1
    return v4

    .line 5
    :cond_2
    :goto_1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->V()V

    if-eqz v2, :cond_3

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 7
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T0:I

    goto :goto_3

    :cond_3
    const/4 v1, 0x3

    .line 8
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-lez v0, :cond_4

    .line 9
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T0:I

    .line 10
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    :cond_5
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 13
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 15
    :cond_6
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 17
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 18
    :cond_7
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->I0(I)V

    return v3
.end method

.method private V()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Lit/sephiroth/android/library/util/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lit/sephiroth/android/library/util/b$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 4
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L0:Z

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K0:Z

    :cond_0
    return-void
.end method

.method private W(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A0:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private W0()V
    .locals 8

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0xb

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v0, v3

    .line 5
    instance-of v6, v4, Landroid/widget/Checkable;

    if-eqz v6, :cond_1

    .line 6
    check-cast v4, Landroid/widget/Checkable;

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v7}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v7}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setActivated(Z)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private Z0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroidx/core/widget/EdgeEffectCompat;->finish()V

    :cond_0
    return-void
.end method

.method public static c0(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_4

    const/16 v0, 0x11

    if-eq p2, v0, :cond_3

    const/16 v0, 0x21

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    const/16 v0, 0x82

    if-ne p2, v0, :cond_0

    .line 1
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 2
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 3
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 4
    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    iget p2, p0, Landroid/graphics/Rect;->right:I

    .line 7
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    .line 8
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 9
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    .line 10
    :cond_2
    iget p2, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 11
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 12
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 13
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 14
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 15
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    .line 16
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 17
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    .line 18
    :cond_4
    iget p2, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 19
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/2addr p0, v1

    add-int/2addr p0, v0

    .line 20
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 21
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v1

    :goto_0
    add-int/2addr p1, v2

    :goto_1
    sub-int/2addr v0, p2

    sub-int/2addr p1, p0

    mul-int p1, p1, p1

    mul-int v0, v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method private e0()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 6
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r1:I

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u1:I

    .line 10
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:I

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z1:I

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A1:I

    .line 13
    invoke-static {p0}, Lit/sephiroth/android/library/util/b;->a(Landroid/view/View;)Lit/sephiroth/android/library/util/b$a;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Lit/sephiroth/android/library/util/b$a;

    return-void
.end method

.method private f0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method private g0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private s0(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 3
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q0:I

    .line 6
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T0:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    :cond_1
    return-void
.end method

.method static synthetic u(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:I

    return p0
.end method

.method static synthetic v(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u1:I

    return p0
.end method

.method static synthetic w(Lit/sephiroth/android/library/widget/AbsHListView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->T()Z

    move-result p0

    return p0
.end method

.method static synthetic x(Lit/sephiroth/android/library/widget/AbsHListView;)Landroidx/core/widget/EdgeEffectCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    return-object p0
.end method

.method private x0(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A0:Landroid/graphics/Rect;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C0:I

    sub-int/2addr p1, v1

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D0:I

    sub-int/2addr p2, v1

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E0:I

    add-int/2addr p3, v1

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F0:I

    add-int/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method static synthetic y(Lit/sephiroth/android/library/widget/AbsHListView;)Landroidx/core/widget/EdgeEffectCompat;
    .locals 0

    .line 1
    iget-object p0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    return-object p0
.end method

.method static synthetic z(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    return-void
.end method


# virtual methods
.method protected A0()I
    .locals 2

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    if-gez v0, :cond_0

    .line 2
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method C0(I)V
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q1:I

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:Lit/sephiroth/android/library/widget/AbsHListView$i;

    if-eqz v0, :cond_0

    .line 3
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q1:I

    .line 4
    invoke-interface {v0, p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$i;->b(Lit/sephiroth/android/library/widget/AbsHListView;I)V

    :cond_0
    return-void
.end method

.method D0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E0()V

    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method protected E0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    .line 3
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t1:Ljava/lang/Runnable;

    .line 5
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 6
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O1:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->v:I

    const-wide/high16 v2, -0x8000000000000000L

    .line 8
    iput-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->w:J

    .line 9
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 10
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 11
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->X0:I

    .line 12
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z0:I

    .line 13
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method F0()Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 4
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    .line 5
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    const/4 v6, 0x1

    if-lt v5, v4, :cond_2

    add-int v7, v4, v0

    if-ge v5, v7, :cond_2

    sub-int v0, v5, v4

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v2, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int v7, v2, v0

    goto :goto_1

    :cond_1
    if-le v8, v3, :cond_8

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHorizontalFadingEdgeLength()I

    move-result v0

    sub-int v7, v3, v0

    goto :goto_1

    :cond_2
    if-ge v5, v4, :cond_9

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_7

    .line 11
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 12
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    if-nez v3, :cond_5

    if-gtz v4, :cond_3

    if-ge v7, v2, :cond_4

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHorizontalFadingEdgeLength()I

    move-result v5

    add-int/2addr v2, v5

    :cond_4
    move v5, v7

    :cond_5
    if-lt v7, v2, :cond_6

    add-int/2addr v3, v4

    move v5, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move v7, v5

    move v5, v4

    :cond_8
    :goto_1
    const/4 v0, 0x1

    goto :goto_4

    .line 14
    :cond_9
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    add-int v5, v4, v0

    add-int/lit8 v7, v5, -0x1

    sub-int/2addr v0, v6

    move v9, v0

    const/4 v8, 0x0

    :goto_2
    if-ltz v9, :cond_e

    .line 15
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 16
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 17
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    if-ne v9, v0, :cond_c

    if-lt v5, v2, :cond_a

    if-le v10, v3, :cond_b

    .line 18
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHorizontalFadingEdgeLength()I

    move-result v8

    sub-int/2addr v3, v8

    :cond_b
    move v8, v11

    :cond_c
    if-gt v10, v3, :cond_d

    add-int v5, v4, v9

    move v7, v11

    goto :goto_3

    :cond_d
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_e
    move v5, v7

    move v7, v8

    :goto_3
    const/4 v0, 0x0

    :goto_4
    const/4 v2, -0x1

    .line 19
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    .line 20
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-eqz v3, :cond_f

    .line 22
    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    .line 23
    :cond_f
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 24
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    .line 25
    iput v7, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 26
    invoke-virtual {p0, v5, v0}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    move-result v0

    if-lt v0, v4, :cond_10

    .line 27
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_10

    const/4 v2, 0x4

    .line 28
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    .line 29
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    .line 30
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectionInt(I)V

    .line 31
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    move v2, v0

    .line 32
    :cond_10
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    if-ltz v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method protected G0()Z
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected J0(II)V
    .locals 0

    return-void
.end method

.method protected K0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->U0()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L0(FFI)Z
    .locals 4

    float-to-int v0, p1

    float-to-int v1, p2

    .line 1
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v3, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 5
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->L0(FFI)Z

    move-result p1

    return p1
.end method

.method public M0(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->N0(IIZ)V

    return-void
.end method

.method public N0(IIZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 3
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int v2, v0, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz p1, :cond_3

    .line 7
    iget v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ne v0, v3, :cond_1

    if-ltz p1, :cond_3

    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-ne v2, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ne v0, v4, :cond_2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 11
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView$g;->g(IIZ)V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 13
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected O0(I)V
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    if-le v1, v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int v3, v3, v0

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int v0, v0, v2

    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    const/high16 v2, 0x3f400000    # 0.75f

    if-gez p1, :cond_2

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    move-result v2

    add-int/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->P0(I)V

    :cond_4
    return-void
.end method

.method public P0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 3
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->b(I)V

    return-void
.end method

.method public Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    return-void
.end method

.method public Q0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 3
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView$k;->c(II)V

    return-void
.end method

.method public R0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 3
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView$k;->d(II)V

    return-void
.end method

.method S()V
    .locals 13

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    const/16 v4, 0xb

    if-ge v1, v3, :cond_5

    .line 3
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 4
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v3, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    const/4 v3, 0x1

    cmp-long v10, v8, v5

    if-eqz v10, :cond_3

    add-int/lit8 v5, v7, -0x14

    .line 6
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v6, v7, 0x14

    .line 7
    iget v10, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_1
    if-ge v5, v6, :cond_1

    .line 8
    iget-object v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v10, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    .line 9
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v10}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v1, v5}, Landroidx/collection/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_4

    .line 11
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v8, v9}, Landroidx/collection/LongSparseArray;->delete(J)V

    add-int/lit8 v1, v1, -0x1

    .line 12
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    sub-int/2addr v2, v3

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    .line 13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v4, :cond_2

    .line 14
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 15
    move-object v5, v4

    check-cast v5, Ly2/b;

    move-object v6, v2

    check-cast v6, Landroid/view/ActionMode;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Ly2/b;->a(Landroid/view/ActionMode;IJZ)V

    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    .line 16
    :cond_3
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v7, v5}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_3
    add-int/2addr v1, v3

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 17
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    if-eqz v0, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v4, :cond_6

    .line 18
    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_6
    return-void
.end method

.method public S0(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$k;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    .line 3
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView$k;->e(III)V

    return-void
.end method

.method U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/AdapterView$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AdapterView$b;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method U0()Z
    .locals 3

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method V0(II)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x0

    .line 2
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/lit8 v7, v3, -0x1

    .line 3
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    .line 4
    iget-object v9, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    rsub-int/lit8 v10, v6, 0x0

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    sub-int/2addr v11, v5

    sub-int v11, v8, v11

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    if-gez v1, :cond_1

    add-int/lit8 v13, v12, -0x1

    neg-int v13, v13

    .line 7
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v13, v12, -0x1

    .line 8
    invoke-static {v13, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gez v2, :cond_2

    sub-int/2addr v12, v4

    neg-int v12, v12

    .line 9
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_1

    :cond_2
    sub-int/2addr v12, v4

    .line 10
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 11
    :goto_1
    iget v12, v0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    if-nez v12, :cond_3

    .line 12
    iget v13, v9, Landroid/graphics/Rect;->left:I

    sub-int v13, v6, v13

    iput v13, v0, Lit/sephiroth/android/library/widget/AbsHListView;->D1:I

    goto :goto_2

    .line 13
    :cond_3
    iget v13, v0, Lit/sephiroth/android/library/widget/AbsHListView;->D1:I

    add-int/2addr v13, v2

    iput v13, v0, Lit/sephiroth/android/library/widget/AbsHListView;->D1:I

    :goto_2
    add-int v13, v12, v3

    .line 14
    iget v14, v0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-ne v13, v14, :cond_4

    .line 15
    iget v15, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v15, v8

    iput v15, v0, Lit/sephiroth/android/library/widget/AbsHListView;->E1:I

    goto :goto_3

    .line 16
    :cond_4
    iget v15, v0, Lit/sephiroth/android/library/widget/AbsHListView;->E1:I

    add-int/2addr v15, v2

    iput v15, v0, Lit/sephiroth/android/library/widget/AbsHListView;->E1:I

    :goto_3
    if-nez v12, :cond_5

    .line 17
    iget v15, v9, Landroid/graphics/Rect;->left:I

    if-lt v6, v15, :cond_5

    if-ltz v2, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-ne v13, v14, :cond_6

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v9

    if-gt v8, v13, :cond_6

    if-gtz v2, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-nez v6, :cond_19

    if-eqz v8, :cond_7

    goto/16 :goto_d

    :cond_7
    if-gez v2, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    .line 19
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 20
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d0()V

    .line 21
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeaderViewsCount()I

    move-result v9

    .line 22
    iget v13, v0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFooterViewsCount()I

    move-result v14

    sub-int/2addr v13, v14

    if-eqz v6, :cond_d

    neg-int v7, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7
    if-ge v14, v3, :cond_c

    .line 23
    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    if-lt v4, v7, :cond_a

    goto :goto_9

    :cond_a
    add-int/lit8 v15, v15, 0x1

    add-int v4, v12, v14

    if-lt v4, v9, :cond_b

    if-ge v4, v13, :cond_b

    move/from16 v16, v3

    .line 25
    iget-object v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v3, v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    goto :goto_8

    :cond_b
    move/from16 v16, v3

    :goto_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_7

    :cond_c
    :goto_9
    const/4 v4, 0x0

    goto :goto_b

    .line 26
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_a
    if-ltz v7, :cond_10

    .line 27
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 28
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v14

    if-gt v14, v3, :cond_e

    goto :goto_b

    :cond_e
    add-int/lit8 v15, v15, 0x1

    add-int v4, v12, v7

    if-lt v4, v9, :cond_f

    if-ge v4, v13, :cond_f

    .line 29
    iget-object v14, v0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v14, v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    :cond_f
    add-int/lit8 v4, v7, -0x1

    move/from16 v17, v7

    move v7, v4

    move/from16 v4, v17

    goto :goto_a

    .line 30
    :cond_10
    :goto_b
    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->N0:I

    add-int/2addr v3, v1

    iput v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->O0:I

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->A:Z

    if-lez v15, :cond_11

    .line 32
    invoke-virtual {v0, v4, v15}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 33
    iget-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->m()V

    .line 34
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_12

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 36
    :cond_12
    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->r0(I)V

    if-eqz v6, :cond_13

    .line 37
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    add-int/2addr v1, v15

    iput v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    .line 38
    :cond_13
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v10, v1, :cond_14

    if-ge v11, v1, :cond_15

    .line 39
    :cond_14
    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->X(Z)V

    :cond_15
    const/4 v1, -0x1

    if-nez v8, :cond_16

    .line 40
    iget v2, v0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    if-eq v2, v1, :cond_16

    .line 41
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr v2, v1

    if-ltz v2, :cond_18

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_18

    .line 43
    iget v1, v0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    goto :goto_c

    .line 44
    :cond_16
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->z0:I

    if-eq v2, v1, :cond_17

    .line 45
    iget v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_18

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    goto :goto_c

    .line 48
    :cond_17
    iget-object v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->A0:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    :cond_18
    :goto_c
    const/4 v3, 0x0

    .line 49
    iput-boolean v3, v0, Lit/sephiroth/android/library/widget/AdapterView;->A:Z

    .line 50
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    return v3

    :cond_19
    :goto_d
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    const/4 v4, 0x1

    goto :goto_e

    :cond_1a
    const/4 v4, 0x0

    :goto_e
    return v4
.end method

.method protected abstract X(Z)V
.end method

.method protected X0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I0:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6
    :cond_2
    :goto_1
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I0:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J0:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    add-int/2addr v4, v0

    iget v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-ge v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_7

    if-lez v0, :cond_7

    sub-int/2addr v0, v2

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    move v4, v2

    .line 12
    :cond_7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J0:Landroid/view/View;

    if-eqz v4, :cond_8

    const/4 v1, 0x0

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method protected Y(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->Z(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method Y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->K0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lit/sephiroth/android/library/widget/AbsHListView;->q2:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract Z(I)I
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    .line 3
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, v3

    .line 5
    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b0(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    return p1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 2
    iget-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c1:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    mul-int/lit8 v2, v0, 0x64

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    mul-int/lit8 v4, v4, 0x64

    .line 6
    div-int/2addr v4, v1

    add-int/2addr v2, v4

    :cond_0
    sub-int/2addr v0, v3

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    sub-int/2addr v2, v1

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 4

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    if-lez v1, :cond_3

    .line 3
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c1:Z

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x64

    mul-int/lit8 v3, v3, 0x64

    .line 7
    div-int/2addr v3, v1

    sub-int/2addr v0, v3

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 9
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 10
    :cond_0
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int v2, v0, v1

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_0

    .line 11
    :cond_2
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    :goto_0
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_3
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c1:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    :cond_1
    :goto_0
    return v0
.end method

.method protected d0()V
    .locals 4

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 3
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    .line 4
    :cond_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:I

    if-ltz v2, :cond_1

    if-eq v2, v0, :cond_1

    .line 5
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 7
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->X0:I

    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x0:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->W(Landroid/graphics/Canvas;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->W(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 6
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H1:I

    add-int/2addr v3, v4

    .line 7
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I1:I

    add-int/2addr v2, v4

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    .line 9
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D1:I

    add-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 10
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v3

    int-to-float v3, v5

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, v4, v4}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 13
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 15
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 16
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroidx/core/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 18
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H1:I

    add-int/2addr v3, v4

    .line 19
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I1:I

    add-int/2addr v2, v4

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 22
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E1:I

    add-int/2addr v0, v5

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, 0x42b40000    # 90.0f

    .line 23
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v2, v3

    int-to-float v2, v2

    neg-int v0, v0

    int-to-float v0, v0

    .line 24
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 25
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, v4, v4}, Landroidx/core/widget/EdgeEffectCompat;->setSize(II)V

    .line 26
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroidx/core/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 28
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->b0(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o1:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    if-nez v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    .line 3
    new-array v3, v2, [J

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    new-array v0, v1, [J

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroidx/collection/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 4

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P1:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f04026d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P1:F

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define hlv_listPreferredItemWidth."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P1:F

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->getLeftFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    div-float v1, v0, v2

    :cond_2
    return v1
.end method

.method public getListPaddingBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->getRightFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    if-le v0, v4, :cond_2

    sub-int/2addr v0, v2

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float v1, v0, v3

    :cond_2
    return v1
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-lez v0, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    if-ltz v0, :cond_0

    .line 2
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o1:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n1:I

    return v0
.end method

.method protected h0()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Lit/sephiroth/android/library/util/b$a;

    invoke-virtual {v0}, Lit/sephiroth/android/library/util/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public i0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->r()V

    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected j0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:Lit/sephiroth/android/library/widget/AbsHListView$i;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    invoke-interface {v0, p0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView$i;->a(Lit/sephiroth/android/library/widget/AbsHListView;III)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public k0(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected l()V
    .locals 11

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    .line 2
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N1:I

    .line 3
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N1:I

    .line 4
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->S()V

    .line 6
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView$l;->e()V

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_f

    .line 7
    iget-boolean v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    if-eqz v6, :cond_a

    .line 8
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 9
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O1:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 10
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n1:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 11
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    return-void

    :cond_1
    if-ne v6, v5, :cond_5

    .line 12
    iget-boolean v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G1:Z

    if-eqz v6, :cond_2

    .line 13
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G1:Z

    .line 14
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    return-void

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/lit8 v9, v6, -0x1

    .line 17
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 18
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_0

    :cond_3
    move v9, v8

    .line 19
    :goto_0
    iget v10, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    add-int/2addr v10, v6

    if-lt v10, v1, :cond_4

    if-gt v9, v8, :cond_4

    .line 20
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    return-void

    .line 21
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    .line 22
    :cond_5
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:I

    const/4 v6, 0x5

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    .line 24
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    return-void

    .line 25
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 26
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    .line 27
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    return-void

    .line 28
    :cond_8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->g()I

    move-result v1

    if-ltz v1, :cond_a

    .line 29
    invoke-virtual {p0, v1, v5}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    move-result v8

    if-ne v8, v1, :cond_a

    .line 30
    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 31
    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    .line 32
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    goto :goto_1

    .line 33
    :cond_9
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    .line 34
    :goto_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    return-void

    .line 35
    :cond_a
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_e

    .line 36
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-lt v1, v0, :cond_b

    add-int/lit8 v1, v0, -0x1

    :cond_b
    if-gez v1, :cond_c

    const/4 v1, 0x0

    .line 37
    :cond_c
    invoke-virtual {p0, v1, v5}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    move-result v0

    if-ltz v0, :cond_d

    .line 38
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    return-void

    .line 39
    :cond_d
    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/AdapterView;->o(IZ)I

    move-result v0

    if-ltz v0, :cond_f

    .line 40
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    return-void

    .line 41
    :cond_e
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    if-ltz v0, :cond_f

    return-void

    .line 42
    :cond_f
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Y0:Z

    if-eqz v0, :cond_10

    goto :goto_3

    :cond_10
    const/4 v3, 0x1

    :goto_3
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    const-wide/high16 v5, -0x8000000000000000L

    .line 44
    iput-wide v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    .line 45
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->n:I

    .line 46
    iput-wide v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->o:J

    .line 47
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 48
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O1:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 49
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z0:I

    .line 50
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->f()V

    return-void
.end method

.method public l0()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z0:Z

    return v0
.end method

.method public m0()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c1:Z

    return v0
.end method

.method public n0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Y0:Z

    return v0
.end method

.method protected o0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A0:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->U0()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 6
    iget v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 9
    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result v1

    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 13
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 14
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 16
    :cond_4
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    .line 17
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    if-nez v0, :cond_7

    .line 18
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k1:Lit/sephiroth/android/library/widget/AbsHListView$d;

    if-nez v0, :cond_6

    .line 19
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView$d;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k1:Lit/sephiroth/android/library/widget/AbsHListView$d;

    .line 20
    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k1:Lit/sephiroth/android/library/widget/AbsHListView$d;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$o;->a()V

    .line 21
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k1:Lit/sephiroth/android/library/widget/AbsHListView$d;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u0:Lit/sephiroth/android/library/widget/AbsHListView$c;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$c;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$c;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u0:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 6
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    .line 8
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    .line 10
    :cond_0
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M1:Z

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p1:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 5
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 6
    aget v2, p1, v1

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 7
    array-length v2, p1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AdapterView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$l;->d()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u0:Lit/sephiroth/android/library/widget/AbsHListView$c;

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u0:Lit/sephiroth/android/library/widget/AbsHListView$c;

    .line 8
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    .line 12
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s1:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l1:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m1:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m1:Ljava/lang/Runnable;

    :cond_5
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M1:Z

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    if-gez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M1:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    .line 5
    iget p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    iput p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->t:I

    .line 6
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    iput p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    .line 7
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F0()Z

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0xa

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalScrollFactor()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 6
    invoke-virtual {p0, v0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->V0(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2000

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1000

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    .line 4
    :cond_0
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M1:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    const/4 v4, -0x1

    if-eq v0, v3, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->s0(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 6
    :cond_3
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-eqz v0, :cond_4

    goto/16 :goto_0

    .line 7
    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    const/4 v0, 0x0

    .line 9
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 10
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->g0()V

    .line 11
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 12
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->T0(I)Z

    move-result p1

    if-eqz p1, :cond_a

    return v3

    .line 13
    :cond_6
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 14
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    .line 15
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B0()V

    .line 16
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    goto :goto_0

    .line 17
    :cond_7
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    goto :goto_1

    .line 18
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 20
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    .line 21
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->Z(I)I

    move-result v5

    const/4 v6, 0x4

    if-eq v0, v6, :cond_9

    if-ltz v5, :cond_9

    .line 22
    iget v7, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int v7, v5, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 23
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N0:I

    .line 24
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    .line 25
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q0:I

    .line 26
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    .line 27
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 28
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    :cond_9
    const/high16 v1, -0x80000000

    .line 29
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S0:I

    .line 30
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->f0()V

    .line 31
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    if-ne v0, v6, :cond_a

    return v3

    :cond_a
    :goto_0
    return v2

    .line 32
    :cond_b
    :goto_1
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T0:I

    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    if-ltz v0, :cond_3

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_3

    .line 3
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 4
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    iget p2, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 5
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    iget-wide v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->q:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->q(Landroid/view/View;IJ)Z

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 7
    :cond_2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setPressed(Z)V

    return v1

    .line 8
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Lit/sephiroth/android/library/widget/AdapterView;->onLayout(ZIIII)V

    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p1, :cond_0

    .line 4
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->j()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 7
    iput-boolean p3, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:Z

    sub-int/2addr p4, p2

    .line 8
    div-int/lit8 p4, p4, 0x3

    iput p4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g1:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Z0()V

    .line 3
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    .line 4
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 5
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 6
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 7
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F0:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 8
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n1:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 13
    :goto_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    add-int/2addr v2, p1

    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N1:I

    if-lt v2, p1, :cond_2

    if-gt v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G1:Z

    :cond_3
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 3
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Lit/sephiroth/android/library/util/b$a;

    invoke-virtual {p2, p1}, Lit/sephiroth/android/library/util/b$a;->c(I)V

    .line 4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h0()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .line 1
    check-cast p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    .line 4
    iget v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    int-to-long v1, v1

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->e:J

    .line 5
    iget-wide v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 6
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 7
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O1:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 8
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    .line 9
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 10
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:I

    goto :goto_0

    .line 12
    :cond_0
    iget-wide v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v1, -0x1

    .line 13
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 14
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 15
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z0:I

    .line 16
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->f:Z

    .line 17
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O1:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 18
    iget-wide v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->d:J

    .line 19
    iget v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->c:I

    .line 20
    iget v1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->b:I

    .line 21
    iput v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->g:I

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_2

    .line 23
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    .line 24
    :cond_2
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_3

    .line 25
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    .line 26
    :cond_3
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 28
    iget-boolean p1, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 29
    check-cast p1, Ly2/b;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    .line 30
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    invoke-direct {v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O1:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    if-eqz v0, :cond_0

    .line 4
    iget-wide v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iput-wide v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 5
    iget-wide v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 6
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 7
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 8
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 9
    iget-object v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    iput-object v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 10
    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    iput-boolean v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 11
    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    .line 12
    iget-object v2, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroidx/collection/SparseArrayCompat;

    iput-object v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroidx/collection/SparseArrayCompat;

    .line 13
    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/LongSparseArray;

    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/LongSparseArray;

    return-object v1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v4

    .line 16
    iput-wide v4, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iput v6, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    cmp-long v10, v4, v6

    if-ltz v10, :cond_2

    .line 18
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->X0:I

    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 19
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 20
    iput-wide v8, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    .line 21
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    if-lez v0, :cond_4

    .line 22
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 24
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    .line 25
    iget v4, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-lt v0, v4, :cond_3

    add-int/lit8 v0, v4, -0x1

    .line 26
    :cond_3
    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 27
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    goto :goto_1

    .line 28
    :cond_4
    iput v3, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 29
    iput-wide v8, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 30
    iput v3, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    :goto_1
    const/4 v0, 0x0

    .line 31
    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_5

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 33
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    if-eqz v0, :cond_6

    .line 34
    :try_start_0
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroidx/collection/SparseArrayCompat;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 36
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroidx/collection/SparseArrayCompat;

    .line 37
    :cond_6
    :goto_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_8

    .line 38
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 39
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    :goto_4
    if-ge v3, v2, :cond_7

    .line 40
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v0, v4, v5, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 41
    :cond_7
    iput-object v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroidx/collection/LongSparseArray;

    .line 42
    :cond_8
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    iput v0, v1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->r()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isClickable()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 3
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    .line 5
    :cond_3
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M1:Z

    if-nez v0, :cond_4

    return v2

    .line 6
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->g0()V

    .line 8
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eqz v0, :cond_30

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v0, v1, :cond_15

    if-eq v0, v6, :cond_10

    if-eq v0, v4, :cond_9

    if-eq v0, v5, :cond_7

    if-eq v0, v3, :cond_5

    goto/16 :goto_b

    .line 9
    :cond_5
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->s0(Landroid/view/MotionEvent;)V

    .line 10
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    .line 11
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q0:I

    .line 12
    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    move-result v0

    if-ltz v0, :cond_6

    .line 13
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N0:I

    .line 15
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    .line 16
    :cond_6
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S0:I

    goto/16 :goto_b

    .line 17
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 21
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T0:I

    .line 22
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    .line 23
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    .line 24
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q0:I

    .line 25
    invoke-virtual {p0, v4, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    move-result p1

    if-ltz p1, :cond_8

    .line 26
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N0:I

    .line 28
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    .line 29
    :cond_8
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S0:I

    goto/16 :goto_b

    .line 30
    :cond_9
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-eq p1, v5, :cond_c

    if-eq p1, v3, :cond_e

    .line 31
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 32
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 33
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 35
    :cond_a
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 37
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    :cond_b
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B0()V

    goto :goto_1

    .line 39
    :cond_c
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-nez p1, :cond_d

    .line 40
    new-instance p1, Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-direct {p1, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 41
    :cond_d
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->h()V

    .line 42
    :cond_e
    :goto_1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz p1, :cond_f

    .line 43
    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 44
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 45
    :cond_f
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    goto/16 :goto_b

    .line 46
    :cond_10
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 47
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    goto :goto_2

    :cond_11
    move v2, v0

    .line 48
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    .line 49
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    if-eqz v0, :cond_12

    .line 50
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 51
    :cond_12
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-eqz v0, :cond_14

    if-eq v0, v1, :cond_14

    if-eq v0, v6, :cond_14

    if-eq v0, v4, :cond_13

    if-eq v0, v5, :cond_13

    goto/16 :goto_b

    .line 52
    :cond_13
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->I0(I)V

    goto/16 :goto_b

    .line 53
    :cond_14
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->T0(I)Z

    goto/16 :goto_b

    .line 54
    :cond_15
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-eqz v0, :cond_21

    if-eq v0, v1, :cond_21

    if-eq v0, v6, :cond_21

    const/16 p1, 0x3e8

    if-eq v0, v4, :cond_19

    if-eq v0, v5, :cond_16

    goto/16 :goto_8

    .line 55
    :cond_16
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-nez v0, :cond_17

    .line 56
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 57
    :cond_17
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    .line 58
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:I

    int-to-float v3, v3

    invoke-virtual {v0, p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 59
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    float-to-int p1, p1

    .line 60
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 61
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u1:I

    if-le v0, v3, :cond_18

    .line 62
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->f(I)V

    goto/16 :goto_8

    .line 63
    :cond_18
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->h()V

    goto/16 :goto_8

    .line 64
    :cond_19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_20

    .line 65
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    .line 66
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 67
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 69
    iget v9, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    if-nez v9, :cond_1a

    if-lt v3, v5, :cond_1a

    add-int/2addr v9, v0

    iget v10, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-ge v9, v10, :cond_1a

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    sub-int/2addr v9, v8

    if-gt v4, v9, :cond_1a

    .line 71
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 72
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    goto/16 :goto_8

    .line 73
    :cond_1a
    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->U0:Landroid/view/VelocityTracker;

    .line 74
    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v1:I

    int-to-float v10, v10

    invoke-virtual {v9, p1, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 75
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w1:F

    mul-float p1, p1, v9

    float-to-int p1, p1

    .line 76
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u1:I

    if-le v9, v10, :cond_1e

    iget v9, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    if-nez v9, :cond_1b

    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z1:I

    sub-int/2addr v5, v10

    if-eq v3, v5, :cond_1e

    :cond_1b
    add-int/2addr v9, v0

    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->s:I

    if-ne v9, v0, :cond_1c

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z1:I

    add-int/2addr v8, v0

    if-eq v4, v8, :cond_1e

    .line 77
    :cond_1c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-nez v0, :cond_1d

    .line 78
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 79
    :cond_1d
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 80
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->e(I)V

    goto/16 :goto_8

    .line 81
    :cond_1e
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 82
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    .line 83
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-eqz p1, :cond_1f

    .line 84
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 85
    :cond_1f
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-eqz p1, :cond_2d

    .line 86
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    goto/16 :goto_8

    .line 87
    :cond_20
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 88
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->C0(I)V

    goto/16 :goto_8

    .line 89
    :cond_21
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    .line 90
    iget v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 92
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_22

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float p1, p1, v4

    if-gez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_3

    :cond_22
    const/4 p1, 0x0

    :goto_3
    if-eqz v3, :cond_2c

    .line 93
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2c

    if-eqz p1, :cond_2c

    .line 94
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-eqz p1, :cond_23

    .line 95
    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 96
    :cond_23
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l1:Lit/sephiroth/android/library/widget/AbsHListView$j;

    if-nez p1, :cond_24

    .line 97
    new-instance p1, Lit/sephiroth/android/library/widget/AbsHListView$j;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView$j;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/AbsHListView$a;)V

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l1:Lit/sephiroth/android/library/widget/AbsHListView$j;

    .line 98
    :cond_24
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l1:Lit/sephiroth/android/library/widget/AbsHListView$j;

    .line 99
    iput v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$j;->c:I

    .line 100
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$o;->a()V

    .line 101
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    .line 102
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-eqz v4, :cond_26

    if-ne v4, v1, :cond_25

    goto :goto_4

    .line 103
    :cond_25
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    if-nez v3, :cond_2c

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 104
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$j;->run()V

    goto :goto_7

    .line 105
    :cond_26
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 106
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-nez v5, :cond_27

    .line 107
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j1:Ljava/lang/Runnable;

    goto :goto_5

    :cond_27
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$e;

    .line 108
    :goto_5
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    :cond_28
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    .line 110
    iget-boolean v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    if-nez v2, :cond_2b

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 111
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 112
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 113
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 114
    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    .line 115
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    invoke-virtual {p0, v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->y0(ILandroid/view/View;)V

    .line 116
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 117
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 119
    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_29

    .line 120
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 121
    :cond_29
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m1:Ljava/lang/Runnable;

    if-eqz v0, :cond_2a

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 123
    :cond_2a
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$a;

    invoke-direct {v0, p0, v3, p1}, Lit/sephiroth/android/library/widget/AbsHListView$a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Lit/sephiroth/android/library/widget/AbsHListView$j;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m1:Ljava/lang/Runnable;

    .line 124
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p1

    int-to-long v2, p1

    .line 125
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    .line 126
    :cond_2b
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 127
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    :goto_6
    return v1

    .line 128
    :cond_2c
    :goto_7
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 129
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    .line 130
    :cond_2d
    :goto_8
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 131
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    if-eqz p1, :cond_2e

    .line 132
    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 133
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroidx/core/widget/EdgeEffectCompat;->onRelease()Z

    .line 134
    :cond_2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 135
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 136
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i1:Lit/sephiroth/android/library/widget/AbsHListView$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    :cond_2f
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B0()V

    .line 138
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    goto/16 :goto_b

    .line 139
    :cond_30
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-eq v0, v3, :cond_35

    .line 140
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 143
    invoke-virtual {p0, v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    move-result v5

    .line 144
    iget-boolean v6, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    if-nez v6, :cond_33

    .line 145
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_32

    if-ltz v5, :cond_32

    .line 146
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    check-cast v6, Landroid/widget/ListAdapter;

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 147
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 148
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j1:Ljava/lang/Runnable;

    if-nez v2, :cond_31

    .line 149
    new-instance v2, Lit/sephiroth/android/library/widget/AbsHListView$f;

    invoke-direct {v2, p0}, Lit/sephiroth/android/library/widget/AbsHListView$f;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j1:Ljava/lang/Runnable;

    .line 150
    :cond_31
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j1:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {p0, v2, v6, v7}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 151
    :cond_32
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-ne v6, v7, :cond_33

    .line 152
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->V()V

    .line 153
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 154
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T0:I

    .line 155
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->Z(I)I

    move-result v5

    .line 156
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView$g;->d()V

    :cond_33
    :goto_9
    if-ltz v5, :cond_34

    .line 157
    iget v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int v2, v5, v2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N0:I

    .line 159
    :cond_34
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    .line 160
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q0:I

    .line 161
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M0:I

    const/high16 v0, -0x80000000

    .line 162
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S0:I

    goto :goto_a

    .line 163
    :cond_35
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 164
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-eqz v0, :cond_36

    .line 165
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    .line 166
    :cond_36
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q0:I

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S0:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P0:I

    .line 169
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T0:I

    .line 170
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y1:I

    .line 171
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F1:I

    .line 172
    :goto_a
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->t0(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 173
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    if-nez p1, :cond_37

    .line 174
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j1:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_37
    :goto_b
    return v1
.end method

.method public onTouchModeChanged(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d0()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R0:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 6
    :cond_2
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 8
    :cond_3
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    .line 10
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Lit/sephiroth/android/library/util/b$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/util/b$a;->c(I)V

    .line 12
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->a0()V

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 4
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$g;->c()V

    .line 7
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W0:Lit/sephiroth/android/library/widget/AbsHListView$k;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$k;->f()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:Lit/sephiroth/android/library/util/b$a;

    invoke-virtual {p1, v2}, Lit/sephiroth/android/library/util/b$a;->c(I)V

    .line 11
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->a0()V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    if-ne v0, v1, :cond_4

    .line 13
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->p:I

    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e1:I

    goto :goto_0

    .line 14
    :cond_2
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h1:I

    if-eq v0, p1, :cond_4

    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    if-ne v0, v1, :cond_3

    .line 15
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F0()Z

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d0()V

    .line 17
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t0:I

    .line 18
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p0()V

    .line 19
    :cond_4
    :goto_0
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h1:I

    return-void
.end method

.method protected p0()V
    .locals 0

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    if-lez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    neg-int p1, p1

    .line 4
    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->M0(II)V

    return v0

    :cond_2
    return v2

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_4

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G0:Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    .line 7
    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->M0(II)V

    return v0

    :cond_4
    return v2
.end method

.method public q(Landroid/view/View;IJ)Z
    .locals 9

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    .line 2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_5

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v3}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 8
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9
    :cond_1
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    :cond_3
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    :cond_4
    :goto_0
    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x1

    goto :goto_6

    .line 12
    :cond_6
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v3}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    .line 13
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v8, :cond_7

    .line 15
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_7
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/collection/LongSparseArray;->delete(J)V

    :cond_8
    :goto_2
    if-eqz v8, :cond_9

    .line 17
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    add-int/2addr v0, v2

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    goto :goto_3

    .line 18
    :cond_9
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    sub-int/2addr v0, v2

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    .line 19
    :goto_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 20
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    check-cast v3, Ly2/b;

    move-object v4, v0

    check-cast v4, Landroid/view/ActionMode;

    move v5, p2

    move-wide v6, p3

    invoke-virtual/range {v3 .. v8}, Ly2/b;->a(Landroid/view/ActionMode;IJZ)V

    goto :goto_4

    :cond_a
    const/4 v1, 0x1

    :goto_4
    move v0, v1

    :goto_5
    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_b

    .line 21
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->W0()V

    :cond_b
    move v2, v0

    const/4 v1, 0x1

    :cond_c
    if-eqz v2, :cond_d

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AdapterView;->q(Landroid/view/View;IJ)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_d
    return v1
.end method

.method protected q0(I[Z)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aput-boolean v0, p2, v0

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->i(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->h(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 4
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_1

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v4, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    if-eq v4, v1, :cond_2

    .line 8
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {p2, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->c(Landroid/view/View;I)V

    .line 9
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o1:I

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {v4, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0

    .line 11
    :cond_2
    aput-boolean v3, p2, v0

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 14
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_4

    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p2

    if-nez p2, :cond_4

    .line 16
    invoke-virtual {v4, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 17
    :cond_4
    iget p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o1:I

    if-eqz p2, :cond_5

    .line 18
    invoke-virtual {v4, p2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 19
    :cond_5
    :goto_0
    iget-boolean p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w0:Z

    if-eqz p2, :cond_8

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_6

    .line 21
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    goto :goto_1

    .line 24
    :cond_7
    check-cast p2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    .line 25
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p2, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->e:J

    .line 26
    invoke-virtual {v4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :cond_8
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->u:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 28
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J1:Lit/sephiroth/android/library/widget/AbsHListView$h;

    if-nez p1, :cond_9

    .line 29
    new-instance p1, Lit/sephiroth/android/library/widget/AbsHListView$h;

    invoke-direct {p1, p0}, Lit/sephiroth/android/library/widget/AbsHListView$h;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J1:Lit/sephiroth/android/library/widget/AbsHListView$h;

    :cond_9
    return-object v4
.end method

.method public r0(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B0()V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    .line 3
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K1:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L1:I

    if-ne v2, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K1:I

    .line 5
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L1:I

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result p1

    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w0:Z

    .line 3
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    .line 5
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 7
    :cond_1
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o1:I

    if-eq p1, v0, :cond_1

    .line 2
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o1:I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->o(I)V

    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    if-eqz v1, :cond_1

    if-lt p1, v0, :cond_0

    .line 4
    check-cast v1, Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    .line 6
    :cond_1
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    .line 9
    :cond_2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    if-nez v1, :cond_3

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    :cond_3
    if-lt p1, v0, :cond_4

    .line 11
    iget p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Q()V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    :cond_4
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x0:Z

    return-void
.end method

.method public setFriction(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView$g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    .line 3
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->V0:Lit/sephiroth/android/library/widget/AbsHListView$g;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView$g;->a(Lit/sephiroth/android/library/widget/AbsHListView$g;)Lit/sephiroth/android/library/widget/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/c;->v(F)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 12

    .line 1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x3

    const/16 v3, 0xb

    if-lt v1, v3, :cond_2

    if-eqz p2, :cond_2

    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v0, Ly2/b;

    .line 5
    invoke-virtual {v0}, Ly2/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    check-cast v0, Ly2/b;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    :goto_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v4, :cond_a

    if-lt v1, v3, :cond_3

    if-ne v0, v2, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_5

    .line 10
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->k0(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11
    :cond_5
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->clear()V

    if-eqz v0, :cond_6

    .line 12
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->clear()V

    :cond_6
    if-eqz p2, :cond_8

    .line 13
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    if-eqz v0, :cond_7

    .line 14
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 15
    :cond_7
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    goto/16 :goto_5

    .line 16
    :cond_8
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    .line 17
    :cond_9
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    goto :goto_5

    .line 18
    :cond_a
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 19
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r0:Landroidx/collection/SparseArrayCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    .line 21
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    .line 22
    :cond_b
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s0:Landroidx/collection/LongSparseArray;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->delete(J)V

    :cond_c
    :goto_3
    if-eq v0, p2, :cond_e

    if-eqz p2, :cond_d

    .line 23
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    add-int/2addr v0, v5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    goto :goto_4

    .line 24
    :cond_d
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    sub-int/2addr v0, v5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q0:I

    .line 25
    :cond_e
    :goto_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 26
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    .line 27
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ly2/b;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/view/ActionMode;

    move v8, p1

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Ly2/b;->a(Landroid/view/ActionMode;IJZ)V

    .line 28
    :cond_f
    :goto_5
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->i:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->A:Z

    if-nez p1, :cond_10

    .line 29
    iput-boolean v5, p0, Lit/sephiroth/android/library/widget/AdapterView;->m:Z

    .line 30
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->r()V

    .line 31
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    :cond_10
    return-void
.end method

.method public setMultiChoiceModeListener(Ly2/a;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ly2/b;

    invoke-direct {v0, p0}, Ly2/b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    check-cast v0, Ly2/b;

    invoke-virtual {v0, p1}, Ly2/b;->c(Ly2/a;)V

    :cond_1
    return-void
.end method

.method public setOnScrollListener(Lit/sephiroth/android/library/widget/AbsHListView$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b1:Lit/sephiroth/android/library/widget/AbsHListView$i;

    .line 2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j0()V

    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H1:I

    .line 2
    iput p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I1:I

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    .line 4
    new-instance v1, Landroidx/core/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroidx/core/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B1:Landroidx/core/widget/EdgeEffectCompat;

    .line 6
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C1:Landroidx/core/widget/EdgeEffectCompat;

    .line 7
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method

.method public setRecyclerListener(Lit/sephiroth/android/library/widget/AbsHListView$m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->b(Lit/sephiroth/android/library/widget/AbsHListView$l;Lit/sephiroth/android/library/widget/AbsHListView$m;)Lit/sephiroth/android/library/widget/AbsHListView$m;

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I0:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J0:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z0:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->R()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z0:Z

    return-void
.end method

.method public abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 8
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C0:I

    .line 9
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->D0:I

    .line 10
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E0:I

    .line 11
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F0:I

    .line 12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 13
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->Y0()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c1:Z

    return-void
.end method

.method public setStackFromRight(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Y0:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Y0:Z

    .line 3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->D0()V

    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n1:I

    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w1:F

    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView;->k(Landroid/view/View;)I

    move-result v6

    const/4 v0, 0x0

    if-ltz v6, :cond_1

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {v1, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    .line 3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AdapterView;->l:Lit/sephiroth/android/library/widget/AdapterView$e;

    if-eqz v1, :cond_0

    move-object v0, v1

    move-object v1, p0

    move-object v2, p1

    move v3, v6

    move-wide v4, v7

    .line 4
    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/AdapterView$e;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    sub-int v0, v6, v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0, v6, v7, v8}, Lit/sephiroth/android/library/widget/AbsHListView;->U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method protected t0(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->L0(FFI)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method u0(Landroid/view/View;IJ)Z
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 2
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n0:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 3
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    const/4 p3, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p0:Ljava/lang/Object;

    check-cast p1, Ly2/b;

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o0:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->setItemChecked(IZ)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    return p3

    .line 7
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AdapterView;->l:Lit/sephiroth/android/library/widget/AdapterView$e;

    if-eqz v2, :cond_2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 8
    invoke-interface/range {v2 .. v7}, Lit/sephiroth/android/library/widget/AdapterView$e;->a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->U(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f1:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 10
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_4
    return v0
.end method

.method public v0(II)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->w0(II)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object p2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v0:Landroid/widget/ListAdapter;

    invoke-interface {p2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y0:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public w0(II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d1:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d1:Landroid/graphics/Rect;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget p1, p0, Lit/sephiroth/android/library/widget/AdapterView;->a:I

    add-int/2addr p1, v1

    return p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method protected y0(ILandroid/view/View;)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z0:I

    .line 2
    :cond_0
    iget-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A0:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    instance-of v1, p2, Lit/sephiroth/android/library/widget/AbsHListView$n;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, p2

    check-cast v1, Lit/sephiroth/android/library/widget/AbsHListView$n;

    invoke-interface {v1, p1}, Lit/sephiroth/android/library/widget/AbsHListView$n;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 6
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->x0(IIII)V

    .line 7
    iget-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p1:Z

    .line 8
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, p1, :cond_2

    xor-int/lit8 p1, p1, 0x1

    .line 9
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p1:Z

    .line 10
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    :cond_2
    return-void
.end method

.method public z0(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->a(Lit/sephiroth/android/library/widget/AbsHListView$l;)Lit/sephiroth/android/library/widget/AbsHListView$m;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;

    if-eqz v4, :cond_1

    .line 5
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView$LayoutParams;->a:I

    invoke-virtual {v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView$l;->q(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v1, v3}, Lit/sephiroth/android/library/widget/AbsHListView$m;->a(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B0:Lit/sephiroth/android/library/widget/AbsHListView$l;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView$l;->l(Ljava/util/List;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method
