.class public Lcom/join/mgps/recycler/f;
.super Ljava/lang/Object;
.source "RecyclerViewStateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)Lcom/join/mgps/recycler/LoadingFooter$State;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/join/mgps/recycler/a;

    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->c()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/recycler/LoadingFooter;

    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/recycler/LoadingFooter;->getState()Lcom/join/mgps/recycler/LoadingFooter$State;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lcom/join/mgps/recycler/LoadingFooter$State;->Normal:Lcom/join/mgps/recycler/LoadingFooter$State;

    return-object p0
.end method

.method public static b(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;ILcom/join/mgps/recycler/LoadingFooter$State;Landroid/view/View$OnClickListener;)V
    .locals 2

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    instance-of v1, v0, Lcom/join/mgps/recycler/a;

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    check-cast v0, Lcom/join/mgps/recycler/a;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->e()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v1, p2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    move-result p2

    if-lez p2, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->c()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/recycler/LoadingFooter;

    .line 8
    invoke-virtual {p0, p3}, Lcom/join/mgps/recycler/LoadingFooter;->setState(Lcom/join/mgps/recycler/LoadingFooter$State;)V

    .line 9
    sget-object p2, Lcom/join/mgps/recycler/LoadingFooter$State;->NetWorkError:Lcom/join/mgps/recycler/LoadingFooter$State;

    if-ne p3, p2, :cond_3

    .line 10
    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 12
    :cond_4
    new-instance p2, Lcom/join/mgps/recycler/LoadingFooter;

    invoke-direct {p2, p0}, Lcom/join/mgps/recycler/LoadingFooter;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {p2, p3}, Lcom/join/mgps/recycler/LoadingFooter;->setState(Lcom/join/mgps/recycler/LoadingFooter$State;)V

    .line 14
    sget-object p0, Lcom/join/mgps/recycler/LoadingFooter$State;->NetWorkError:Lcom/join/mgps/recycler/LoadingFooter$State;

    if-ne p3, p0, :cond_5

    .line 15
    invoke-virtual {p2, p4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_5
    invoke-virtual {v0, p2}, Lcom/join/mgps/recycler/a;->a(Landroid/view/View;)V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;Lcom/join/mgps/recycler/LoadingFooter$State;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/join/mgps/recycler/a;

    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->c()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/recycler/LoadingFooter;

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/LoadingFooter;->setState(Lcom/join/mgps/recycler/LoadingFooter$State;)V

    :cond_0
    return-void
.end method
