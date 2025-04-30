.class Lcom/join/mgps/activity/FriendActivity$j;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/FriendActivity$i;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/join/mgps/activity/FriendActivity$h;

.field final synthetic c:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/FriendActivity$j;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/FriendActivity$j;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity$j;->c(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic c(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {p2, p1}, Lcom/join/mgps/activity/FriendActivity;->Q0(Lcom/join/mgps/activity/FriendActivity;I)I

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$j;->b:Lcom/join/mgps/activity/FriendActivity$h;

    invoke-interface {p2, p1}, Lcom/join/mgps/activity/FriendActivity$h;->onItemClick(I)V

    return-void
.end method


# virtual methods
.method public b()Lcom/join/mgps/dto/GameInfoBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->E:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->E:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result v0

    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendActivity$j;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/FriendActivity;->E:Ljava/util/List;

    invoke-static {v0}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public d(Lcom/join/mgps/activity/FriendActivity$i;I)V
    .locals 4
    .param p1    # Lcom/join/mgps/activity/FriendActivity$i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->E:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, -0x400

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/FriendActivity;->G:Lcom/join/mgps/dto/GameInfoBean;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/FriendActivity;->G:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {v1, p2}, Lcom/join/mgps/activity/FriendActivity;->Q0(Lcom/join/mgps/activity/FriendActivity;I)I

    .line 4
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$i;->a:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 7
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$i;->a:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$i;->a:Landroid/widget/TextView;

    const-string v3, "#C3C3C3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :goto_0
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$i;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result v3

    if-ne v3, p2, :cond_2

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_2
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/FriendActivity;->P0(Lcom/join/mgps/activity/FriendActivity;)I

    move-result v3

    if-ne v3, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 11
    iget-object v1, p1, Lcom/join/mgps/activity/FriendActivity$i;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/activity/y;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/y;-><init>(Lcom/join/mgps/activity/FriendActivity$j;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/FriendActivity$i;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$j;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c04e0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f08092a

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f88

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    new-instance p2, Lcom/join/mgps/activity/FriendActivity$i;

    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/FriendActivity$i;-><init>(Lcom/join/mgps/activity/FriendActivity;Landroid/view/View;)V

    return-object p2
.end method

.method public f(Lcom/join/mgps/activity/FriendActivity$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$j;->b:Lcom/join/mgps/activity/FriendActivity$h;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$j;->c:Lcom/join/mgps/activity/FriendActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/FriendActivity;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/activity/FriendActivity$i;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity$j;->d(Lcom/join/mgps/activity/FriendActivity$i;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity$j;->e(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/FriendActivity$i;

    move-result-object p1

    return-object p1
.end method
