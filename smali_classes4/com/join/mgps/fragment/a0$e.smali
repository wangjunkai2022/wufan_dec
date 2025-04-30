.class Lcom/join/mgps/fragment/a0$e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DIscoveryTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/a0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/a0$e;->a:Lcom/join/mgps/fragment/a0;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a0$e;->a:Lcom/join/mgps/fragment/a0;

    iget v1, v0, Lcom/join/mgps/fragment/a0;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/join/mgps/fragment/a0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/fragment/a0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/a0$e;->a:Lcom/join/mgps/fragment/a0;

    iget p1, p1, Lcom/join/mgps/fragment/a0;->h:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/a0$e;->a:Lcom/join/mgps/fragment/a0;

    iget v1, v0, Lcom/join/mgps/fragment/a0;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2
    check-cast p1, Lcom/join/mgps/fragment/a0$d;

    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/a0;->n:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;

    .line 4
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$d;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$d;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$d;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getSend_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$d;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getAvatar_src()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "{}"

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getVideo_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getImage_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListWeiboItemBean;->getImage_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :goto_1
    iget-object p1, p1, Lcom/join/mgps/fragment/a0$d;->f:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/fragment/a0$e$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/fragment/a0$e$a;-><init>(Lcom/join/mgps/fragment/a0$e;Lcom/join/mgps/dto/DiscoverListWeiboItemBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 15
    :cond_2
    check-cast p1, Lcom/join/mgps/fragment/a0$c;

    .line 16
    iget-object v0, v0, Lcom/join/mgps/fragment/a0;->m:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/DiscoverListItemBean;

    .line 17
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$c;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$c;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getCommit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$c;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getView()I

    move-result v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$c;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p1, Lcom/join/mgps/fragment/a0$c;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f080a74

    invoke-virtual {p2}, Lcom/join/mgps/dto/DiscoverListItemBean;->getBig_pic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 22
    iget-object p1, p1, Lcom/join/mgps/fragment/a0$c;->e:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/fragment/a0$e$b;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/fragment/a0$e$b;-><init>(Lcom/join/mgps/fragment/a0$e;Lcom/join/mgps/dto/DiscoverListItemBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
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
    invoke-virtual {p0, p2}, Lcom/join/mgps/fragment/a0$e;->getItemViewType(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/fragment/a0$e;->a:Lcom/join/mgps/fragment/a0;

    iget-object p2, p2, Lcom/join/mgps/fragment/a0;->j:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c01b8

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/join/mgps/fragment/a0$d;

    iget-object v0, p0, Lcom/join/mgps/fragment/a0$e;->a:Lcom/join/mgps/fragment/a0;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/a0$d;-><init>(Lcom/join/mgps/fragment/a0;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/fragment/a0$e;->a:Lcom/join/mgps/fragment/a0;

    iget-object p2, p2, Lcom/join/mgps/fragment/a0;->j:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c01b7

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/join/mgps/fragment/a0$c;

    iget-object v0, p0, Lcom/join/mgps/fragment/a0$e;->a:Lcom/join/mgps/fragment/a0;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/fragment/a0$c;-><init>(Lcom/join/mgps/fragment/a0;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
