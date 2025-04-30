.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "IntroductionCommentListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public addData(Lcom/join/mgps/dto/BbsCommentListBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/BbsCommentListBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getItem(I)Lcom/join/mgps/dto/BbsCommentListBean;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BbsCommentListBean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->getItem(I)Lcom/join/mgps/dto/BbsCommentListBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/BbsCommentListBean;->isReplay()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/base/b;

    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->onBindViewHolder(Lcom/join/mgps/base/b;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/mgps/base/b;I)V
    .locals 8
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->getItem(I)Lcom/join/mgps/dto/BbsCommentListBean;

    move-result-object p2

    const v0, 0x7f0902eb

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->isReplay()Z

    move-result v0

    const v1, 0x7f090e7b

    const v3, 0x7f091237

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 6
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getRnickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    const v4, 0x7f11016e

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    const v4, 0x7f11016f

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getRnickname()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getMsg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 11
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getLike()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f091185

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getPraise()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0805fa

    goto :goto_0

    :cond_2
    const v0, 0x7f0805fb

    :goto_0
    const v3, 0x7f09081f

    invoke-virtual {p1, v3, v0}, Lcom/join/mgps/base/b;->x(II)Lcom/join/mgps/base/b;

    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getPraise()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "#3392FF"

    goto :goto_1

    :cond_3
    const-string v0, "#575F79"

    :goto_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 16
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$1;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090813

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 18
    new-instance v1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$2;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;Landroid/widget/ImageView;Lcom/join/mgps/dto/BbsCommentListBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :goto_2
    iget-object v1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v4, v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->regText:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->getRnickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/join/mgps/dto/BbsCommentListBean;->isReplay()Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->matchText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$3;

    invoke-direct {v0, p0, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter$3;-><init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;Lcom/join/mgps/dto/BbsCommentListBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/base/b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/join/mgps/base/b;

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0317

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Lcom/join/mgps/base/b;

    iget-object v0, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0316

    invoke-static {v0, v1, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public setNewData(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BbsCommentListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$ItemDetailAdapter;->mData:Ljava/util/List;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
