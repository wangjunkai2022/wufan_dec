.class Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "XRecyclerView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;


# direct methods
.method private constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;-><init>(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->a1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->b1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->V0(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->a1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->a1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {p3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$f;->a:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    invoke-static {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->c1(Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;)Lcom/join/android/app/component/xrecyclerview/XRecyclerView2$h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
