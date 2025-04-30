.class public Lcom/join/mgps/fragment/j2$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/j2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/j2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    iget-object v0, v0, Lcom/join/mgps/fragment/j2;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    iget-object v0, v0, Lcom/join/mgps/fragment/j2;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/fragment/j2$g;

    iget p1, p1, Lcom/join/mgps/fragment/j2$g;->b:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/j2$c;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_a

    .line 2
    check-cast p1, Lcom/join/mgps/fragment/j2$f;

    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/j2$f;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance p2, Lcom/join/mgps/fragment/j2$e;

    iget-object v0, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    invoke-direct {p2, v0}, Lcom/join/mgps/fragment/j2$e;-><init>(Lcom/join/mgps/fragment/j2;)V

    invoke-virtual {p1, p2}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4

    .line 4
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    iget-object v4, v4, Lcom/join/mgps/fragment/j2;->l:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/fragment/j2$g;

    iget-object v4, v4, Lcom/join/mgps/fragment/j2$g;->a:Ljava/lang/Object;

    check-cast v4, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 5
    check-cast p1, Lcom/join/mgps/fragment/j2$d;

    .line 6
    iget-object v5, p1, Lcom/join/mgps/fragment/j2$d;->a:Landroid/view/View;

    new-instance v6, Lcom/join/mgps/fragment/j2$c$a;

    invoke-direct {v6, p0, v4}, Lcom/join/mgps/fragment/j2$c$a;-><init>(Lcom/join/mgps/fragment/j2$c;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v5, p1, Lcom/join/mgps/fragment/j2$d;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v5, p1, Lcom/join/mgps/fragment/j2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getNick_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v5, p1, Lcom/join/mgps/fragment/j2$d;->g:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getBook_count()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u8ba2\u9605"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v5, p1, Lcom/join/mgps/fragment/j2$d;->f:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_count()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u6b3e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v5, p1, Lcom/join/mgps/fragment/j2$d;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v5, 0x7f0807b1

    const v6, 0x7f090687

    const/4 v7, 0x0

    const v8, 0x7f0c02a9

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    .line 12
    :goto_1
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge p2, v9, :cond_4

    .line 13
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;

    .line 14
    iget-object v10, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    iget-object v10, v10, Lcom/join/mgps/fragment/j2;->d:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    invoke-virtual {v10, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 15
    invoke-virtual {v10, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    invoke-virtual {v9}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v5, v9}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    if-ge v0, v1, :cond_2

    .line 17
    iget-object v9, p1, Lcom/join/mgps/fragment/j2$d;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object v9, p1, Lcom/join/mgps/fragment/j2$d;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;

    .line 20
    iget-object v9, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    iget-object v9, v9, Lcom/join/mgps/fragment/j2;->d:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    invoke-virtual {v9, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 21
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v5, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 23
    iget-object v4, p1, Lcom/join/mgps/fragment/j2$d;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 24
    :cond_4
    rem-int/lit8 p2, p2, 0x5

    if-eqz p2, :cond_9

    if-eq p2, v3, :cond_8

    if-eq p2, v1, :cond_7

    if-eq p2, v2, :cond_6

    const/4 v0, 0x4

    if-eq p2, v0, :cond_5

    goto :goto_4

    .line 25
    :cond_5
    iget-object p1, p1, Lcom/join/mgps/fragment/j2$d;->a:Landroid/view/View;

    const p2, 0x7f0804a0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 26
    :cond_6
    iget-object p1, p1, Lcom/join/mgps/fragment/j2$d;->a:Landroid/view/View;

    const p2, 0x7f08049f

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 27
    :cond_7
    iget-object p1, p1, Lcom/join/mgps/fragment/j2$d;->a:Landroid/view/View;

    const p2, 0x7f08049e

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 28
    :cond_8
    iget-object p1, p1, Lcom/join/mgps/fragment/j2$d;->a:Landroid/view/View;

    const p2, 0x7f08049d

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 29
    :cond_9
    iget-object p1, p1, Lcom/join/mgps/fragment/j2$d;->a:Landroid/view/View;

    const p2, 0x7f08049c

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_a
    :goto_4
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    iget-object p2, p2, Lcom/join/mgps/fragment/j2;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c02a6

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/fragment/j2$d;

    iget-object v0, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/j2$d;-><init>(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    iget-object p2, p2, Lcom/join/mgps/fragment/j2;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c02a8

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/join/mgps/fragment/j2$d;

    iget-object v0, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/j2$d;-><init>(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 5
    iget-object p2, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    iget-object p2, p2, Lcom/join/mgps/fragment/j2;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c02a7

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/join/mgps/fragment/j2$f;

    iget-object v0, p0, Lcom/join/mgps/fragment/j2$c;->a:Lcom/join/mgps/fragment/j2;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/j2$f;-><init>(Lcom/join/mgps/fragment/j2;Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
