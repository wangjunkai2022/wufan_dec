.class public Lcom/join/mgps/recycler/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HeaderAndFooterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/recycler/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:I = -0x80000000

.field private static final f:I = -0x7fffffff


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/recycler/a;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/recycler/a;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/join/mgps/recycler/a$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/recycler/a$a;-><init>(Lcom/join/mgps/recycler/a;)V

    iput-object v0, p0, Lcom/join/mgps/recycler/a;->d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/recycler/a;->b:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/recycler/a;->c:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Lcom/join/mgps/recycler/a$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/recycler/a$a;-><init>(Lcom/join/mgps/recycler/a;)V

    iput-object v0, p0, Lcom/join/mgps/recycler/a;->d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/a;->h(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "footer is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "header is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/recycler/a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/recycler/a;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public f(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFooterViewsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/high16 v0, -0x80000000

    add-int/2addr p1, v0

    return p1

    :cond_0
    if-gt v1, p1, :cond_2

    add-int v2, v1, v0

    if-ge p1, v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    const v0, 0x3fffffff    # 1.9999999f

    if-ge p1, v0, :cond_1

    add-int/2addr p1, v0

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "your adapter\'s return value of getViewTypeCount() must < Integer.MAX_VALUE / 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const v2, -0x7fffffff

    add-int/2addr p1, v2

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    return p1
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/join/mgps/recycler/a;->d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->d:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 5
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getHeaderViewsCount()I

    move-result v0

    const/high16 v1, -0x80000000

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 2
    new-instance p1, Lcom/join/mgps/recycler/a$b;

    iget-object v0, p0, Lcom/join/mgps/recycler/a;->b:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/join/mgps/recycler/a$b;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    const v1, -0x7fffffff

    if-lt p2, v1, :cond_1

    if-ge p2, v0, :cond_1

    .line 3
    new-instance p1, Lcom/join/mgps/recycler/a$b;

    iget-object v0, p0, Lcom/join/mgps/recycler/a;->c:Ljava/util/ArrayList;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/join/mgps/recycler/a$b;-><init>(Landroid/view/View;)V

    return-object p1

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/recycler/a;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/recycler/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
