.class public Lcom/join/mgps/customview/ViewPagerWithADs;
.super Landroid/widget/FrameLayout;
.source "ViewPagerWithADs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ViewPagerWithADs$a;
    }
.end annotation


# static fields
.field public static final k:I = 0x5


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroidx/viewpager/widget/PagerAdapter;

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    const/16 v1, 0x32

    .line 3
    iput v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:I

    .line 4
    iput-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->d:Ljava/util/List;

    const/16 v0, 0x28

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->e:I

    const/16 v0, 0x7d0

    .line 6
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->f:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->g:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:F

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:Z

    .line 10
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    const/16 v1, 0x32

    .line 13
    iput v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:I

    .line 14
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->d:Ljava/util/List;

    const/16 p2, 0x28

    .line 15
    iput p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->e:I

    const/16 p2, 0x7d0

    .line 16
    iput p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->f:I

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->g:I

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:F

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:Z

    .line 20
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/ViewPagerWithADs;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->h:Landroidx/viewpager/widget/PagerAdapter;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/ViewPagerWithADs;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->g:I

    return p0
.end method

.method private c(Landroid/content/Context;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 4
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    iget v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:I

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 7
    new-instance v2, Lcom/join/mgps/customview/ViewPagerWithADs$a;

    iget-object v3, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/join/mgps/customview/ViewPagerWithADs$a;-><init>(Lcom/join/mgps/customview/ViewPagerWithADs;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    .line 8
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    iget-object v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->d:Ljava/util/List;

    iget v3, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->e:I

    iget v4, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->i(Landroid/content/Context;Ljava/util/List;II)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:F

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:F

    .line 4
    :cond_1
    iget v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 5
    iput-boolean v3, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:Z

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:Z

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:F

    goto :goto_0

    .line 8
    :cond_3
    iput v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:F

    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:Z

    goto :goto_0

    .line 10
    :cond_4
    iput v2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->i:F

    .line 11
    iput-boolean v1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->j:Z

    .line 12
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->b:Lcom/join/mgps/customview/ViewPagerWithADs$a;

    invoke-virtual {v0, p1, p2}, Lcom/join/mgps/customview/ViewPagerWithADs$a;->h(Landroid/view/View;I)V

    return-void
.end method

.method public setAll(Landroid/content/Context;Landroidx/viewpager/widget/PagerAdapter;Ljava/util/List;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/viewpager/widget/PagerAdapter;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;III)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->a:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->h:Landroidx/viewpager/widget/PagerAdapter;

    .line 3
    iput p5, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->c:I

    .line 4
    iput-object p3, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->d:Ljava/util/List;

    .line 5
    iput p4, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->e:I

    .line 6
    iput p6, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->f:I

    .line 7
    invoke-direct {p0}, Lcom/join/mgps/customview/ViewPagerWithADs;->d()V

    return-void
.end method

.method public setAll(Landroid/content/Context;Ljava/util/List;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;IIII)V"
        }
    .end annotation

    .line 8
    iput p6, p0, Lcom/join/mgps/customview/ViewPagerWithADs;->g:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/ViewPagerWithADs;->setAll(Landroid/content/Context;Landroidx/viewpager/widget/PagerAdapter;Ljava/util/List;III)V

    return-void
.end method
