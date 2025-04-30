.class Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecomendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/recomend/RecomendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/RecomendActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/recomend/RecomendActivity;->allData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->onBindViewHolder(Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;I)V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/recomend/RecomendActivity;->allData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/recomend/RecomentBean;

    .line 3
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->appTag:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->appTag:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->appType:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getSource_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getSource_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->content:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->appIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f0807b1

    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/activity/recomend/RecomentBean;->getIs_select()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 13
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->selectbutn:Landroid/widget/ImageView;

    const v1, 0x7f0802fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->selectbutn:Landroid/widget/ImageView;

    const v1, 0x7f0802f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :goto_2
    iget-object v0, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->main:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;Lcom/join/mgps/activity/recomend/RecomentBean;Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/recomend/RecomendActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0104

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;-><init>(Lcom/join/mgps/activity/recomend/RecomendActivity;Landroid/view/View;)V

    return-object p2
.end method
