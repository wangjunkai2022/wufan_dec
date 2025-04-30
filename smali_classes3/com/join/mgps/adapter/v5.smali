.class public Lcom/join/mgps/adapter/v5;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SimulatorExitPlayFriendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/v5$c;,
        Lcom/join/mgps/adapter/v5$b;,
        Lcom/join/mgps/adapter/v5$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/join/mgps/adapter/v5$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/v5;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/v5;->c:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/v5;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/v5;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/v5;->h(Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/dto/GamedetialModleFourBean;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/join/mgps/adapter/v5;->i(Lcom/join/mgps/dto/GamedetialModleFourBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/v5;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/v5;->g(Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V

    return-void
.end method

.method private synthetic g(Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/v5;->d:Lcom/join/mgps/adapter/v5$a;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/v5$a;->b(I)V

    :cond_0
    return-void
.end method

.method private synthetic h(Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/v5;->d:Lcom/join/mgps/adapter/v5$a;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/v5$a;->c(I)V

    :cond_0
    return-void
.end method

.method private static synthetic i(Lcom/join/mgps/dto/GamedetialModleFourBean;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tpl_two_position()I

    move-result v4

    const/16 v5, 0x332d

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v5;->c:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v5;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()Lcom/join/mgps/adapter/v5$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v5;->d:Lcom/join/mgps/adapter/v5$a;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/v5;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/v5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v5;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/join/mgps/adapter/v5$b;

    if-eqz v0, :cond_8

    .line 2
    check-cast p1, Lcom/join/mgps/adapter/v5$b;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/v5;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game_big_gif()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game_big_gif()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v5, p1, Lcom/join/mgps/adapter/v5$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game_big_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v5, 0x7f0807b1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game_big_pic()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v6, p1, Lcom/join/mgps/adapter/v5$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v7, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v6, v5, v1, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v6, p1, Lcom/join/mgps/adapter/v5$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v7, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v6, v5, v1, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 13
    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/join/mgps/adapter/v5$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v1, p1, Lcom/join/mgps/adapter/v5$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, p1, Lcom/join/mgps/adapter/v5$b;->i:Landroid/view/View;

    new-instance v5, Lcom/join/mgps/adapter/u5;

    invoke-direct {v5, v0}, Lcom/join/mgps/adapter/u5;-><init>(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, p1, Lcom/join/mgps/adapter/v5$b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 18
    :goto_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    if-le v1, v2, :cond_4

    goto :goto_2

    .line 19
    :cond_4
    iget-object v5, p1, Lcom/join/mgps/adapter/v5$b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/TipBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/join/mgps/adapter/v5;->o(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v0, 0x8

    if-nez p2, :cond_6

    .line 20
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$b;->f:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$b;->h:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p1, Lcom/join/mgps/adapter/v5$b;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/adapter/v5;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p2, v1, :cond_7

    .line 24
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$b;->f:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$b;->h:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p1, Lcom/join/mgps/adapter/v5$b;->g:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 27
    :cond_7
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$b;->f:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$b;->h:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p1, p1, Lcom/join/mgps/adapter/v5$b;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v5;->c:Ljava/util/List;

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v5;->b:Ljava/util/List;

    return-void
.end method

.method m(Landroid/view/View;Landroid/widget/ImageView;I)V
    .locals 2

    const/16 v0, 0x8

    if-lez p3, :cond_0

    const/4 v1, 0x7

    if-ge p3, v1, :cond_0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_0
    const p3, 0x7f080803

    .line 7
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f080804

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    const p3, 0x7f0807fd

    .line 9
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f0807fe

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    const p3, 0x7f0807ff

    .line 11
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f080800

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_3
    const p3, 0x7f0807fb

    .line 13
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f0807fc

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_4
    const p3, 0x7f080801

    .line 15
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f080802

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_5
    const p3, 0x7f080805

    .line 17
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p2, 0x7f08017c

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(Lcom/join/mgps/adapter/v5$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v5;->d:Lcom/join/mgps/adapter/v5$a;

    return-void
.end method

.method o(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/v5;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const-string p1, "#FFA8A8A8"

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/v5;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07110f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/adapter/v5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f87

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1, v1, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/join/mgps/adapter/v5$c;

    if-eqz v0, :cond_8

    .line 2
    check-cast p1, Lcom/join/mgps/adapter/v5$c;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/v5;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->d:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->f:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->e:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/adapter/v5;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p2, v3, :cond_1

    .line 8
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->d:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->f:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->e:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->d:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->f:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->e:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getLevel()I

    move-result p2

    .line 15
    iget-object v3, p1, Lcom/join/mgps/adapter/v5$c;->k:Landroid/widget/ImageView;

    iget-object v4, p1, Lcom/join/mgps/adapter/v5$c;->j:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v4, p2}, Lcom/join/mgps/adapter/v5;->m(Landroid/view/View;Landroid/widget/ImageView;I)V

    .line 16
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 17
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getLevelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->l:Landroid/view/View;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isVip()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getMemberTitle()Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 21
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getMemberTitle()Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;->getBattleColor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 22
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getMemberTitle()Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;->getBattleColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 23
    :cond_3
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->b:Landroid/widget/TextView;

    const-string v1, "#FFFFB543"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_2
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getMemberTitle()Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;->getBattleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isAddFriendStatus()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isSendFriendRequestStatus()Z

    move-result p2

    if-nez p2, :cond_5

    .line 27
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->c:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 29
    :cond_5
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isSendFriendRequestStatus()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isSendFriendRequestStatus()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 31
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->c:Landroid/widget/TextView;

    const-string v2, "\u5df2\u53d1\u9001"

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 33
    :cond_6
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->c:Landroid/widget/TextView;

    const-string v2, "\u6dfb\u52a0\u597d\u53cb"

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/t5;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/adapter/t5;-><init>(Lcom/join/mgps/adapter/v5;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :goto_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isLikeStatus()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 36
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->i:Landroid/widget/ImageView;

    const v1, 0x7f080760

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 37
    iget-object p1, p1, Lcom/join/mgps/adapter/v5$c;->i:Landroid/widget/ImageView;

    new-instance p2, Lcom/join/mgps/adapter/s5;

    invoke-direct {p2, p0, v0}, Lcom/join/mgps/adapter/s5;-><init>(Lcom/join/mgps/adapter/v5;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 38
    :cond_7
    iget-object p2, p1, Lcom/join/mgps/adapter/v5$c;->i:Landroid/widget/ImageView;

    const v0, 0x7f080761

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 39
    iget-object p1, p1, Lcom/join/mgps/adapter/v5$c;->i:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 40
    :cond_8
    instance-of v0, p1, Lcom/join/mgps/adapter/v5$b;

    if-eqz v0, :cond_9

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/v5;->j(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
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
    new-instance p2, Lcom/join/mgps/adapter/v5$b;

    iget-object v1, p0, Lcom/join/mgps/adapter/v5;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0592

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/v5$b;-><init>(Lcom/join/mgps/adapter/v5;Landroid/view/View;)V

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/v5$c;

    iget-object v1, p0, Lcom/join/mgps/adapter/v5;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0591

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/v5$c;-><init>(Lcom/join/mgps/adapter/v5;Landroid/view/View;)V

    return-object p2
.end method
