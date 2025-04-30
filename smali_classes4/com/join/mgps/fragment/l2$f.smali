.class Lcom/join/mgps/fragment/l2$f;
.super Landroid/widget/BaseAdapter;
.source "GameFromBuildFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/l2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/l2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2;->p:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/fragment/l2$e;

    iget p1, p1, Lcom/join/mgps/fragment/l2$e;->a:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/fragment/l2$f;->getItemViewType(I)I

    move-result v2

    const v3, 0x7f091192

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_14

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_0

    move-object/from16 v2, p2

    goto/16 :goto_a

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget-object v2, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v2, v2, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c029c

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3
    new-instance v4, Lcom/join/mgps/fragment/l2$h;

    iget-object v5, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    invoke-direct {v4, v5}, Lcom/join/mgps/fragment/l2$h;-><init>(Lcom/join/mgps/fragment/l2;)V

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/join/mgps/fragment/l2$h;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/join/mgps/fragment/l2$h;

    move-object/from16 v2, p2

    .line 7
    :goto_0
    iget-object v3, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v3, v3, Lcom/join/mgps/fragment/l2;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/l2$e;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2$e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8
    iget-object v3, v4, Lcom/join/mgps/fragment/l2$h;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_2
    if-nez p2, :cond_3

    .line 9
    iget-object v2, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v2, v2, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0087

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/join/mgps/fragment/l2$d;

    iget-object v5, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    invoke-direct {v3, v5}, Lcom/join/mgps/fragment/l2$d;-><init>(Lcom/join/mgps/fragment/l2;)V

    const v5, 0x7f090a39

    .line 11
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f0905ee

    .line 12
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->b:Landroid/widget/ImageView;

    const v5, 0x7f090a37

    .line 13
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->c:Landroid/widget/TextView;

    const v5, 0x7f090cac

    .line 14
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->d:Landroid/widget/RelativeLayout;

    const v5, 0x7f090a3a

    .line 15
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const v5, 0x7f090a38

    .line 16
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->f:Landroid/widget/TextView;

    const v5, 0x7f0908cd

    .line 17
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->g:Landroid/widget/LinearLayout;

    const v5, 0x7f09100c

    .line 18
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->h:Landroid/widget/LinearLayout;

    const v5, 0x7f0900ea

    .line 19
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->i:Landroid/widget/TextView;

    const v5, 0x7f0909b2

    .line 20
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->j:Landroid/widget/TextView;

    const v5, 0x7f090c59

    .line 21
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->k:Landroid/widget/ProgressBar;

    const v5, 0x7f090c60

    .line 22
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->l:Landroid/widget/ProgressBar;

    const v5, 0x7f0908be

    .line 23
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->m:Landroid/view/View;

    const v5, 0x7f090d07

    .line 24
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/join/mgps/fragment/l2$d;->n:Landroid/view/View;

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/join/mgps/fragment/l2$d;

    move-object/from16 v2, p2

    .line 27
    :goto_1
    iget-object v5, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v5, v5, Lcom/join/mgps/fragment/l2;->p:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/l2$e;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2$e;->b:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 28
    invoke-virtual {v5}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 29
    invoke-virtual {v5, v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 30
    iget-object v9, v3, Lcom/join/mgps/fragment/l2$d;->n:Landroid/view/View;

    const v10, 0x7f080d33

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v6, :cond_4

    .line 32
    iget-object v9, v3, Lcom/join/mgps/fragment/l2$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 33
    :cond_4
    iget-object v9, v3, Lcom/join/mgps/fragment/l2$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    :goto_2
    iget-object v9, v3, Lcom/join/mgps/fragment/l2$d;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v9, v3, Lcom/join/mgps/fragment/l2$d;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    mul-double v11, v11, v13

    mul-double v11, v11, v13

    double-to-long v11, v11

    .line 37
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v14, ""

    if-eqz v13, :cond_5

    move-object v9, v14

    .line 39
    :cond_5
    iget-object v13, v3, Lcom/join/mgps/fragment/l2$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v16

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v18

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v19

    iget-object v9, v3, Lcom/join/mgps/fragment/l2$d;->h:Landroid/widget/LinearLayout;

    iget-object v13, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v13, v13, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    move-object/from16 v20, v9

    move-object/from16 v21, v13

    invoke-static/range {v15 .. v21}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 42
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v9

    invoke-static {v9, v2, v0}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 43
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v15}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const v13, 0x7f06002a

    const v14, 0x7f080a62

    if-eqz v9, :cond_6

    .line 44
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 46
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const-string v4, "\u5f00\u59cb"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v4, v4, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_6
    const-string v9, "\u66f4\u65b0"

    const v10, 0x7f1100d2

    const v15, 0x7f080a6e

    const v4, 0x7f080a67

    if-nez v0, :cond_b

    .line 50
    iget-object v0, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v7, v8}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 51
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 52
    iget-object v0, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v7, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v7, v7, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 53
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    const/4 v0, 0x0

    :cond_7
    if-eqz v0, :cond_9

    .line 54
    iget-object v0, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v0, v0, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v7, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v7, v7, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 55
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 56
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const v4, -0x8d57ef

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 59
    :cond_8
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 60
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v4, v4, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const v4, -0xa81da

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 62
    :cond_9
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 64
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 65
    :cond_a
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 66
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 67
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 68
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " dd "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "infoo"

    invoke-static {v10, v6}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v6

    .line 70
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v10

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v15}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v10

    const/16 v15, 0x2b

    if-lez v10, :cond_c

    const/16 v6, 0x2b

    :cond_c
    if-eqz v6, :cond_13

    const/16 v10, 0x1b

    const-string v13, "\u6682\u505c\u4e2d"

    if-eq v6, v10, :cond_12

    const-wide/16 v18, 0x0

    const-string v10, "/"

    if-eq v6, v8, :cond_10

    if-eq v6, v7, :cond_e

    const/4 v7, 0x5

    if-eq v6, v7, :cond_d

    const/4 v7, 0x6

    if-eq v6, v7, :cond_e

    const/4 v7, 0x7

    if-eq v6, v7, :cond_13

    const/16 v7, 0x2a

    if-eq v6, v7, :cond_d

    if-eq v6, v15, :cond_13

    const v7, 0x7f060030

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_7

    .line 71
    :pswitch_0
    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v6, v7}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 72
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->j:Landroid/widget/TextView;

    const-string v6, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const v4, 0x7f080a7b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 76
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v4, v4, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060031

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 78
    :pswitch_1
    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v6, v7}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 79
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->j:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const v4, 0x7f0803ca

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 83
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const v4, -0x4a4a4b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 85
    :pswitch_2
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 86
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const-string v4, "\u5b89\u88c5"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v4, v4, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4, v6}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 89
    :pswitch_3
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const-string v6, "\u7b49\u5f85"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v6, v6, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v6, v6}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 93
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :try_start_0
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    :goto_3
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->j:Landroid/widget/TextView;

    const-string v4, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 97
    :pswitch_4
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 98
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v4, v4, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v0, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4, v6}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 101
    :cond_d
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const v4, 0x7f080a6e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 102
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v4, v4, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1100d2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v4, v4, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v0, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4, v4}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 105
    :cond_e
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    .line 106
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const-string v6, "\u7ee7\u7eed"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v6, v6, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v6, v6}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 110
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v6

    cmp-long v4, v6, v18

    if-nez v4, :cond_f

    .line 111
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 112
    :cond_f
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_4
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :goto_5
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 116
    :cond_10
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 117
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    const-string v6, "\u6682\u505c"

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v6, v6, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06002a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v6, v6}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 121
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v6

    cmp-long v4, v6, v18

    if-nez v4, :cond_11

    .line 122
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 123
    :cond_11
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->i:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_6
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 125
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 127
    :cond_12
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 128
    :cond_13
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 130
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v3, Lcom/join/mgps/fragment/l2$d;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 131
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v4, v4, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06002a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4, v6}, Lcom/join/mgps/fragment/l2;->j0(Lcom/join/mgps/fragment/l2$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 133
    :goto_7
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->d:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 134
    iget-object v0, v3, Lcom/join/mgps/fragment/l2$d;->d:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/fragment/l2$c;

    iget-object v4, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/fragment/l2$c;-><init>(Lcom/join/mgps/fragment/l2;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    :cond_14
    if-nez p2, :cond_15

    .line 135
    iget-object v2, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v2, v2, Lcom/join/mgps/fragment/l2;->g:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0c0233

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    new-instance v4, Lcom/join/mgps/fragment/l2$g;

    iget-object v5, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    invoke-direct {v4, v5}, Lcom/join/mgps/fragment/l2$g;-><init>(Lcom/join/mgps/fragment/l2;)V

    const v5, 0x7f090e8a

    .line 137
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v4, Lcom/join/mgps/fragment/l2$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f09117d

    .line 138
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/join/mgps/fragment/l2$g;->c:Landroid/widget/TextView;

    .line 139
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/join/mgps/fragment/l2$g;->b:Landroid/widget/TextView;

    const v3, 0x7f090d5a

    .line 140
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v4, Lcom/join/mgps/fragment/l2$g;->d:Landroid/widget/RelativeLayout;

    .line 141
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_8

    .line 142
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/join/mgps/fragment/l2$g;

    move-object/from16 v2, p2

    .line 143
    :goto_8
    iget-object v3, v1, Lcom/join/mgps/fragment/l2$f;->a:Lcom/join/mgps/fragment/l2;

    iget-object v3, v3, Lcom/join/mgps/fragment/l2;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/fragment/l2$e;

    iget-object v3, v3, Lcom/join/mgps/fragment/l2$e;->b:Ljava/lang/Object;

    check-cast v3, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 144
    iget-object v5, v4, Lcom/join/mgps/fragment/l2$g;->d:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/join/mgps/fragment/l2$f$a;

    invoke-direct {v6, v1, v3, v0}, Lcom/join/mgps/fragment/l2$f$a;-><init>(Lcom/join/mgps/fragment/l2$f;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;I)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_16

    .line 146
    iget-object v0, v4, Lcom/join/mgps/fragment/l2$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_list()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    goto :goto_9

    .line 147
    :cond_16
    iget-object v0, v4, Lcom/join/mgps/fragment/l2$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f0807b1

    invoke-virtual {v0, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 148
    :goto_9
    iget-object v0, v4, Lcom/join/mgps/fragment/l2$g;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, v4, Lcom/join/mgps/fragment/l2$g;->c:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u6b3e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, v4, Lcom/join/mgps/fragment/l2$g;->d:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/join/mgps/fragment/l2$f$b;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/fragment/l2$f$b;-><init>(Lcom/join/mgps/fragment/l2$f;Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
