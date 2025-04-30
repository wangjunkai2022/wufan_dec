.class public Lcom/join/mgps/customview/MyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "MyRecyclerView.java"


# instance fields
.field private A1:Lcom/join/mgps/ptr/a;

.field private B1:Lcom/join/mgps/customview/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/join/mgps/customview/MyRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyRecyclerView$a;-><init>(Lcom/join/mgps/customview/MyRecyclerView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView;->A1:Lcom/join/mgps/ptr/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lcom/join/mgps/customview/MyRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyRecyclerView$a;-><init>(Lcom/join/mgps/customview/MyRecyclerView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView;->A1:Lcom/join/mgps/ptr/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lcom/join/mgps/customview/MyRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/customview/MyRecyclerView$a;-><init>(Lcom/join/mgps/customview/MyRecyclerView;)V

    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView;->A1:Lcom/join/mgps/ptr/a;

    return-void
.end method

.method static synthetic R0(Lcom/join/mgps/customview/MyRecyclerView;)Lcom/join/mgps/customview/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/MyRecyclerView;->B1:Lcom/join/mgps/customview/j;

    return-object p0
.end method


# virtual methods
.method public S0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    :cond_0
    return-void
.end method

.method public setPullRefreshEnable(Lcom/join/mgps/customview/j;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/MyRecyclerView;->B1:Lcom/join/mgps/customview/j;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/ptr/PtrFrameLayout;

    iget-object v0, p0, Lcom/join/mgps/customview/MyRecyclerView;->A1:Lcom/join/mgps/ptr/a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    :cond_0
    return-void
.end method
