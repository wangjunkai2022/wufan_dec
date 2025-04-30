.class public Lm/framework/ui/widget/slidingmenu/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# instance fields
.field private adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

.field private config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

.field private curBody:Landroid/view/View;

.field private flMenu:Landroid/widget/FrameLayout;

.field private itemToView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private llBody:Landroid/widget/LinearLayout;

.field private llMenu:Landroid/widget/LinearLayout;

.field private menuShown:Z

.field private menuWidth:I

.field private ocListener:Landroid/view/View$OnClickListener;

.field private otListener:Landroid/view/View$OnTouchListener;

.field private screenWidth:I

.field private showMenuWidth:I

.field private svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

.field private vCover:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    return-object p0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    return-object p0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    return p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/BodyContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    return-object p0
.end method

.method static synthetic access$4(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)I
    .locals 0

    .line 1
    iget p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    return p0
.end method

.method private disableOverScrollMode(Landroid/view/View;)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setOverScrollMode"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x2

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getSepView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget p1, p1, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuSep:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 4
    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;

    invoke-direct {v0}, Lm/framework/ui/widget/slidingmenu/MenuConfig;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->itemToView:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->ocListener:Landroid/view/View$OnClickListener;

    .line 4
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$2;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->otListener:Landroid/view/View$OnTouchListener;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    int-to-float v1, v0

    .line 6
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v3, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    sub-int/2addr v0, v1

    .line 7
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenuWidth:I

    .line 8
    iget v0, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuBackground:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 9
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->initMenu(Landroid/content/Context;)V

    .line 10
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->initBody(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 12
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private initBody(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v0, Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/BodyContainer;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 4
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-direct {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->disableOverScrollMode(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 9
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iget v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    add-int/2addr v2, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 14
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    iget v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    .line 17
    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 20
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iget-object v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v4, v4, Lm/framework/ui/widget/slidingmenu/MenuConfig;->rightShadow:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 23
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x5

    .line 24
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 25
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 27
    new-instance v1, Lm/framework/ui/widget/slidingmenu/SlidingMenu$5;

    invoke-direct {v1, p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$5;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;Landroid/content/Context;)V

    iput-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    .line 28
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget p1, p1, Lm/framework/ui/widget/slidingmenu/MenuConfig;->bodyBackground:I

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 29
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    iget v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    .line 31
    invoke-direct {p1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 32
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initMenu(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$4;

    invoke-direct {v0, p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$4;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    .line 2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 6
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 8
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 12
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 13
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 14
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 15
    invoke-direct {p0, v2}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->disableOverScrollMode(Landroid/view/View;)V

    .line 16
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 17
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 18
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 20
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 26
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    .line 27
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 28
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private invalidateMenu()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getGroupCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v5}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getGroupView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v4, v3}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getGroup(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;

    move-result-object v4

    invoke-virtual {v4}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->getCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v4, :cond_2

    .line 7
    iget-object v4, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 8
    iget-object v5, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {v6, v3, v5}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object v6

    .line 10
    iget-object v7, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    iget-object v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v8}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getItemView(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 11
    iget-object v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 12
    iget-object v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->getSepView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 13
    iget-object v8, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->itemToView:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->ocListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v6, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->otListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private reInit(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    int-to-float v1, v0

    .line 2
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v3, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iput v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    sub-int/2addr v0, v1

    .line 3
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenuWidth:I

    .line 4
    iget v0, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuBackground:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 5
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInitMenu(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0, p1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInitBody(Landroid/content/Context;)V

    return-void
.end method

.method private reInitBody(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iget v3, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 9
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 10
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 13
    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->screenWidth:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14
    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v2, v2, Lm/framework/ui/widget/slidingmenu/MenuConfig;->bodyBackground:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 17
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v0, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->rightShadow:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    iget-boolean p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    if-nez p1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 20
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;

    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private reInitMenu(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llMenu:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iget v1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingLeft:I

    iget v2, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingTop:I

    .line 5
    iget v3, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingRight:I

    iget v0, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingBottom:I

    .line 6
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 7
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getMenuTitle()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 10
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 12
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->flMenu:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBodyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    return-object v0
.end method

.method getMenuConfig()Lm/framework/ui/widget/slidingmenu/MenuConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    return-object v0
.end method

.method getMenuCover()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->vCover:Landroid/view/View;

    return-object v0
.end method

.method getMenuWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    return v0
.end method

.method getShowMenuWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenuWidth:I

    return v0
.end method

.method public hideMenu()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 2
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    iget v2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuWidth:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    invoke-virtual {v0, v1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onMenuSwitch(Z)V

    :cond_0
    return-void
.end method

.method public isMenuShown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    return v0
.end method

.method itemToView(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->itemToView:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public refresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->reInit(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->invalidateMenu()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lm/framework/ui/widget/slidingmenu/MenuAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 2
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->refresh()V

    return-void
.end method

.method public setBodyBackground(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->bodyBackground:I

    return-void
.end method

.method public setBodyView(Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 5
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->llBody:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->curBody:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setMenuBackground(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuBackground:I

    return-void
.end method

.method public setMenuDivider(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuSep:I

    return-void
.end method

.method public setMenuItemBackground(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->itemDownBack:I

    .line 2
    iput p2, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->itemDownRelease:I

    return-void
.end method

.method public setMenuPadding(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingLeft:I

    .line 2
    iput p2, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingTop:I

    .line 3
    iput p3, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingRight:I

    .line 4
    iput p4, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->paddingBottom:I

    return-void
.end method

.method public setMenuWeight(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->menuWeight:F

    return-void
.end method

.method public setShadowRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->rightShadow:I

    return-void
.end method

.method public setTtleHeight(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->config:Lm/framework/ui/widget/slidingmenu/MenuConfig;

    iput p1, v0, Lm/framework/ui/widget/slidingmenu/MenuConfig;->titleHeight:I

    return-void
.end method

.method public showMenu()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    .line 2
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->svBody:Lm/framework/ui/widget/slidingmenu/BodyContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 3
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    invoke-virtual {v0, v1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onMenuSwitch(Z)V

    :cond_0
    return-void
.end method

.method public switchMenu()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->menuShown:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->hideMenu()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->showMenu()V

    :goto_0
    return-void
.end method

.method public triggerItem(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->getMenuItem(II)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    invoke-virtual {p2, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z

    :cond_1
    return-void
.end method

.method public triggerItem(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->adapter:Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z

    :cond_1
    return-void
.end method
