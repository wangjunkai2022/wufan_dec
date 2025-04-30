.class Lcom/join/mgps/activity/z$k;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "GameDetialModleFourActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/z;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic b:Lcom/join/mgps/activity/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/z;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/z$k;->b:Lcom/join/mgps/activity/z;

    iput-object p2, p0, Lcom/join/mgps/activity/z$k;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/z$k;->b:Lcom/join/mgps/activity/z;

    iget-object v0, v0, Lcom/join/mgps/activity/z;->x0:Lcom/join/android/app/component/video/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->l(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/z$k;->b:Lcom/join/mgps/activity/z;

    iget-object p3, p0, Lcom/join/mgps/activity/z$k;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    invoke-static {p2, p3}, Lcom/join/mgps/activity/z;->N(Lcom/join/mgps/activity/z;I)I

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/z$k;->b:Lcom/join/mgps/activity/z;

    iget-object p3, p0, Lcom/join/mgps/activity/z$k;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p3

    invoke-static {p2, p3}, Lcom/join/mgps/activity/z;->P(Lcom/join/mgps/activity/z;I)I

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/z$k;->b:Lcom/join/mgps/activity/z;

    iget-object p3, p2, Lcom/join/mgps/activity/z;->x0:Lcom/join/android/app/component/video/c;

    if-eqz p3, :cond_0

    .line 5
    invoke-static {p2}, Lcom/join/mgps/activity/z;->M(Lcom/join/mgps/activity/z;)I

    move-result p2

    iget-object v0, p0, Lcom/join/mgps/activity/z$k;->b:Lcom/join/mgps/activity/z;

    invoke-static {v0}, Lcom/join/mgps/activity/z;->O(Lcom/join/mgps/activity/z;)I

    move-result v0

    iget-object v1, p0, Lcom/join/mgps/activity/z$k;->b:Lcom/join/mgps/activity/z;

    invoke-static {v1}, Lcom/join/mgps/activity/z;->M(Lcom/join/mgps/activity/z;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/join/mgps/activity/z$k;->b:Lcom/join/mgps/activity/z;

    invoke-static {v1}, Lcom/join/mgps/activity/z;->Q(Lcom/join/mgps/activity/z;)Lcom/join/mgps/adapter/l1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/adapter/l1;->getItemCount()I

    move-result v1

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/join/android/app/component/video/c;->h(Landroidx/recyclerview/widget/RecyclerView;III)V

    :cond_0
    return-void
.end method
