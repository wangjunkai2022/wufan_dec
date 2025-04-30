.class public Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "XRecyclerView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;,
        Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;,
        Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;
    }
.end annotation


# static fields
.field private static final V1:F = 3.0f

.field private static final W1:I = 0x2710

.field private static final X1:I = 0x2711

.field private static final Y1:I = 0x2712

.field private static Z1:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final a2:I = 0x0

.field protected static final b2:I = 0x1

.field protected static final c2:I = 0x190

.field protected static final d2:I = 0x32

.field protected static final e2:F = 2.0f


# instance fields
.field private A1:Z

.field private B1:Z

.field private C1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private D1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

.field private E1:F

.field private F1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

.field private G1:Z

.field private H1:Z

.field private I1:I

.field private J1:Landroid/view/View;

.field protected K1:Lcom/join/mgps/customview/XListViewFooter;

.field protected L1:Z

.field private final M1:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private N1:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

.field private O1:D

.field private P1:I

.field protected Q1:Landroid/widget/Scroller;

.field protected R1:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field protected S1:I

.field private T1:Lcom/join/mgps/ptr/PtrFrameLayout;

.field private U1:Lcom/join/mgps/ptr/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->Z1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A1:Z

    .line 7
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1:Z

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->C1:Ljava/util/ArrayList;

    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    iput p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->E1:F

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->G1:Z

    .line 11
    iput-boolean p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    .line 12
    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->I1:I

    .line 13
    new-instance p2, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;)V

    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->M1:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 14
    sget-object p2, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    iput-object p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->N1:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .line 15
    iput-wide p2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->O1:D

    .line 16
    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->P1:I

    .line 17
    new-instance p1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;

    invoke-direct {p1, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->U1:Lcom/join/mgps/ptr/a;

    .line 18
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->m1()V

    return-void
.end method

.method static synthetic R0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->F1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    return-object p0
.end method

.method static synthetic S0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->k1(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic T0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->q1(I)Z

    move-result p0

    return p0
.end method

.method static synthetic U0()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->Z1:Ljava/util/List;

    return-object v0
.end method

.method static synthetic V0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    return p0
.end method

.method static synthetic W0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    return p1
.end method

.method static synthetic X0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->N1:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    return-object p0
.end method

.method static synthetic Y0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->N1:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    return-object p1
.end method

.method static synthetic Z0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1:Z

    return p0
.end method

.method static synthetic a1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->J1:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->G1:Z

    return p0
.end method

.method static synthetic c1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->D1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    return-object p0
.end method

.method static synthetic d1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->C1:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->n1(I)Z

    move-result p0

    return p0
.end method

.method private g1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h1()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->L1:Z

    .line 2
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    new-instance v1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$d;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j1([I)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    .line 2
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private k1(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->n1(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->C1:Ljava/util/ArrayList;

    add-int/lit16 p1, p1, -0x2712

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private m1()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->Q1:Landroid/widget/Scroller;

    .line 2
    new-instance v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$b;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 3
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->G1:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    .line 5
    :cond_0
    new-instance v0, Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 7
    iput-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    .line 8
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setLoadingMoreEnabled(Z)V

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private n1(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->C1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->Z1:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private o1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->T1:Lcom/join/mgps/ptr/PtrFrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private q1(I)Z
    .locals 1

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_1

    .line 1
    sget-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->Z1:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

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

.method private s1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A1:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->L1:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getTotalItemCount()I

    move-result v1

    iget v2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->P1:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A1:Z

    .line 4
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->L1:Z

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->F1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;->onLoadMore()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->T1:Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    :cond_0
    return-void
.end method

.method protected B1(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->L1:Z

    if-nez p1, :cond_1

    const/16 p1, 0x32

    if-le v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->Q1:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->S1:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->Q1:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setBottomMargin(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 5
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    return-void
.end method

.method public f1(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->Z1:Ljava/util/List;

    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->C1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit16 v1, v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->C1:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fling(II)Z
    .locals 4

    int-to-double v0, p2

    .line 1
    iget-wide v2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->O1:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->D1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;->a()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->J1:Landroid/view/View;

    return-object v0
.end method

.method public getFirstCompletelyVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 8
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j1([I)I

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 10
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j1([I)I

    move-result v0

    goto :goto_0

    .line 11
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 8
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j1([I)I

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 10
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j1([I)I

    move-result v0

    goto :goto_0

    .line 11
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLastCompletelyVisiblePosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 8
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j1([I)I

    move-result v2

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 10
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j1([I)I

    move v1, v2

    goto :goto_0

    .line 11
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    :goto_0
    return v1
.end method

.method public getLastVisiblePosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    new-array v1, v1, [I

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 8
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j1([I)I

    move-result v2

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 10
    invoke-direct {p0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j1([I)I

    move v1, v2

    goto :goto_0

    .line 11
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    :goto_0
    return v1
.end method

.method public getScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->R1:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method getTotalItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->C1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getXRecycleviewWrapAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->D1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;->a()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method i1(Z)V
    .locals 0

    return-void
.end method

.method public l1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->a()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_4

    .line 6
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_2

    .line 10
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    .line 11
    new-instance v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$e;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$e;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_4
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->F1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A1:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 5
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_1

    .line 7
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v2

    new-array v2, v2, [I

    .line 8
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 9
    invoke-direct {p0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->j1([I)I

    move-result v1

    goto :goto_0

    .line 10
    :cond_1
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->T1:Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/ptr/PtrFrameLayout;->l()Z

    move-result v2

    .line 13
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->P1:I

    if-lt v1, v3, :cond_3

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-le v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1:Z

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 15
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->s1()V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->R1:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->E1:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->E1:F

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 4
    iput v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->E1:F

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastVisiblePosition()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getTotalItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 7
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1:Z

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->y1()V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->v1()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->E1:F

    sub-float/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->E1:F

    .line 12
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getTotalItemCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    :cond_3
    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->L1:Z

    if-nez v1, :cond_5

    .line 14
    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1:Z

    if-nez v1, :cond_5

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 15
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1(F)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->E1:F

    .line 17
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method p1()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->N1:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v2, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public r1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A1:Z

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->z1()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    invoke-direct {v0, p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->D1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    .line 2
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->M1:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->M1:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    return-void
.end method

.method public setCanLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->J1:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->M1:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    return-void
.end method

.method public setFlingScale(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->O1:D

    return-void
.end method

.method public setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->F1:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$g;

    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->h1()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->g1()V

    :goto_0
    return-void
.end method

.method public setNoMore()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->z1()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->L1:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1:Z

    .line 6
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    const v1, 0x7f0912ee

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;

    invoke-direct {v1, p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$c;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setNoMoreView(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->L1:Z

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMore()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setLoadingMoreEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setPreLoadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->P1:I

    return-void
.end method

.method public setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->T1:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->U1:Lcom/join/mgps/ptr/a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->T1:Lcom/join/mgps/ptr/PtrFrameLayout;

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->U1:Lcom/join/mgps/ptr/a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->T1:Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    :cond_2
    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->G1:Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setPtrFrameLayout(Lcom/join/mgps/ptr/PtrFrameLayout;)V

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->G1:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->T1:Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    :cond_0
    return-void
.end method

.method public setScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->R1:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public t1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->T1:Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMoreView(Z)V

    return-void
.end method

.method public u1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->setNoMoreView(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->r1()V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->t1()V

    return-void
.end method

.method protected v1()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->getBottomMargin()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->S1:I

    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->Q1:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    neg-int v5, v3

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public w1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->T1:Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    :cond_0
    return-void
.end method

.method public x1()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListViewFooter;->f()V

    return-void
.end method

.method public declared-synchronized y1()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->s1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->L1:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->H1:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->L1:Z

    .line 3
    iput-boolean v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->A1:Z

    .line 4
    iget-boolean v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->B1:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->K1:Lcom/join/mgps/customview/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListViewFooter;->setState(I)V

    :cond_1
    :goto_0
    return-void
.end method
