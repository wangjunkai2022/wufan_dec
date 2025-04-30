.class public Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DetailRecyclerViewChileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder1"
.end annotation


# instance fields
.field private appName:Landroid/widget/TextView;

.field private comment:Landroid/widget/TextView;

.field private gameScore:Landroid/widget/TextView;

.field private gameStar:Lcom/join/mgps/customview/MStarBar;

.field private icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private img:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private main:Landroid/view/View;

.field private scrolNew:Landroid/widget/TextView;

.field private tag:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900e1

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->appName:Landroid/widget/TextView;

    const p1, 0x7f090583

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/MStarBar;

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    const p1, 0x7f090f1a

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->tag:Landroid/widget/TextView;

    const p1, 0x7f090581

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameScore:Landroid/widget/TextView;

    const p1, 0x7f0909eb

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->main:Landroid/view/View;

    const p1, 0x7f090709

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090687

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f09029e

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->comment:Landroid/widget/TextView;

    const p1, 0x7f090dc2

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->scrolNew:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setData(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    .line 3
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-virtual {v3, v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    :cond_1
    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    .line 4
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v4}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_4

    .line 5
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v4}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v1, :cond_3

    .line 6
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v4}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    invoke-virtual {v4, v5}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 7
    :cond_3
    iget-object v4, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v4}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_4

    .line 8
    iget-object v3, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    invoke-static {v3}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$000(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    invoke-virtual {v3, v1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 9
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getFirst_hot_comment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 12
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x3f408312    # 0.752f

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    :goto_0
    if-nez p1, :cond_6

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/view/DraweeView;->setAspectRatio(F)V

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/a;

    sget-object v3, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v1

    const v4, 0x7f0807b1

    const-string v5, ""

    if-nez p1, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRecommend_game_big_gif()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRecommend_game_big_gif()Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v6, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRecommend_game_big_pic()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getRecommend_game_big_pic()Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object v6, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v4, p1, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    goto :goto_1

    :cond_8
    move-object p1, v5

    .line 23
    :goto_1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 24
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->img:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v1, v4, p1, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 26
    :cond_9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TipBean;

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->tag:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->appName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/d2;->k(D)D

    move-result-wide v3

    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1, v3, v4}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1, v6}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0.0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 34
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameScore:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->scrolNew:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 37
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameStar:Lcom/join/mgps/customview/MStarBar;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->gameScore:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->scrolNew:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;->main:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1$1;-><init>(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder1;Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
