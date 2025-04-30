.class Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AccountCenterDetialNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AccountCenterDetialNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->a:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->a:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    iget p1, p1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;->a:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->a:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    iget-object p2, p2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    .line 4
    iget-object p1, p1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v0, Lcom/join/mgps/adapter/l;

    iget-object v1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->a:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->h:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, p2, v2}, Lcom/join/mgps/adapter/l;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c013a

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;

    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->a:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c027a

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;

    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;->a:Lcom/join/mgps/activity/AccountCenterDetialNewActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
