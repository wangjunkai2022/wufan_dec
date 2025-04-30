.class public Lcom/join/mgps/customview/SlidingTabLayout3;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayout3$SavedState;,
        Lcom/join/mgps/customview/SlidingTabLayout3$d;,
        Lcom/join/mgps/customview/SlidingTabLayout3$c;
    }
.end annotation


# static fields
.field private static final H:[I


# instance fields
.field private A:Landroid/graphics/Typeface;

.field private B:I

.field private C:I

.field private D:I

.field private E:Ljava/util/Locale;

.field private F:I

.field private G:Z

.field protected a:Landroid/widget/LinearLayout$LayoutParams;

.field protected b:Landroid/widget/LinearLayout$LayoutParams;

.field private final c:Lcom/join/mgps/customview/SlidingTabLayout3$d;

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

    sput-object v0, Lcom/join/mgps/customview/SlidingTabLayout3;->H:[I

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
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/SlidingTabLayout3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Lcom/join/mgps/customview/SlidingTabLayout3$d;

    invoke-direct {p3, p0}, Lcom/join/mgps/customview/SlidingTabLayout3$d;-><init>(Lcom/join/mgps/customview/SlidingTabLayout3;)V

    iput-object p3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->c:Lcom/join/mgps/customview/SlidingTabLayout3$d;

    const/4 p3, 0x0

    .line 5
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->h:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->i:F

    const v0, -0xb8b00

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->l:I

    const v1, -0x141415

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->m:I

    const v1, 0xffffff

    .line 9
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->n:I

    .line 10
    iput-boolean p3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->o:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->p:Z

    const/16 v2, 0x34

    .line 12
    iput v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->q:I

    const/4 v2, 0x3

    .line 13
    iput v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->r:I

    const v3, 0x3f19999a    # 0.6f

    .line 14
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->s:F

    .line 15
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->t:I

    const/16 v3, 0xc

    .line 16
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->u:I

    const/16 v3, 0x18

    .line 17
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->v:I

    .line 18
    iput v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->w:I

    const/16 v3, 0xe

    .line 19
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->x:I

    const v3, -0xb2b2b3

    .line 20
    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->y:I

    .line 21
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->z:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->A:Landroid/graphics/Typeface;

    .line 23
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->B:I

    .line 24
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->C:I

    const v0, 0x7f080160

    .line 25
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->D:I

    .line 26
    iput p3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->F:I

    .line 27
    iput-boolean p3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->G:Z

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 29
    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 30
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    .line 31
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 35
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->q:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->q:I

    .line 36
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->r:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->r:I

    .line 37
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->t:I

    int-to-float v3, v3

    invoke-static {p3, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->t:I

    .line 38
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->u:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->u:I

    .line 39
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->v:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->v:I

    .line 40
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->w:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->w:I

    .line 41
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->x:I

    int-to-float v3, v3

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->x:I

    .line 42
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->x:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->x:I

    .line 44
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->y:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->y:I

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    sget-object v0, Lcom/join/android/app/mgsim/wufun/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->l:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->l:I

    .line 48
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->m:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->m:I

    .line 49
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->n:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->n:I

    .line 50
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->r:I

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->r:I

    .line 51
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->t:I

    const/16 v0, 0xa

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->t:I

    .line 52
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->u:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->u:I

    .line 53
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->v:I

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->v:I

    .line 54
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->D:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->D:I

    .line 55
    iget-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->o:Z

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->o:Z

    .line 56
    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->q:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->q:I

    .line 57
    iget-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->p:Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->p:Z

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->j:Landroid/graphics/Paint;

    .line 60
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->j:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->k:Landroid/graphics/Paint;

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->k:Landroid/graphics/Paint;

    iget p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->w:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->a:Landroid/widget/LinearLayout$LayoutParams;

    .line 66
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->b:Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->E:Ljava/util/Locale;

    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->E:Ljava/util/Locale;

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
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout3;->b(ILandroid/view/View;)V

    return-void
.end method

.method protected b(ILandroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout3$b;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout3$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout3;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->v:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->b:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->a:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected c(ILjava/lang/String;)V
    .locals 5

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

    .line 3
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 4
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 6
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xd

    .line 8
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 9
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080889

    .line 10
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/j;->g()F

    move-result v2

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 13
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 14
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v3, v4, v2, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xb

    const/4 v4, -0x1

    .line 16
    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    .line 18
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout3;->b(ILandroid/view/View;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->p:Z

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->g:I

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->g:I

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/join/mgps/customview/SlidingTabLayout3$c;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/SlidingTabLayout3$c;

    invoke-interface {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout3$c;->a(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout3;->a(II)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout3;->c(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout3;->g()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayout3$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/SlidingTabLayout3$a;-><init>(Lcom/join/mgps/customview/SlidingTabLayout3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected f(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->g:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    .line 3
    :cond_1
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->q:I

    sub-int/2addr v0, p1

    .line 4
    :cond_2
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->C:I

    if-eq v0, p1, :cond_3

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->C:I

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_3
    return-void
.end method

.method protected g()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->g:I

    if-ge v1, v2, :cond_9

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->D:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    instance-of v3, v2, Landroid/widget/TextView;

    const/16 v4, 0xe

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 5
    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->A:Landroid/graphics/Typeface;

    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->B:I

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 8
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->y:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    iget-object v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 10
    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->z:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :cond_0
    iget-boolean v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->p:Z

    if-eqz v3, :cond_8

    .line 12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_1

    .line 13
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto/16 :goto_3

    .line 14
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->E:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 15
    :cond_2
    instance-of v3, v2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_8

    .line 16
    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_8

    .line 17
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 18
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 19
    check-cast v7, Landroid/widget/TextView;

    .line 20
    iget v8, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->x:I

    int-to-float v8, v8

    invoke-virtual {v7, v0, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 21
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->A:Landroid/graphics/Typeface;

    iget v9, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->B:I

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 22
    iget v8, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->y:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object v8, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v8

    if-ne v1, v8, :cond_3

    .line 24
    iget v8, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->z:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    :cond_3
    iget-boolean v8, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->p:Z

    if-eqz v8, :cond_7

    .line 26
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v4, :cond_4

    .line 27
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_2

    .line 28
    :cond_4
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->E:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 29
    :cond_5
    iget v8, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->F:I

    if-ne v8, v1, :cond_7

    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_7

    .line 30
    iget-boolean v8, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->G:Z

    if-eqz v8, :cond_6

    .line 31
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/16 v8, 0x8

    .line 32
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public getDividerColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->n:I

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->u:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->l:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->r:I

    return v0
.end method

.method public getIndicatorRatioH()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->s:F

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->q:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->o:Z

    return v0
.end method

.method public getTabBackground()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->D:I

    return v0
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->v:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->y:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->x:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->m:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->t:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->g:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->h:I

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
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->i:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->h:I

    iget v5, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->g:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    .line 9
    iget-object v5, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

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
    iget v6, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->i:F

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
    iget v4, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->s:F

    sub-float/2addr v3, v4

    sub-float v4, v1, v2

    mul-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v5, v2, v3

    .line 14
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->r:I

    sub-int v2, v0, v2

    int-to-float v6, v2

    sub-float v7, v1, v3

    int-to-float v12, v0

    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->j:Landroid/graphics/Paint;

    move-object v4, p1

    move v8, v12

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->j:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->m:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v9, 0x0

    .line 16
    iget v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->t:I

    sub-int v1, v0, v1

    int-to-float v10, v1

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v11, v1

    iget-object v13, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->j:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->n:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    .line 18
    :goto_0
    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->g:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 19
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v5, v3

    iget v3, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->u:I

    int-to-float v6, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v7, v2

    iget v2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->u:I

    sub-int v2, v0, v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->k:Landroid/graphics/Paint;

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
    check-cast p1, Lcom/join/mgps/customview/SlidingTabLayout3$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lcom/join/mgps/customview/SlidingTabLayout3$SavedState;->a:I

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->h:I

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
    new-instance v1, Lcom/join/mgps/customview/SlidingTabLayout3$SavedState;

    invoke-direct {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout3$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->h:I

    iput v0, v1, Lcom/join/mgps/customview/SlidingTabLayout3$SavedState;->a:I

    return-object v1
.end method

.method public setAllCaps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->p:Z

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->n:I

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

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->n:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->u:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->l:I

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

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->l:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->r:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorRatioH(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->s:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->d:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setRoundShow(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->F:I

    .line 2
    iput-boolean p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->G:Z

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout3;->g()V

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->q:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->o:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabBackground(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->D:I

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->v:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout3;->g()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->y:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout3;->g()V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->y:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout3;->g()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->x:I

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout3;->g()V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->A:Landroid/graphics/Typeface;

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->B:I

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout3;->g()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->m:I

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

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->m:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->t:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->f:Landroidx/viewpager/widget/ViewPager;

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout3;->c:Lcom/join/mgps/customview/SlidingTabLayout3$d;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/customview/SlidingTabLayout3;->e()V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
