.class public Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayoutDownloadCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;,
        Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;,
        Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$c;
    }
.end annotation


# static fields
.field private static final K:[I


# instance fields
.field private A:Landroid/graphics/Typeface;

.field private B:I

.field private C:I

.field private D:I

.field private E:Ljava/util/Locale;

.field private F:I

.field private G:Z

.field H:I

.field I:I

.field J:I

.field protected a:Landroid/widget/LinearLayout$LayoutParams;

.field protected b:Landroid/widget/LinearLayout$LayoutParams;

.field private final c:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;

.field public d:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field protected e:Landroid/widget/LinearLayout;

.field protected f:Landroidx/viewpager/widget/ViewPager;

.field protected g:I

.field protected h:I

.field protected i:F

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:Z

.field protected p:Z

.field protected q:I

.field protected r:I

.field protected s:F

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->K:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;

    invoke-direct {p3, p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;)V

    iput-object p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->c:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->i:F

    const v0, -0xb8b00

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:I

    const v1, -0x141415

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    const v1, 0xffffff

    .line 9
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    .line 10
    iput-boolean p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    const/16 v2, 0x34

    .line 12
    iput v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:I

    const/4 v2, 0x3

    .line 13
    iput v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    const v3, 0x3f19999a    # 0.6f

    .line 14
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:F

    .line 15
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:I

    const/16 v3, 0xc

    .line 16
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    const/16 v3, 0x18

    .line 17
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    .line 18
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    const/16 v3, 0xe

    .line 19
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    const v3, -0xb2b2b3

    .line 20
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 21
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->A:Landroid/graphics/Typeface;

    .line 23
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->B:I

    .line 24
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->C:I

    const v0, 0x7f080160

    .line 25
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->D:I

    .line 26
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->F:I

    .line 27
    iput-boolean p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->G:Z

    .line 28
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->H:I

    .line 29
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->I:I

    .line 30
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->J:I

    .line 31
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 32
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 33
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    .line 34
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 38
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:I

    .line 39
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    .line 40
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:I

    int-to-float v3, v3

    invoke-static {p3, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:I

    .line 41
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    .line 42
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    .line 43
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    .line 44
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    .line 45
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    .line 47
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:I

    .line 51
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    .line 52
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    .line 53
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    .line 54
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:I

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:I

    .line 55
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    .line 56
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    .line 57
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->D:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->D:I

    .line 58
    iget-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:Z

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:Z

    .line 59
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:I

    .line 60
    iget-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->w:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->a:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->b:Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:Ljava/util/Locale;

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:Ljava/util/Locale;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->b(ILandroid/view/View;)V

    return-void
.end method

.method protected b(ILandroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->b:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->a:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected c(ILjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x1020014

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 4
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 5
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 6
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 7
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v5, 0xd

    .line 10
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 11
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v5, 0x1020015

    .line 12
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setId(I)V

    const-string v5, "#ffffff"

    .line 13
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f080888

    .line 14
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 15
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/j;->g()F

    move-result v3

    const/high16 v6, 0x40e00000    # 7.0f

    mul-float v3, v3, v6

    float-to-int v3, v3

    const/4 v6, 0x0

    .line 17
    invoke-virtual {v5, v3, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0xf

    const/4 v6, -0x1

    .line 18
    invoke-virtual {v5, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 19
    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v5, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 20
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x8

    .line 21
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v3, 0x41000000    # 8.0f

    .line 23
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 24
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->b(ILandroid/view/View;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:I

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$c;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$c;

    invoke-interface {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$c;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->a(II)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->c(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected f(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 3
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:I

    sub-int/2addr v0, p1

    .line 4
    :cond_2
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->C:I

    if-eq v0, p1, :cond_3

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->C:I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method g(Landroid/widget/TextView;I)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f070ddc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x64

    if-ge p2, v4, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f080888

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 8
    invoke-virtual {p1, v2, v0, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070991

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v1, 0x40e00000    # 7.0f

    .line 12
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v1, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/4 v5, 0x4

    .line 13
    invoke-virtual {v4, v0, v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0x11

    .line 14
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0807cd

    .line 17
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v1, 0x2

    .line 18
    invoke-virtual {p1, v2, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 19
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    return v0
.end method

.method public getIndicatorRatioH()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:F

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->D:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:I

    return v0
.end method

.method protected h()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:I

    if-ge v1, v2, :cond_9

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->D:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    instance-of v3, v2, Landroid/widget/TextView;

    const/16 v4, 0xe

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 5
    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->A:Landroid/graphics/Typeface;

    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->B:I

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 8
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 10
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :cond_0
    iget-boolean v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    if-eqz v3, :cond_8

    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_1

    .line 13
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto/16 :goto_2

    .line 14
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 15
    :cond_2
    instance-of v3, v2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_8

    const v3, 0x1020014

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x1020015

    .line 17
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 18
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    int-to-float v6, v6

    invoke-virtual {v3, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    iget-object v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->A:Landroid/graphics/Typeface;

    iget v7, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->B:I

    invoke-virtual {v3, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 20
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    if-ne v1, v6, :cond_3

    .line 22
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->z:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    :cond_3
    iget-object v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v6

    instance-of v6, v6, Lcom/join/mgps/customview/d0;

    if-eqz v6, :cond_4

    .line 24
    iget-object v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_4
    iget-boolean v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    if-eqz v6, :cond_6

    .line 26
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_5

    .line 27
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_1

    .line 28
    :cond_5
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->E:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    if-eqz v2, :cond_8

    .line 29
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/join/mgps/customview/d0;

    if-eqz v3, :cond_8

    if-ne v1, v5, :cond_8

    .line 30
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->I:I

    if-lez v3, :cond_7

    .line 31
    invoke-virtual {p0, v2, v3}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g(Landroid/widget/TextView;I)V

    goto :goto_2

    :cond_7
    const/16 v3, 0x8

    .line 32
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    .line 8
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->i:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 9
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    .line 11
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    .line 12
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->i:F

    mul-float v5, v5, v6

    sub-float v7, v3, v6

    mul-float v7, v7, v2

    add-float v2, v5, v7

    mul-float v4, v4, v6

    sub-float v5, v3, v6

    mul-float v5, v5, v1

    add-float v1, v4, v5

    .line 13
    :cond_1
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:F

    sub-float/2addr v3, v4

    sub-float v4, v1, v2

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v5, v2, v3

    .line 14
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    sub-int v2, v0, v2

    int-to-float v6, v2

    sub-float v7, v1, v3

    int-to-float v12, v0

    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:Landroid/graphics/Paint;

    move-object v4, p1

    move v8, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v9, 0x0

    .line 16
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:I

    sub-int v1, v0, v1

    int-to-float v10, v1

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v11, v1

    iget-object v13, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->j:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 18
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->g:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 19
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->k:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;->a:I

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;

    invoke-direct {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    iput v0, v1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$SavedState;->a:I

    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->p:Z

    return-void
.end method

.method public setBadgeSize(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->H:I

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->I:I

    .line 3
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->J:I

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->n:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->u:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->l:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->r:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorRatioH(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->s:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->d:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setRoundShow(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->F:I

    .line 2
    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->G:Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->q:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->o:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->D:I

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->v:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->y:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->x:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->A:Landroid/graphics/Typeface;

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->B:I

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->m:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->t:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->c:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$d;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
