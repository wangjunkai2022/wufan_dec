.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VipSpecialZoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpecialAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->getType()I

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
    check-cast p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->onBindViewHolder(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;I)V
    .locals 17
    .param p1    # Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 2
    iget-object v2, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->vipCenterDataMains:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;

    .line 3
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;->getGame_list()Ljava/util/List;

    move-result-object v0

    .line 6
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHlistHolder;

    .line 7
    iget-object v2, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHlistHolder;->listview:Lit/sephiroth/android/library/widget/HListView;

    new-instance v3, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;

    iget-object v4, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v5, v4, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    iget v4, v4, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->_from:I

    invoke-direct {v3, v0, v5, v4}, Lcom/join/mgps/activity/vipzone/GameHlistAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_3

    .line 8
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    .line 9
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;

    .line 10
    iget-object v3, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\u70ed\u95e8\u6e38\u620f"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v6, 0x7f0710c1

    const/4 v7, 0x0

    if-nez v3, :cond_2

    .line 12
    iget-object v3, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    const-string v5, "\u5168\u90e8"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v3, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 14
    iget-object v3, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    const v5, 0x7f080bc7

    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v7, v3, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v2, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    new-instance v3, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 18
    :cond_2
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->line:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 21
    iget-object v0, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    const v3, 0x7f080bc4

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v0, v4, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    iget-object v3, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    invoke-virtual {v3, v7, v7, v0, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;->more:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;

    invoke-direct {v2, v1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 25
    :cond_3
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipCenterDataMain;->object:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 26
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    mul-double v7, v7, v9

    mul-double v7, v7, v9

    double-to-long v7, v7

    .line 29
    iget-object v9, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->line:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v9, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->line:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 31
    iget-object v10, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {v10}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0710db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iget-object v11, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {v11}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07117e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    invoke-virtual {v9, v10, v4, v11, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 32
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->line:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v11

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v13

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v14

    iget-object v15, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->tipsLayout:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    move-object/from16 v16, v4

    invoke-static/range {v10 .. v16}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/join/mgps/Util/UtilsMy;->c1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 37
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->downloadViewStroke:Lcom/join/mgps/customview/DownloadViewStroke;

    invoke-virtual {v4, v6, v0}, Lcom/join/mgps/customview/DownloadViewStroke;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 38
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->describe:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v4, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->relateLayoutApp:Landroid/widget/RelativeLayout;

    new-instance v9, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$3;

    invoke-direct {v9, v1, v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$3;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v9}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->tipsLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->giftPackageSwich:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_4
    if-nez v6, :cond_5

    .line 44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->updateUi(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 45
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dd "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "infoo"

    invoke-static {v4, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_a

    const/16 v4, 0x30

    if-eq v0, v4, :cond_b

    const-wide/16 v9, 0x0

    const-string v4, "/"

    if-eq v0, v5, :cond_8

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_a

    const/4 v3, 0x6

    if-eq v0, v3, :cond_6

    const/4 v3, 0x7

    if-eq v0, v3, :cond_b

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 47
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->updateUi(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 48
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->lodingInfo:Landroid/widget/TextView;

    const-string v3, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_3

    .line 51
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->updateUi(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 52
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->lodingInfo:Landroid/widget/TextView;

    const-string v3, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_3

    .line 55
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->updateUi(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 56
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :try_start_0
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :goto_0
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->lodingInfo:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 60
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->updateUi(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 61
    :try_start_1
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-nez v0, :cond_7

    .line 62
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 63
    :cond_7
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_1
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 66
    :cond_8
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 67
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->updateUi(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 68
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v11

    cmp-long v0, v11, v9

    if-nez v0, :cond_9

    .line 69
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 70
    :cond_9
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->appSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_2
    iget-object v0, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 72
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v2, v2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->lodingInfo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 74
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->updateUi(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 75
    :cond_b
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->updateUi(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 76
    :cond_c
    move-object/from16 v0, p1

    check-cast v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;

    .line 77
    iget-object v2, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;->viewpager:Lcom/join/mgps/customview/CarouselViewPager2;

    iget-object v5, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 78
    iget-object v2, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;->viewpager:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 79
    iget-object v2, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;->viewpager:Lcom/join/mgps/customview/CarouselViewPager2;

    iget-object v5, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f071194

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v7, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {v7}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2, v5, v4, v6, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 80
    iget-object v2, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;->viewpager:Lcom/join/mgps/customview/CarouselViewPager2;

    iget-object v4, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0710e2    # 1.7953344E38f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 81
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;->viewpager:Lcom/join/mgps/customview/CarouselViewPager2;

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 82
    iget-object v0, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0710bf

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setWidth(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070f87

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHeight(I)V

    const-string p2, "#EFEFF6"

    .line 5
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 6
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;

    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-direct {v1, p2, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c05ec

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHlistHolder;

    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-direct {v1, p2, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHlistHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c05f0

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;

    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-direct {v1, p2, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipTitleHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c033c

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;

    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-direct {v1, p2, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0598

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 14
    new-instance v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;

    iget-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    invoke-direct {v1, p2, p1}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewPagerHolder;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;Landroid/view/View;)V

    :goto_0
    return-object v1
.end method

.method updateUi(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->tipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->describe:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->linearLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBarZip:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->tipsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$ViewHolderAppItem;->describe:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
