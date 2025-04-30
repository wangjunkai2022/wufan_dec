.class public Lcom/join/mgps/customview/SlidingTabLayout4;
.super Lcom/join/mgps/customview/SlidingTabLayout1;
.source "SlidingTabLayout4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;,
        Lcom/join/mgps/customview/SlidingTabLayout4$c;
    }
.end annotation


# instance fields
.field private J:Landroid/os/Handler;

.field private K:Lcom/join/mgps/customview/SlidingTabLayout4$c;

.field private n0:I

.field private o0:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

.field private p0:I

.field private q0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;)V

    const v0, -0x98967f

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->n0:I

    .line 3
    sget-object v0, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->o0:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    const/16 v0, 0x32

    .line 4
    iput v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->p0:I

    .line 5
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout4$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/customview/SlidingTabLayout4$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout4;)V

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->q0:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4;->q(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, -0x98967f

    .line 8
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->n0:I

    .line 9
    sget-object p2, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->o0:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    const/16 p2, 0x32

    .line 10
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->p0:I

    .line 11
    new-instance p2, Lcom/join/mgps/customview/SlidingTabLayout4$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabLayout4$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout4;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->q0:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4;->q(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/SlidingTabLayout1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x98967f

    .line 14
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->n0:I

    .line 15
    sget-object p2, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->o0:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    const/16 p2, 0x32

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->p0:I

    .line 17
    new-instance p2, Lcom/join/mgps/customview/SlidingTabLayout4$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/SlidingTabLayout4$b;-><init>(Lcom/join/mgps/customview/SlidingTabLayout4;)V

    iput-object p2, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->q0:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4;->q(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic j(Lcom/join/mgps/customview/SlidingTabLayout4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->n0:I

    return p0
.end method

.method static synthetic k(Lcom/join/mgps/customview/SlidingTabLayout4;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->n0:I

    return p1
.end method

.method static synthetic l(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->o0:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    return-object p0
.end method

.method static synthetic m(Lcom/join/mgps/customview/SlidingTabLayout4;Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;)Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->o0:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    return-object p1
.end method

.method static synthetic n(Lcom/join/mgps/customview/SlidingTabLayout4;)Lcom/join/mgps/customview/SlidingTabLayout4$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->K:Lcom/join/mgps/customview/SlidingTabLayout4$c;

    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/customview/SlidingTabLayout4;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->J:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic p(Lcom/join/mgps/customview/SlidingTabLayout4;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->p0:I

    return p0
.end method


# virtual methods
.method protected b(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->c(ILandroid/view/View;)V

    return-void
.end method

.method protected c(ILandroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 2
    new-instance v0, Lcom/join/mgps/customview/SlidingTabLayout4$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4$a;-><init>(Lcom/join/mgps/customview/SlidingTabLayout4;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->e:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->b:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->a:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected d(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    .line 3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout4;->c(ILandroid/view/View;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    :goto_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;->TOUCH_SCROLL:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    iput-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->o0:Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->K:Lcom/join/mgps/customview/SlidingTabLayout4$c;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, v0}, Lcom/join/mgps/customview/SlidingTabLayout4$c;->a(Lcom/join/mgps/customview/SlidingTabLayout4$ScrollType;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->J:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->q0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->J:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->q0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method q(Landroid/content/Context;)V
    .locals 2

    const p1, -0xb8b00

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->l:I

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout4;->setHandler(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->t:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->v:I

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->J:Landroid/os/Handler;

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1;->d:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/join/mgps/customview/SlidingTabLayout4$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout4;->K:Lcom/join/mgps/customview/SlidingTabLayout4$c;

    return-void
.end method
