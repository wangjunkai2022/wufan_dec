.class Lcom/join/mgps/activity/arena/GameRoomListActivity$z;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameRoomListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/arena/GameRoomListActivity$y;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/join/mgps/activity/arena/GameRoomListActivity$w;

.field final synthetic b:Lcom/join/mgps/activity/arena/GameRoomListActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/arena/GameRoomListActivity$z;)Lcom/join/mgps/activity/arena/GameRoomListActivity$w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity$w;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/join/mgps/dto/GameInfoBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result v0

    invoke-virtual {p0}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    invoke-static {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public c(Lcom/join/mgps/activity/arena/GameRoomListActivity$y;I)V
    .locals 5
    .param p1    # Lcom/join/mgps/activity/arena/GameRoomListActivity$y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, -0x1000000

    const/16 v4, -0x400

    if-ne v1, v4, :cond_0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/arena/GameRoomListActivity;->o0:Lcom/join/mgps/dto/GameInfoBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameInfoBean;->getCollection_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Z1(Lcom/join/mgps/activity/arena/GameRoomListActivity;I)I

    .line 4
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 7
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->b:Landroid/widget/TextView;

    const-string v3, "#C3C3C3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :goto_0
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->Y1(Lcom/join/mgps/activity/arena/GameRoomListActivity;)I

    move-result v3

    if-ne v3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 10
    :goto_2
    iget-object v1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;->a:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z$a;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity$z;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/arena/GameRoomListActivity$y;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/arena/GameRoomListActivity;->T1:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c04e0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;

    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;-><init>(Lcom/join/mgps/activity/arena/GameRoomListActivity;Landroid/view/View;)V

    return-object p2
.end method

.method public e(Lcom/join/mgps/activity/arena/GameRoomListActivity$w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->a:Lcom/join/mgps/activity/arena/GameRoomListActivity$w;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->b:Lcom/join/mgps/activity/arena/GameRoomListActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;->X1:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomListActivity$y;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->c(Lcom/join/mgps/activity/arena/GameRoomListActivity$y;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/arena/GameRoomListActivity$z;->d(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/arena/GameRoomListActivity$y;

    move-result-object p1

    return-object p1
.end method
