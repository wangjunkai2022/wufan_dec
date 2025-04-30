.class Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchRankingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/search/SearchRankingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchRankingAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/search/SearchRankingFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/search/SearchRankingFragment;->listDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->onBindViewHolder(Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;I)V
    .locals 6
    .param p1    # Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/search/SearchRankingFragment;->listDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameInfoBean;

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 3
    iget-object v2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->rankingNumberBack:Landroid/widget/TextView;

    const v3, 0x7f080ace

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_1

    .line 4
    iget-object v2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->rankingNumberBack:Landroid/widget/TextView;

    const v3, 0x7f080ad0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 5
    iget-object v2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->rankingNumberBack:Landroid/widget/TextView;

    const v3, 0x7f080ad1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->rankingNumberBack:Landroid/widget/TextView;

    const v3, 0x7f080acf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    iget-object v2, v2, Lcom/join/mgps/activity/search/SearchRankingFragment;->listDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    if-ne p2, v2, :cond_3

    .line 8
    iget-object v2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->line:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_3
    iget-object v2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0807b1

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_ico()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 11
    iget-object v2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->rankingNumber:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p2, v1

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->main:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;-><init>(Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;Lcom/join/mgps/dto/GameInfoBean;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->isThe_hot()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    .line 15
    iget-object p2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    const-string v0, "\u70ed"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    const v0, 0x7f080311

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    iget-object p1, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    const-string p2, "#FF7039"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 19
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->isThe_new()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    iget-object p2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    const-string v0, "\u65b0"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p2, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    const v0, 0x7f080314

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 23
    iget-object p1, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;->tag:Landroid/widget/TextView;

    const-string p2, "#FF911A"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    :goto_1
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    iget-object p2, p2, Lcom/join/mgps/activity/search/SearchRankingFragment;->activity:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0577

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;-><init>(Lcom/join/mgps/activity/search/SearchRankingFragment;Landroid/view/View;)V

    return-object p2
.end method
