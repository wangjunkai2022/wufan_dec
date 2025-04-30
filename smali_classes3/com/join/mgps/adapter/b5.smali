.class public Lcom/join/mgps/adapter/b5;
.super Landroid/widget/BaseAdapter;
.source "SearchAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/b5$e;,
        Lcom/join/mgps/adapter/b5$c;,
        Lcom/join/mgps/adapter/b5$f;,
        Lcom/join/mgps/adapter/b5$g;,
        Lcom/join/mgps/adapter/b5$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field e:Lcom/join/mgps/dto/SearchResultAdinfo;

.field f:Lcom/join/mgps/adapter/b5$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/b5;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/b5;->c:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/b5;->b:Landroid/view/LayoutInflater;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/adapter/b5;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/b5;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/b5;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/b5;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/b5;->c:Ljava/util/List;

    return-object v0
.end method

.method public d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-virtual {v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-nez p2, :cond_0

    .line 3
    iget-object v4, v1, Lcom/join/mgps/adapter/b5;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f0c0089

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4
    new-instance v5, Lcom/join/mgps/adapter/b5$e;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/b5$e;-><init>(Lcom/join/mgps/adapter/b5;)V

    const v6, 0x7f090a39

    .line 5
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v6, 0x7f0905ee

    .line 6
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->b:Landroid/widget/ImageView;

    const v6, 0x7f090a37

    .line 7
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->c:Landroid/widget/TextView;

    const v6, 0x7f090095

    .line 8
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/b5$e;->d:Landroid/widget/TextView;

    const v7, 0x7f090d07

    .line 9
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/b5$e;->n:Landroid/widget/RelativeLayout;

    const v7, 0x7f090cac

    .line 10
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/b5$e;->e:Landroid/widget/RelativeLayout;

    const v7, 0x7f090a3a

    .line 11
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const v7, 0x7f09100c

    .line 12
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, v5, Lcom/join/mgps/adapter/b5$e;->g:Landroid/widget/LinearLayout;

    const v7, 0x7f090a38

    .line 13
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/join/mgps/adapter/b5$e;->h:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->d:Landroid/widget/TextView;

    const v6, 0x7f0908cd

    .line 15
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->i:Landroid/widget/LinearLayout;

    const v6, 0x7f0900ea

    .line 16
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->j:Landroid/widget/TextView;

    const v6, 0x7f0909b2

    .line 17
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->k:Landroid/widget/TextView;

    const v6, 0x7f090c59

    .line 18
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->l:Landroid/widget/ProgressBar;

    const v6, 0x7f090c60

    .line 19
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->m:Landroid/widget/ProgressBar;

    const v6, 0x7f0908be

    .line 20
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/join/mgps/adapter/b5$e;->o:Landroid/view/View;

    .line 21
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/join/mgps/adapter/b5$e;

    move-object/from16 v4, p2

    .line 23
    :goto_0
    iget-object v6, v5, Lcom/join/mgps/adapter/b5$e;->o:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v6, v5, Lcom/join/mgps/adapter/b5$e;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v6, v5, Lcom/join/mgps/adapter/b5$e;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v6, v5, Lcom/join/mgps/adapter/b5$e;->n:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/join/mgps/adapter/b5$b;

    invoke-direct {v8, v1, v2}, Lcom/join/mgps/adapter/b5$b;-><init>(Lcom/join/mgps/adapter/b5;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v6, v5, Lcom/join/mgps/adapter/b5$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 28
    iget-object v6, v1, Lcom/join/mgps/adapter/b5;->c:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    .line 30
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->b:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 31
    :cond_1
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :goto_1
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    mul-double v8, v8, v10

    mul-double v8, v8, v10

    double-to-long v8, v8

    .line 33
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v11

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v13

    iget-object v14, v5, Lcom/join/mgps/adapter/b5$e;->g:Landroid/widget/LinearLayout;

    iget-object v15, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-static/range {v10 .. v15}, Lcom/join/mgps/Util/UtilsMy;->F(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v17

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v19

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v20

    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->g:Landroid/widget/LinearLayout;

    iget-object v10, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v22, v10

    invoke-static/range {v16 .. v22}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 36
    :goto_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 37
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f080a62

    const v10, 0x7f06002a

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 40
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const-string v2, "\u5f00\u59cb"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_3
    const-string v0, "\u66f4\u65b0"

    const v7, 0x7f060033

    const v11, 0x7f1100d2

    const v12, 0x7f080a6e

    const v13, 0x7f060030

    const v14, 0x7f080a67

    if-nez v3, :cond_7

    .line 44
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v2, v3}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 45
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 46
    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 47
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 48
    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v2

    .line 49
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v2

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 50
    iget-object v2, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    .line 51
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 52
    iget-object v2, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 54
    :cond_4
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 56
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 58
    :cond_5
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 60
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 61
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v5, Lcom/join/mgps/adapter/b5$e;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_5

    .line 62
    :cond_6
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    .line 63
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 64
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 65
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v5, Lcom/join/mgps/adapter/b5$e;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_5

    .line 66
    :cond_7
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v15

    .line 67
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v7

    const/16 v11, 0x2b

    if-lez v7, :cond_8

    const/16 v15, 0x2b

    :cond_8
    if-eqz v15, :cond_e

    const/16 v7, 0x1b

    const-string v12, "\u6682\u505c\u4e2d"

    if-eq v15, v7, :cond_d

    const/16 v7, 0x30

    if-eq v15, v7, :cond_c

    const/4 v7, 0x2

    const-string v2, "/"

    if-eq v15, v7, :cond_b

    const/4 v7, 0x3

    if-eq v15, v7, :cond_a

    const/4 v7, 0x5

    if-eq v15, v7, :cond_9

    const/4 v7, 0x6

    if-eq v15, v7, :cond_a

    const/4 v7, 0x7

    if-eq v15, v7, :cond_e

    const/16 v7, 0x2a

    if-eq v15, v7, :cond_9

    if-eq v15, v11, :cond_e

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_5

    .line 68
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v7}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 69
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->k:Landroid/widget/TextView;

    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 72
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const v2, 0x7f080a7b

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 74
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 76
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v7}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 77
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->k:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 80
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const v2, 0x7f0803ca

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 81
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 83
    :pswitch_2
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 84
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    .line 87
    :pswitch_3
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const v7, 0x7f080a62

    .line 88
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 89
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const-string v7, "\u7b49\u5f85"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v0}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 92
    :try_start_0
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :goto_3
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->k:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 96
    :pswitch_4
    iget-object v2, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    .line 97
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 98
    iget-object v2, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    .line 101
    :cond_9
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const v2, 0x7f080a6e

    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 103
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    .line 106
    :cond_a
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const v7, 0x7f080a62

    .line 107
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 108
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const-string v7, "\u7ee7\u7eed"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v0}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 111
    :try_start_1
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :goto_4
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 115
    :cond_b
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 116
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const v7, 0x7f080a62

    .line 117
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const-string v7, "\u6682\u505c"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v0}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 121
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/S"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_5

    .line 124
    :cond_c
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const v2, 0x7f080a62

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 125
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_5

    .line 128
    :cond_d
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 129
    :cond_e
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 131
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 132
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->f:Landroid/widget/TextView;

    iget-object v2, v5, Lcom/join/mgps/adapter/b5$e;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 133
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/b5;->i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 134
    :goto_5
    iget-object v0, v5, Lcom/join/mgps/adapter/b5$e;->e:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/adapter/b5$c;

    invoke-direct {v2, v1, v6}, Lcom/join/mgps/adapter/b5$c;-><init>(Lcom/join/mgps/adapter/b5;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method public e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0281

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/b5$g;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/b5$g;-><init>(Lcom/join/mgps/adapter/b5;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/b5$g;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    .line 11
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 12
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 14
    iget-object p1, p3, Lcom/join/mgps/adapter/b5$g;->a:Lit/sephiroth/android/library/widget/HListView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 15
    :cond_3
    iget-object v4, p3, Lcom/join/mgps/adapter/b5$g;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    move-result v3

    .line 17
    new-instance v4, Lcom/join/mgps/adapter/x0;

    iget-object v5, p0, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v0, v1}, Lcom/join/mgps/adapter/x0;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 18
    iget-object v1, p3, Lcom/join/mgps/adapter/b5$g;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v1, v4}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-ne v3, v2, :cond_4

    .line 19
    iget-object v1, p3, Lcom/join/mgps/adapter/b5$g;->a:Lit/sephiroth/android/library/widget/HListView;

    iget-object v2, p0, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f87

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 20
    iget-object v1, p3, Lcom/join/mgps/adapter/b5$g;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidate()V

    goto :goto_3

    .line 21
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/adapter/b5$g;->a:Lit/sephiroth/android/library/widget/HListView;

    iget-object v2, p0, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07110f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 22
    iget-object v1, p3, Lcom/join/mgps/adapter/b5$g;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 23
    :goto_3
    iget-object p3, p3, Lcom/join/mgps/adapter/b5$g;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v1, Lcom/join/mgps/adapter/b5$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/adapter/b5$a;-><init>(Lcom/join/mgps/adapter/b5;Ljava/util/List;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {p3, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    :cond_5
    :goto_4
    return-object p2
.end method

.method public f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/b5;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c056b

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/b5$f;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/b5$f;-><init>(Lcom/join/mgps/adapter/b5;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/b5$f;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/b5;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    if-eqz v0, :cond_5

    .line 6
    iget-object v1, p3, Lcom/join/mgps/adapter/b5$f;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchResultAdinfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/b5;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchResultAdinfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string p1, "\u3000\u3000 "

    goto :goto_2

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string p1, "\u3000\u3000\u3000"

    goto :goto_2

    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    const-string p1, "\u3000\u3000\u3000\u3000"

    goto :goto_2

    .line 8
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " "

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v0, 0x2

    .line 10
    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    const-string v1, ""

    :goto_1
    if-ge p1, v0, :cond_4

    const-string v1, "\u3000"

    .line 11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    move-object p1, v1

    .line 13
    :goto_2
    iget-object p3, p3, Lcom/join/mgps/adapter/b5$f;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/adapter/b5;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchResultAdinfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-object p2
.end method

.method public g(Lcom/join/mgps/dto/SearchResultAdinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b5;->e:Lcom/join/mgps/dto/SearchResultAdinfo;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b5;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/b5;->c:Ljava/util/List;

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
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getViewType()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b5;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b5;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b5;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/b5;->f(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public h(Lcom/join/mgps/adapter/b5$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b5;->f:Lcom/join/mgps/adapter/b5$d;

    return-void
.end method

.method i(Lcom/join/mgps/adapter/b5$e;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/adapter/b5$e;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/b5$e;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/adapter/b5$e;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
