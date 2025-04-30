.class public Lme/relex/circleindicator/CircleIndicator2;
.super Lme/relex/circleindicator/BaseCircleIndicator;
.source "CircleIndicator2.java"


# instance fields
.field private m:Landroidx/recyclerview/widget/RecyclerView;

.field private n:Landroidx/recyclerview/widget/SnapHelper;

.field private final o:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final p:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lme/relex/circleindicator/CircleIndicator2$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator2$a;-><init>(Lme/relex/circleindicator/CircleIndicator2;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2;->o:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 3
    new-instance p1, Lme/relex/circleindicator/CircleIndicator2$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator2$b;-><init>(Lme/relex/circleindicator/CircleIndicator2;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2;->p:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lme/relex/circleindicator/CircleIndicator2$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator2$a;-><init>(Lme/relex/circleindicator/CircleIndicator2;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2;->o:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 6
    new-instance p1, Lme/relex/circleindicator/CircleIndicator2$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator2$b;-><init>(Lme/relex/circleindicator/CircleIndicator2;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2;->p:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lme/relex/circleindicator/CircleIndicator2$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator2$a;-><init>(Lme/relex/circleindicator/CircleIndicator2;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2;->o:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 9
    new-instance p1, Lme/relex/circleindicator/CircleIndicator2$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator2$b;-><init>(Lme/relex/circleindicator/CircleIndicator2;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2;->p:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    new-instance p1, Lme/relex/circleindicator/CircleIndicator2$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator2$a;-><init>(Lme/relex/circleindicator/CircleIndicator2;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2;->o:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 12
    new-instance p1, Lme/relex/circleindicator/CircleIndicator2$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator2$b;-><init>(Lme/relex/circleindicator/CircleIndicator2;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2;->p:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method static synthetic i(Lme/relex/circleindicator/CircleIndicator2;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/relex/circleindicator/CircleIndicator2;->m:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic j(Lme/relex/circleindicator/CircleIndicator2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator2;->l()V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 3
    :goto_0
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator2;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator2;->m(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lme/relex/circleindicator/CircleIndicator2;->e(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->b(I)V

    return-void
.end method

.method public bridge synthetic e(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->e(II)V

    return-void
.end method

.method public getAdapterDataObserver()Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator2;->p:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-object v0
.end method

.method public bridge synthetic h(Lme/relex/circleindicator/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->h(Lme/relex/circleindicator/b;)V

    return-void
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/SnapHelper;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/SnapHelper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iput-object p2, p0, Lme/relex/circleindicator/CircleIndicator2;->n:Landroidx/recyclerview/widget/SnapHelper;

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    .line 4
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator2;->l()V

    .line 5
    iget-object p2, p0, Lme/relex/circleindicator/CircleIndicator2;->o:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 6
    iget-object p2, p0, Lme/relex/circleindicator/CircleIndicator2;->o:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public m(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator2;->n:Landroidx/recyclerview/widget/SnapHelper;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/SnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V
    .locals 0
    .param p1    # Lme/relex/circleindicator/BaseCircleIndicator$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V

    return-void
.end method
