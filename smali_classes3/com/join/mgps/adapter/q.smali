.class public Lcom/join/mgps/adapter/q;
.super Lcom/join/mgps/adapter/p;
.source "DownloadCenterAdapter1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/q$b;,
        Lcom/join/mgps/adapter/q$d;,
        Lcom/join/mgps/adapter/q$c;
    }
.end annotation


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/p;-><init>(Landroid/app/Activity;)V

    const-string p1, "\u731c\u4f60\u559c\u6b22"

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/q;->e:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/q;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic k(Lcom/join/mgps/adapter/q;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/q;->q(Ljava/lang/String;)V

    return-void
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/q$d;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/q$d;-><init>(Lcom/join/mgps/adapter/q;)V

    .line 2
    iget-object v4, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c0087

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090a39

    .line 3
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v5, 0x7f0905ee

    .line 4
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->n:Landroid/widget/ImageView;

    const v5, 0x7f090d07

    .line 5
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->m:Landroid/widget/RelativeLayout;

    const v5, 0x7f090a37

    .line 6
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->b:Landroid/widget/TextView;

    const v5, 0x7f090cac

    .line 7
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->c:Landroid/widget/RelativeLayout;

    const v5, 0x7f090a3a

    .line 8
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const v5, 0x7f090a38

    .line 9
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->e:Landroid/widget/TextView;

    const v5, 0x7f0908cd

    .line 10
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->f:Landroid/widget/LinearLayout;

    const v5, 0x7f09100c

    .line 11
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->g:Landroid/widget/LinearLayout;

    const v5, 0x7f0900ea

    .line 12
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->h:Landroid/widget/TextView;

    const v5, 0x7f0909b2

    .line 13
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->i:Landroid/widget/TextView;

    const v5, 0x7f090c59

    .line 14
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->k:Landroid/widget/ProgressBar;

    const v5, 0x7f090c60

    .line 15
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->l:Landroid/widget/ProgressBar;

    const v5, 0x7f090a6f

    .line 16
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/join/mgps/adapter/q$d;->j:Landroid/widget/TextView;

    const v5, 0x7f0908be

    .line 17
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/q$d;

    move-object/from16 v4, p2

    :goto_0
    move-object v5, v0

    .line 21
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 22
    invoke-virtual {v6}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 23
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0x8

    if-ne v7, v8, :cond_1

    .line 24
    iget-object v7, v5, Lcom/join/mgps/adapter/q$d;->n:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 25
    :cond_1
    iget-object v7, v5, Lcom/join/mgps/adapter/q$d;->n:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    :goto_1
    iget-object v7, v5, Lcom/join/mgps/adapter/q$d;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v7, v5, Lcom/join/mgps/adapter/q$d;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double v10, v10, v12

    mul-double v10, v10, v12

    double-to-long v10, v10

    .line 29
    iget-object v7, v5, Lcom/join/mgps/adapter/q$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v14

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v16

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v17

    iget-object v7, v5, Lcom/join/mgps/adapter/q$d;->g:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    move-object/from16 v18, v7

    move-object/from16 v19, v12

    invoke-static/range {v13 .. v19}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 31
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v7

    invoke-static {v7, v4, v0}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    iget-object v7, v5, Lcom/join/mgps/adapter/q$d;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 33
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v8, 0x7f080a62

    const v12, 0x7f06002a

    if-eqz v7, :cond_2

    .line 34
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    .line 35
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 36
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const-string v7, "\u5f00\u59cb"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_7

    :cond_2
    const v7, 0x7f060033

    const v9, 0x7f1100d2

    const-string v13, "\u66f4\u65b0"

    const v14, 0x7f080a6e

    const v15, 0x7f060030

    const v3, 0x7f080a67

    if-nez v0, :cond_6

    .line 40
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v8}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 41
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    iget-object v0, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v8, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 44
    iget-object v0, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v8, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 45
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 46
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 50
    :cond_3
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    .line 51
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 52
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 54
    :cond_4
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 56
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 57
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3, v6}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 58
    :cond_5
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 60
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 61
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3, v6}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 62
    :cond_6
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v16

    .line 63
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v9, 0x2b

    if-lez v7, :cond_7

    const/16 v7, 0x2b

    goto :goto_2

    :cond_7
    move/from16 v7, v16

    :goto_2
    if-eqz v7, :cond_f

    const/16 v14, 0x1b

    const-string v8, "\u6682\u505c\u4e2d"

    if-eq v7, v14, :cond_e

    const/16 v14, 0x30

    if-eq v7, v14, :cond_d

    const/4 v14, 0x2

    const-wide/16 v18, 0x0

    const-string v15, "/"

    if-eq v7, v14, :cond_b

    const/4 v14, 0x3

    if-eq v7, v14, :cond_9

    const/4 v14, 0x5

    if-eq v7, v14, :cond_8

    const/4 v14, 0x6

    if-eq v7, v14, :cond_9

    const/4 v8, 0x7

    if-eq v7, v8, :cond_f

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_8

    if-eq v7, v9, :cond_f

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_7

    .line 64
    :pswitch_0
    :try_start_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v3, v7}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 65
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->i:Landroid/widget/TextView;

    const-string v7, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v0, v7

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const v3, 0x7f080a7b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 69
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const-string v3, "\u89e3\u538b"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 71
    :pswitch_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v3, v7}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 72
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->i:Landroid/widget/TextView;

    const-string v7, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v0, v7

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const v3, 0x7f0803ca

    .line 76
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const-string v3, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f060031

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 79
    :pswitch_2
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 80
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const-string v3, "\u5b89\u88c5"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f060030

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v3}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 83
    :pswitch_3
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const v7, 0x7f080a62

    .line 84
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 85
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const-string v7, "\u7b49\u5f85"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v3, v3}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 88
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    :try_start_3
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v0, v7

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    :goto_3
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->i:Landroid/widget/TextView;

    const-string v3, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 92
    :pswitch_4
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    .line 93
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f060030

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v3}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 97
    :cond_8
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const v3, 0x7f080a6e

    .line 98
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f1100d2

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f060033

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v0}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 102
    :cond_9
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const v7, 0x7f080a62

    .line 103
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 104
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const-string v7, "\u7ee7\u7eed"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v3, v3}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 107
    :try_start_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v12

    cmp-long v3, v12, v18

    if-nez v3, :cond_a

    .line 108
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 109
    :cond_a
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_4
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v9

    long-to-int v0, v9

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 111
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :goto_5
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 113
    :cond_b
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 114
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const v7, 0x7f080a62

    .line 115
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 116
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const-string v7, "\u6682\u505c"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v3, v3}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 119
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v3, v7, v18

    if-nez v3, :cond_c

    .line 120
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 121
    :cond_c
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_6
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 123
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->i:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 125
    :cond_d
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const v3, 0x7f080a62

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 126
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    const-string v3, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v3}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_7

    .line 129
    :cond_e
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 130
    :cond_f
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 132
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 133
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->d:Landroid/widget/TextView;

    iget-object v3, v5, Lcom/join/mgps/adapter/q$d;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0, v3, v6}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 134
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v3}, Lcom/join/mgps/adapter/q;->t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 135
    :goto_7
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->c:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/adapter/q$b;

    const/4 v7, 0x0

    invoke-direct {v3, v1, v6, v7, v2}, Lcom/join/mgps/adapter/q$b;-><init>(Lcom/join/mgps/adapter/q;Lcom/join/mgps/business/CollectionBeanSubBusiness;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, v5, Lcom/join/mgps/adapter/q$d;->m:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/adapter/q$a;

    invoke-direct {v2, v1, v6}, Lcom/join/mgps/adapter/q$a;-><init>(Lcom/join/mgps/adapter/q;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-object v4

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

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/join/mgps/adapter/q$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/q$c;-><init>(Lcom/join/mgps/adapter/q;)V

    .line 2
    iget-object p3, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c02f5

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f091023

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/join/mgps/adapter/q$c;->b(Lcom/join/mgps/adapter/q$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f090eff

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/join/mgps/adapter/q$c;->c(Lcom/join/mgps/adapter/q$c;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0909c1

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lcom/join/mgps/adapter/q$c;->d(Lcom/join/mgps/adapter/q$c;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f090687

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/join/mgps/adapter/q$c;->d:Landroid/widget/ImageView;

    const v0, 0x7f0908be

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lcom/join/mgps/adapter/q$c;->e:Landroid/view/View;

    .line 8
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/q$c;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/q;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p2}, Lcom/join/mgps/adapter/q$c;->a(Lcom/join/mgps/adapter/q$c;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {p2}, Lcom/join/mgps/adapter/q$c;->a(Lcom/join/mgps/adapter/q$c;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "\u731c\u4f60\u559c\u6b22"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p3
.end method

.method private q(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/adapter/p;->b:Landroid/app/Activity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/p;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/join/mgps/adapter/p;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/join/mgps/adapter/q;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/join/mgps/adapter/p;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/q;->p(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-super {p0}, Lcom/join/mgps/adapter/p;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/q;->e:Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/q;->f:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/p;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/q;->p(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-super {p0}, Lcom/join/mgps/adapter/p;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 3
    invoke-super {p0}, Lcom/join/mgps/adapter/p;->getViewTypeCount()I

    move-result v0

    if-lez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/join/mgps/adapter/p;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/q;->getItemViewType(I)I

    move-result v0

    invoke-super {p0}, Lcom/join/mgps/adapter/p;->getViewTypeCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/q;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/q;->getItemViewType(I)I

    move-result v0

    invoke-super {p0}, Lcom/join/mgps/adapter/p;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/q;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/adapter/p;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/adapter/p;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q;->f:Ljava/util/List;

    return-object v0
.end method

.method p(I)Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/adapter/p;->getCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/q;->f:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q;->e:Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q;->f:Ljava/util/List;

    return-void
.end method

.method t(Lcom/join/mgps/adapter/q$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/adapter/q$d;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/q$d;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/adapter/q$d;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
