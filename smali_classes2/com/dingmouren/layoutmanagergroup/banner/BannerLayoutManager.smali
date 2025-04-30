.class public Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "BannerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;,
        Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "BannerLayoutManager"


# instance fields
.field private a:Landroidx/recyclerview/widget/LinearSnapHelper;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;

.field private d:I

.field private e:I

.field private f:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

.field private g:J

.field private h:I

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->e:I

    const-wide/16 v0, 0x3e8

    .line 3
    iput-wide v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->g:J

    const/high16 v0, 0x43160000    # 150.0f

    .line 4
    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->i:F

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->a:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 6
    iput p3, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->d:I

    .line 7
    new-instance p3, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    invoke-direct {p3, p0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;-><init>(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;)V

    iput-object p3, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->f:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    .line 8
    iput-object p2, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->e:I

    const-wide/16 v0, 0x3e8

    .line 13
    iput-wide v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->g:J

    const/high16 p1, 0x43160000    # 150.0f

    .line 14
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->i:F

    .line 15
    new-instance p1, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->a:Landroidx/recyclerview/widget/LinearSnapHelper;

    .line 16
    iput p3, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->d:I

    .line 17
    new-instance p1, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    invoke-direct {p1, p0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;-><init>(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;)V

    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->f:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    .line 18
    iput-object p2, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 20
    iput p4, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->h:I

    return-void
.end method

.method static synthetic a(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->i:F

    return p0
.end method


# virtual methods
.method public b()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public c(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->c:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->g:J

    return-void
.end method

.method public e(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->i:F

    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->a:Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->f:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->a(Z)V

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 4
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->e:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/os/Message;->what:I

    .line 5
    iget-object p2, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->f:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    iget-wide v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->g:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->a:Landroidx/recyclerview/widget/LinearSnapHelper;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->e:I

    .line 5
    iget-object v2, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->c:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->d:I

    rem-int/2addr v1, v3

    invoke-interface {v2, p1, v1}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$b;->a(Landroid/view/View;I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->f:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    invoke-virtual {p1, v0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->a(Z)V

    .line 7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 8
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->e:I

    .line 9
    iput v1, p1, Landroid/os/Message;->what:I

    .line 10
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->f:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    iget-wide v1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->g:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;->f:Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$c;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$a;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager$a;-><init>(Lcom/dingmouren/layoutmanagergroup/banner/BannerLayoutManager;Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
