.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VipCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VipcenterAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goVip(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->getType()I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->onBindViewHolder(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;I)V
    .locals 7
    .param p1    # Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;

    .line 3
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->getItemViewType(I)I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_7

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 5
    check-cast p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;

    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;->listview:Lit/sephiroth/android/library/widget/HListView;

    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {v0, v1, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 8
    check-cast p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;

    .line 9
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;->listview:Lit/sephiroth/android/library/widget/HListView;

    new-instance v0, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    const/16 v2, 0x8b

    invoke-direct {v0, p2, v1, v2}, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;

    .line 11
    check-cast p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;

    .line 12
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u4f1a\u5458\u4e13\u4eab\u5408\u96c6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$6;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$6;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/bean/VipCenterGameListitem;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 17
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCenterDataMain;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 18
    check-cast p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    .line 19
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->todayScratchNumber:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4eca\u65e5\u5269\u4f59\u673a\u4f1a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u6b21"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getLastPrize()Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratchBack:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getLastPrize()Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_5
    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 23
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/ScratchView;->setCanCratch(Z)V

    .line 24
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScratchView;->setNumber(I)V

    goto :goto_1

    .line 25
    :cond_6
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScratchView;->setCanCratch(Z)V

    .line 26
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {p2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScratchView;->setNumber(I)V

    .line 27
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScratchView;->setOnScratchListener(Lcom/join/mgps/customview/ScratchView$c;)V

    .line 28
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScratchView;->setOnCompleteListener(Lcom/join/mgps/customview/ScratchView$b;)V

    .line 29
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeListLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$3;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$3;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeDataLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->prizeRuleLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$5;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 32
    :cond_7
    check-cast p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;

    .line 33
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p2

    .line 34
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;->detail:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/activity/vipzone/a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/vipzone/a;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    .line 37
    :try_start_0
    invoke-static {v0, v1}, Lcom/join/mgps/Util/x;->q(J)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    const/16 v0, 0x7f5

    if-lt v2, v0, :cond_8

    .line 39
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;->time:Landroid/widget/TextView;

    const-string v1, "\u609f\u996dVIP \u7ec8\u751f\u4f1a\u5458"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 40
    :cond_8
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;->time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u609f\u996dVIP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getVip_exp_time()J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-static {v5, v6}, Lcom/join/mgps/Util/x;->j(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5230\u671f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :goto_3
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;->iv_user_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :goto_4
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070f88

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHeight(I)V

    .line 4
    new-instance p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c05ec

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHlistHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c05f0

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipTitleHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V

    goto :goto_0

    .line 9
    :pswitch_3
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c05ef

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V

    goto :goto_0

    .line 11
    :pswitch_4
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c05f1

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipCardHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Landroid/view/View;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
