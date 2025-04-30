.class public Lcom/join/mgps/adapter/k2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeGameListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/k2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/adapter/k2$b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/k2;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/k2;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/adapter/k2;->b:Landroid/content/Context;

    const-class v2, Lcom/join/mgps/activity/GameDetailActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "fromid"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "_from"

    const/16 v1, 0x2b61

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "groupuid"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/k2;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/adapter/k2;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/k2;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public c(Lcom/join/mgps/adapter/k2$b;I)V
    .locals 8
    .param p1    # Lcom/join/mgps/adapter/k2$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/k2;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 3
    iget-object v1, p1, Lcom/join/mgps/adapter/k2$b;->a:Landroid/view/View;

    new-instance v2, Lcom/join/mgps/adapter/k2$a;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/adapter/k2$a;-><init>(Lcom/join/mgps/adapter/k2;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v1, p1, Lcom/join/mgps/adapter/k2$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p1, Lcom/join/mgps/adapter/k2$b;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "by  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p1, Lcom/join/mgps/adapter/k2$b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ge v1, v2, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v5, p0, Lcom/join/mgps/adapter/k2;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c02aa

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f090687

    .line 10
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v7, 0x7f0807b1

    .line 11
    invoke-static {v6, v7, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    if-ge v1, v4, :cond_0

    .line 12
    iget-object v2, p1, Lcom/join/mgps/adapter/k2$b;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    if-ge v1, v3, :cond_1

    .line 13
    iget-object v2, p1, Lcom/join/mgps/adapter/k2$b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_2
    rem-int/lit8 p2, p2, 0x5

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    if-eq p2, v4, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    if-eq p2, v3, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p1, Lcom/join/mgps/adapter/k2$b;->a:Landroid/view/View;

    const p2, 0x7f0804a0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, p1, Lcom/join/mgps/adapter/k2$b;->a:Landroid/view/View;

    const p2, 0x7f08049f

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 17
    :cond_5
    iget-object p1, p1, Lcom/join/mgps/adapter/k2$b;->a:Landroid/view/View;

    const p2, 0x7f08049e

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 18
    :cond_6
    iget-object p1, p1, Lcom/join/mgps/adapter/k2$b;->a:Landroid/view/View;

    const p2, 0x7f08049d

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 19
    :cond_7
    iget-object p1, p1, Lcom/join/mgps/adapter/k2$b;->a:Landroid/view/View;

    const p2, 0x7f08049c

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method public d(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/k2$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/k2;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c02a8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/k2$b;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/k2$b;-><init>(Lcom/join/mgps/adapter/k2;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k2;->a:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/k2$b;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/k2;->c(Lcom/join/mgps/adapter/k2$b;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/k2;->d(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/k2$b;

    move-result-object p1

    return-object p1
.end method
