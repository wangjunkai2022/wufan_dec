.class public Lcom/google/android/material/tabs/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabs/TabLayout$b;,
        Lcom/google/android/material/tabs/TabLayout$e;,
        Lcom/google/android/material/tabs/TabLayout$i;,
        Lcom/google/android/material/tabs/TabLayout$h;,
        Lcom/google/android/material/tabs/TabLayout$f;,
        Lcom/google/android/material/tabs/TabLayout$TabView;,
        Lcom/google/android/material/tabs/TabLayout$g;,
        Lcom/google/android/material/tabs/TabLayout$c;,
        Lcom/google/android/material/tabs/TabLayout$d;,
        Lcom/google/android/material/tabs/TabLayout$TabIndicatorAnimationMode;,
        Lcom/google/android/material/tabs/TabLayout$TabIndicatorGravity;,
        Lcom/google/android/material/tabs/TabLayout$TabGravity;,
        Lcom/google/android/material/tabs/TabLayout$LabelVisibility;,
        Lcom/google/android/material/tabs/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final A0:I = 0x12c

.field private static final B0:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/tabs/TabLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field private static final C0:Ljava/lang/String; = "TabLayout"

.field public static final D0:I = 0x0

.field public static final E0:I = 0x1

.field public static final F0:I = 0x2

.field public static final G0:I = 0x0

.field public static final H0:I = 0x1

.field public static final I0:I = 0x0

.field public static final J0:I = 0x1

.field public static final K0:I = 0x2

.field public static final L0:I = 0x0

.field public static final M0:I = 0x1

.field public static final N0:I = 0x2

.field public static final O0:I = 0x3

.field public static final P0:I = 0x0

.field public static final Q0:I = 0x1

.field public static final R0:I = 0x2

.field private static final t0:I

.field private static final u0:I = 0x48
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field static final v0:I = 0x8
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final w0:I = 0x30
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final x0:I = 0x38
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field static final y0:I = 0x10
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation
.end field

.field private static final z0:I = -0x1


# instance fields
.field A:Z

.field B:Z

.field C:I

.field D:I

.field E:Z

.field private F:Lcom/google/android/material/tabs/c;

.field private G:Lcom/google/android/material/tabs/TabLayout$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/google/android/material/tabs/TabLayout$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private J:Landroid/animation/ValueAnimator;

.field K:Landroidx/viewpager/widget/ViewPager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/material/tabs/TabLayout$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:Lcom/google/android/material/tabs/TabLayout$f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Landroid/content/res/ColorStateList;

.field j:Landroid/content/res/ColorStateList;

.field k:Landroid/content/res/ColorStateList;

.field l:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private m:I

.field n:Landroid/graphics/PorterDuff$Mode;

.field private n0:Landroidx/viewpager/widget/PagerAdapter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field o:F

.field private o0:Landroid/database/DataSetObserver;

.field p:F

.field private p0:Lcom/google/android/material/tabs/TabLayout$h;

.field final q:I

.field private q0:Lcom/google/android/material/tabs/TabLayout$b;

.field r:I

.field private r0:Z

.field private final s:I

.field private final s0:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/tabs/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final t:I

.field private final u:I

.field private v:I

.field w:I

.field x:I

.field y:I

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_TabLayout:I

    sput v0, Lcom/google/android/material/tabs/TabLayout;->t0:I

    .line 2
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/google/android/material/tabs/TabLayout;->B0:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    sget v4, Lcom/google/android/material/tabs/TabLayout;->t0:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->m:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    const/4 v6, -0x1

    .line 8
    iput v6, p0, Lcom/google/android/material/tabs/TabLayout;->C:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->s0:Landroidx/core/util/Pools$Pool;

    .line 11
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 13
    new-instance v8, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-direct {v8, p0, v7}, Lcom/google/android/material/tabs/TabLayout$f;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    .line 14
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v8, p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    sget-object v2, Lcom/google/android/material/R$styleable;->TabLayout:[I

    const/4 v9, 0x1

    new-array v5, v9, [I

    sget v10, Lcom/google/android/material/R$styleable;->TabLayout_tabTextAppearance:I

    aput v10, v5, p1

    move-object v0, v7

    move-object v1, p2

    move v3, p3

    .line 16
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/o;->j(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 17
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 19
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 20
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->o0(Landroid/content/res/ColorStateList;)V

    .line 21
    invoke-virtual {v0, v7}, Lcom/google/android/material/shape/MaterialShapeDrawable;->Z(Landroid/content/Context;)V

    .line 22
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->n0(F)V

    .line 23
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_0
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicator:I

    .line 25
    invoke-static {v7, p2, p3}, Lcom/google/android/material/resources/c;->e(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 26
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 27
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorColor:I

    .line 28
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 29
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 30
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 31
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 32
    invoke-virtual {v8, p3}, Lcom/google/android/material/tabs/TabLayout$f;->h(I)V

    .line 33
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorGravity:I

    .line 34
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 35
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 36
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorAnimationMode:I

    .line 37
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 38
    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorAnimationMode(I)V

    .line 39
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    invoke-virtual {p2, p3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 40
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabPadding:I

    .line 41
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->g:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->f:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->e:I

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->d:I

    .line 42
    sget v0, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingStart:I

    .line 43
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->d:I

    .line 44
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingTop:I

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->e:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->e:I

    .line 45
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->f:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->f:I

    .line 46
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->g:I

    .line 47
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->g:I

    .line 48
    sget p3, Lcom/google/android/material/R$style;->TextAppearance_Design_Tab:I

    .line 49
    invoke-virtual {p2, v10, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->h:I

    .line 50
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 51
    invoke-virtual {v7, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 52
    :try_start_0
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 53
    invoke-virtual {p3, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->o:F

    .line 54
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 55
    invoke-static {v7, p3, v0}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {v7, p2, p3}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 59
    :cond_1
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 61
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-static {v0, p3}, Lcom/google/android/material/tabs/TabLayout;->r(II)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 62
    :cond_2
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIconTint:I

    .line 63
    invoke-static {v7, p2, p3}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    .line 64
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIconTintMode:I

    .line 65
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/material/internal/w;->l(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->n:Landroid/graphics/PorterDuff$Mode;

    .line 66
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabRippleColor:I

    .line 67
    invoke-static {v7, p2, p3}, Lcom/google/android/material/resources/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    .line 68
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 v0, 0x12c

    .line 69
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->x:I

    .line 70
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabMinWidth:I

    .line 71
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->s:I

    .line 72
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabMaxWidth:I

    .line 73
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    .line 74
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->q:I

    .line 75
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->v:I

    .line 76
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabMode:I

    invoke-virtual {p2, p3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    .line 77
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/tabs/TabLayout;->w:I

    .line 78
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabInlineLabel:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayout;->A:Z

    .line 79
    sget p3, Lcom/google/android/material/R$styleable;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->E:Z

    .line 80
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 82
    sget p2, Lcom/google/android/material/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/material/tabs/TabLayout;->p:F

    .line 83
    sget p2, Lcom/google/android/material/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->u:I

    .line 84
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->n()V

    return-void

    :catchall_0
    move-exception p1

    .line 85
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    throw p1
.end method

.method private C()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private M(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->s()V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->s0:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method private Q(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Lcom/google/android/material/tabs/TabLayout$h;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Lcom/google/android/material/tabs/TabLayout$b;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Lcom/google/android/material/tabs/TabLayout$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->I(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 8
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->I:Lcom/google/android/material/tabs/TabLayout$c;

    :cond_2
    if-eqz p1, :cond_6

    .line 9
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroidx/viewpager/widget/ViewPager;

    .line 10
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Lcom/google/android/material/tabs/TabLayout$h;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$h;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$h;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Lcom/google/android/material/tabs/TabLayout$h;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$h;->a()V

    .line 13
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->p0:Lcom/google/android/material/tabs/TabLayout$h;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 14
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$i;

    invoke-direct {v0, p1}, Lcom/google/android/material/tabs/TabLayout$i;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->I:Lcom/google/android/material/tabs/TabLayout$c;

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->c(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 16
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/tabs/TabLayout;->P(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Lcom/google/android/material/tabs/TabLayout$b;

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$b;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Lcom/google/android/material/tabs/TabLayout$b;

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Lcom/google/android/material/tabs/TabLayout$b;

    invoke-virtual {v0, p2}, Lcom/google/android/material/tabs/TabLayout$b;->a(Z)V

    .line 21
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->q0:Lcom/google/android/material/tabs/TabLayout$b;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 22
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 23
    :cond_6
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/tabs/TabLayout;->P(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 25
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayout;->r0:Z

    return-void
.end method

.method private R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$g;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$g;->E()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private S(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->w:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 4
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 5
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/c;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/tabs/TabLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/tabs/TabLayout;->m:I

    return p0
.end method

.method private getDefaultHeight()I
    .locals 5
    .annotation build Landroidx/annotation/Dimension;
        unit = 0x0
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$g;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->n()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Z

    if-nez v0, :cond_2

    const/16 v0, 0x48

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_2
    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->s:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->u:I

    :goto_1
    return v0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private i(Lcom/google/android/material/tabs/TabItem;)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->E()Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$g;->D(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$g;->x(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 6
    :cond_1
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->c:I

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$g;->u(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$g;->t(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 10
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->e(Lcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

.method private j(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 3
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 4
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->s()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private k(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/tabs/TabItem;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/material/tabs/TabItem;

    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->i(Lcom/google/android/material/tabs/TabItem;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private l(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 5
    invoke-direct {p0, p1, v2}, Lcom/google/android/material/tabs/TabLayout;->o(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->y()V

    .line 7
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->x:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout$f;->c(II)V

    return-void

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private m(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->v:I

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout;->d:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-static {v3, v0, v2, v2, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 4
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_2

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->w:I

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->m(I)V

    .line 7
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->T(Z)V

    return-void
.end method

.method private o(IF)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 3
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 4
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 5
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 7
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 8
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_5

    add-int/2addr p1, p2

    goto :goto_2

    :cond_5
    sub-int/2addr p1, p2

    :goto_2
    return p1
.end method

.method private q(Lcom/google/android/material/tabs/TabLayout$g;I)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$g;->z(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$g;

    invoke-virtual {v0, p2}, Lcom/google/android/material/tabs/TabLayout$g;->z(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static r(II)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    .line 1
    sget-object v2, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 2
    sget-object p1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 3
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private s()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->S(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private setSelectedTabView(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 3
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private u(Lcom/google/android/material/tabs/TabLayout$g;)Lcom/google/android/material/tabs/TabLayout$TabView;
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->s0:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setTab(Lcom/google/android/material/tabs/TabLayout$g;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 6
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$g;->c(Lcom/google/android/material/tabs/TabLayout$g;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$g;->d(Lcom/google/android/material/tabs/TabLayout$g;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$g;->c(Lcom/google/android/material/tabs/TabLayout$g;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v0
.end method

.method private v(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$c;

    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$c;->onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private w(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$c;

    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$c;->a(Lcom/google/android/material/tabs/TabLayout$g;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private x(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 2
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$c;

    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$c;->onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/animation/ValueAnimator;

    .line 3
    sget-object v1, Lcom/google/android/material/animation/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->x:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/tabs/TabLayout$a;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->E:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->B:Z

    return v0
.end method

.method public E()Lcom/google/android/material/tabs/TabLayout$g;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->t()Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    .line 2
    iput-object p0, v0, Lcom/google/android/material/tabs/TabLayout$g;->h:Lcom/google/android/material/tabs/TabLayout;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->u(Lcom/google/android/material/tabs/TabLayout$g;)Lcom/google/android/material/tabs/TabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 4
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$g;->a(Lcom/google/android/material/tabs/TabLayout$g;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$g;->a(Lcom/google/android/material/tabs/TabLayout$g;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_0
    return-object v0
.end method

.method F()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->H()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->n0:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->E()Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout;->n0:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$g;->D(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$g;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 6
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->N(Lcom/google/android/material/tabs/TabLayout$g;)V

    :cond_1
    return-void
.end method

.method protected G(Lcom/google/android/material/tabs/TabLayout$g;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->B0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->M(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$g;

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->q()V

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->G(Lcom/google/android/material/tabs/TabLayout$g;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$g;

    return-void
.end method

.method public I(Lcom/google/android/material/tabs/TabLayout$c;)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public J(Lcom/google/android/material/tabs/TabLayout$d;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->I(Lcom/google/android/material/tabs/TabLayout$c;)V

    return-void
.end method

.method public K(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$g;->h:Lcom/google/android/material/tabs/TabLayout;

    if-ne v0, p0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->L(I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab does not belong to this TabLayout."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public L(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->M(I)V

    .line 3
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$g;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$g;->q()V

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->G(Lcom/google/android/material/tabs/TabLayout$g;)Z

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 7
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/tabs/TabLayout$g;

    invoke-virtual {v4, v3}, Lcom/google/android/material/tabs/TabLayout$g;->z(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout$g;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->N(Lcom/google/android/material/tabs/TabLayout$g;)V

    :cond_4
    return-void
.end method

.method public N(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->O(Lcom/google/android/material/tabs/TabLayout$g;Z)V

    return-void
.end method

.method public O(Lcom/google/android/material/tabs/TabLayout$g;Z)V
    .locals 4
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$g;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->v(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->l(I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 6
    invoke-virtual {p0, v2, p2, v3}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 7
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->l(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 8
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 9
    :cond_4
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$g;

    if-eqz v0, :cond_5

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->x(Lcom/google/android/material/tabs/TabLayout$g;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->w(Lcom/google/android/material/tabs/TabLayout$g;)V

    :cond_6
    :goto_2
    return-void
.end method

.method P(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->n0:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->o0:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->n0:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 4
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->o0:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lcom/google/android/material/tabs/TabLayout$e;

    invoke-direct {p2, p0}, Lcom/google/android/material/tabs/TabLayout$e;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->o0:Landroid/database/DataSetObserver;

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/tabs/TabLayout;->o0:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->F()V

    return-void
.end method

.method T(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->S(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->k(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->k(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->k(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->k(Landroid/view/View;)V

    return-void
.end method

.method public c(Lcom/google/android/material/tabs/TabLayout$c;)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/material/tabs/TabLayout$d;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->c(Lcom/google/android/material/tabs/TabLayout$c;)V

    return-void
.end method

.method public e(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$g;Z)V

    return-void
.end method

.method public f(Lcom/google/android/material/tabs/TabLayout$g;I)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->g(Lcom/google/android/material/tabs/TabLayout$g;IZ)V

    return-void
.end method

.method public g(Lcom/google/android/material/tabs/TabLayout$g;IZ)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$g;->h:Lcom/google/android/material/tabs/TabLayout;

    if-ne v0, p0, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->q(Lcom/google/android/material/tabs/TabLayout$g;I)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->j(Lcom/google/android/material/tabs/TabLayout$g;)V

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->r()V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different TabLayout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->b:Lcom/google/android/material/tabs/TabLayout$g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->w:I

    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorAnimationMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->D:I

    return v0
.end method

.method public getTabIndicatorGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->y:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public h(Lcom/google/android/material/tabs/TabLayout$g;Z)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/material/tabs/TabLayout;->g(Lcom/google/android/material/tabs/TabLayout$g;IZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    invoke-static {p0}, Lcom/google/android/material/shape/i;->e(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->K:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/tabs/TabLayout;->Q(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->r0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->r0:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {v1, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->d(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v0, v2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getDefaultHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/internal/w;->e(Landroid/content/Context;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 4
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 6
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->t:I

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    .line 10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v1, v2}, Lcom/google/android/material/internal/w;->e(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v1, v0

    :goto_1
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->r:I

    .line 11
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    if-ne p1, v5, :cond_8

    .line 13
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 14
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_7

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    .line 16
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 17
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    invoke-static {p2, v0, v1}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 20
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 21
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    :cond_8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/material/shape/i;->d(Landroid/view/View;F)V

    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->A:Z

    if-eq v0, p1, :cond_2

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->A:Z

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->y()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->n()V

    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/TabLayout$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->G:Lcom/google/android/material/tabs/TabLayout$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->I(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->G:Lcom/google/android/material/tabs/TabLayout$c;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->c(Lcom/google/android/material/tabs/TabLayout$c;)V

    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$d;)V
    .locals 0
    .param p1    # Lcom/google/android/material/tabs/TabLayout$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->y()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_4

    .line 3
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    .line 4
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/material/tabs/TabLayout$f;->g(IF)V

    .line 5
    :cond_1
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 6
    iget-object p4, p0, Lcom/google/android/material/tabs/TabLayout;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 p4, 0x0

    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->o(IF)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1, p4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p3, :cond_4

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/drawable/Drawable;

    .line 3
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->C:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$f;->h(I)V

    :cond_2
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->m:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->T(Z)V

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->y:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->y:I

    .line 3
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->C:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$f;->h(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->w:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->w:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->n()V

    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->R()V

    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabIndicatorAnimationMode(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->D:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Lcom/google/android/material/tabs/b;

    invoke-direct {p1}, Lcom/google/android/material/tabs/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/c;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid TabIndicatorAnimationMode"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/material/tabs/a;

    invoke-direct {p1}, Lcom/google/android/material/tabs/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/c;

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Lcom/google/android/material/tabs/c;

    invoke-direct {p1}, Lcom/google/android/material/tabs/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->F:Lcom/google/android/material/tabs/c;

    :goto_0
    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->B:Z

    .line 2
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$f;->a(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->z:I

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->n()V

    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->c(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->r(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->R()V

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/PagerAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->P(Landroidx/viewpager/widget/PagerAdapter;Z)V

    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->E:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->E:Z

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->c:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->c(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/BoolRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->Q(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected t()Lcom/google/android/material/tabs/TabLayout$g;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->B0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$g;

    invoke-direct {v0}, Lcom/google/android/material/tabs/TabLayout$g;-><init>()V

    :cond_0
    return-object v0
.end method

.method public z(I)Lcom/google/android/material/tabs/TabLayout$g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout$g;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
