.class Lcom/join/mgps/activity/FriendActivity$g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FriendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FriendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/FriendActivity$g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Lcom/join/mgps/activity/FriendActivity$h;

.field final synthetic f:Lcom/join/mgps/activity/FriendActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/FriendActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$g;->f:Lcom/join/mgps/activity/FriendActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$g;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity$g;->b:Z

    .line 4
    iput-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity$g;->c:Z

    .line 5
    iput-object p2, p0, Lcom/join/mgps/activity/FriendActivity$g;->d:Landroid/content/Context;

    .line 6
    iput-boolean p3, p0, Lcom/join/mgps/activity/FriendActivity$g;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/FriendActivity$g;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/FriendActivity$g;->d(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic d(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$g;->e:Lcom/join/mgps/activity/FriendActivity$h;

    invoke-interface {p2, p1}, Lcom/join/mgps/activity/FriendActivity$h;->onItemClick(I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$g;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(ILcom/join/mgps/activity/FriendActivity$g$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    .line 2
    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity$g$a;->a(Lcom/join/mgps/activity/FriendActivity$g$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity$g$a;->b(Lcom/join/mgps/activity/FriendActivity$g$a;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getPic_cover()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    const v4, 0x7f0801c0

    invoke-static {v1, v4, v2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 4
    iget-boolean v1, p0, Lcom/join/mgps/activity/FriendActivity$g;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/activity/FriendActivity$g;->f:Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/FriendActivity;->a1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity$g$a;->c(Lcom/join/mgps/activity/FriendActivity$g$a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity$g$a;->c(Lcom/join/mgps/activity/FriendActivity$g$a;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :goto_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/FriendActivity$g;->c:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    iget-object v5, p0, Lcom/join/mgps/activity/FriendActivity$g;->f:Lcom/join/mgps/activity/FriendActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0712ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 12
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 13
    :cond_1
    invoke-static {p2}, Lcom/join/mgps/activity/FriendActivity$g$a;->b(Lcom/join/mgps/activity/FriendActivity$g$a;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object p2

    new-instance v0, Lcom/join/mgps/activity/x;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/x;-><init>(Lcom/join/mgps/activity/FriendActivity$g;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$g;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity$g;->b:Z

    return-void
.end method

.method public g(Lcom/join/mgps/activity/FriendActivity$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendActivity$g;->e:Lcom/join/mgps/activity/FriendActivity$h;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendActivity$g;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/FriendActivity$g;->c:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/activity/FriendActivity$g$a;

    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/activity/FriendActivity$g;->c(ILcom/join/mgps/activity/FriendActivity$g$a;)V

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

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/FriendActivity$g;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0310

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/activity/FriendActivity$g$a;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/activity/FriendActivity$g$a;-><init>(Lcom/join/mgps/activity/FriendActivity$g;Landroid/view/View;)V

    return-object p2
.end method
