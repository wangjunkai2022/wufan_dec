.class public Lcom/join/mgps/adapter/v0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameAppRecyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/v0$c;,
        Lcom/join/mgps/adapter/v0$b;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/v0;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/v0;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/v0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->c:Ljava/util/List;

    return-object v0
.end method

.method c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/adapter/v0$c;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/adapter/v0$c;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/join/mgps/adapter/v0$c;

    .line 2
    iget-object v3, v1, Lcom/join/mgps/adapter/v0;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x1

    if-eq v5, v10, :cond_0

    if-eq v5, v7, :cond_0

    if-eq v5, v6, :cond_0

    .line 4
    iget-object v11, v2, Lcom/join/mgps/adapter/v0$c;->a:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->a:Landroid/widget/TextView;

    const/high16 v11, -0x1000000

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->a:Landroid/widget/TextView;

    const/high16 v11, 0x41400000    # 12.0f

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 7
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v11, v2, Lcom/join/mgps/adapter/v0$c;->a:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->a:Landroid/widget/TextView;

    const-string v11, "#ff9f15"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->a:Landroid/widget/TextView;

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 12
    :goto_0
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v11, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0807b1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v5

    const/16 v11, 0x8

    if-ne v5, v10, :cond_1

    .line 16
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    :goto_1
    iget-object v5, v2, Lcom/join/mgps/adapter/v0$c;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 19
    iget-object v5, v1, Lcom/join/mgps/adapter/v0;->c:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 20
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    mul-double v12, v12, v14

    mul-double v12, v12, v14

    double-to-long v12, v12

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v15

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v17

    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v18

    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->h:Landroid/widget/LinearLayout;

    iget-object v10, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v20, v10

    invoke-static/range {v14 .. v20}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 22
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    iget-object v10, v2, Lcom/join/mgps/adapter/v0$c;->b:Landroid/view/View;

    invoke-static {v0, v10, v4}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 23
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v14}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v9, 0x7f080a62

    const v10, 0x7f06002a

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const-string v4, "\u5f00\u59cb"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 29
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_2
    const-string v0, "\u66f4\u65b0"

    const v11, 0x7f060033

    const v14, 0x7f1100d2

    const v15, 0x7f080a6e

    const v8, 0x7f060030

    const v9, 0x7f080a67

    if-nez v4, :cond_7

    .line 30
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4, v6}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 31
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 32
    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    iget-object v6, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 33
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    const/4 v4, 0x0

    :cond_3
    if-eqz v4, :cond_5

    .line 34
    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    iget-object v6, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v4

    .line 35
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v4

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 36
    iget-object v4, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    .line 37
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 38
    iget-object v4, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 40
    :cond_4
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    .line 41
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 42
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 44
    :cond_5
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 46
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 47
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/join/mgps/adapter/v0$c;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_5

    .line 48
    :cond_6
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 50
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 51
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/join/mgps/adapter/v0$c;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_5

    .line 52
    :cond_7
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v16

    .line 53
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v11

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v11

    const/16 v14, 0x2b

    if-lez v11, :cond_8

    const/16 v11, 0x2b

    goto :goto_2

    :cond_8
    move/from16 v11, v16

    :goto_2
    if-eqz v11, :cond_e

    const/16 v15, 0x1b

    const-string v8, "\u6682\u505c\u4e2d"

    if-eq v11, v15, :cond_d

    const/16 v15, 0x30

    if-eq v11, v15, :cond_c

    const-string v15, "/"

    if-eq v11, v7, :cond_b

    if-eq v11, v6, :cond_a

    const/4 v6, 0x5

    if-eq v11, v6, :cond_9

    const/4 v6, 0x6

    if-eq v11, v6, :cond_a

    const/4 v6, 0x7

    if-eq v11, v6, :cond_e

    const/16 v6, 0x2a

    if-eq v11, v6, :cond_9

    if-eq v11, v14, :cond_e

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_5

    .line 54
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v6}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 55
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->l:Landroid/widget/TextView;

    const-string v6, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 58
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const v4, 0x7f080a7b

    .line 59
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 60
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 62
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v6}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 63
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->l:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 66
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const v4, 0x7f0803ca

    .line 67
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 68
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const-string v4, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060031

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 70
    :pswitch_2
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const-string v4, "\u5b89\u88c5"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060030

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    .line 74
    :pswitch_3
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const v6, 0x7f080a62

    .line 75
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 76
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const-string v6, "\u7b49\u5f85"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 79
    :try_start_0
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :goto_3
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->l:Landroid/widget/TextView;

    const-string v4, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 83
    :pswitch_4
    iget-object v4, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    .line 84
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 85
    iget-object v4, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060030

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    .line 88
    :cond_9
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const v4, 0x7f080a6e

    .line 89
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 90
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1100d2

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060033

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    .line 93
    :cond_a
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const v6, 0x7f080a62

    .line 94
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 95
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const-string v6, "\u7ee7\u7eed"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 98
    :try_start_1
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    :goto_4
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 102
    :cond_b
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 103
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const v6, 0x7f080a62

    .line 104
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 105
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const-string v6, "\u6682\u505c"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 108
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->l:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/S"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_5

    .line 111
    :cond_c
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const v4, 0x7f080a62

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 112
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const-string v4, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_5

    .line 115
    :cond_d
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 116
    :cond_e
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const v4, 0x7f080a62

    .line 117
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/join/mgps/adapter/v0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 120
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/join/mgps/adapter/v0$c;->f:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 121
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/v0;->c(Lcom/join/mgps/adapter/v0$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 122
    :goto_5
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->f:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/join/mgps/adapter/v0$b;

    invoke-direct {v4, v1, v5}, Lcom/join/mgps/adapter/v0$b;-><init>(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, v2, Lcom/join/mgps/adapter/v0$c;->b:Landroid/view/View;

    new-instance v2, Lcom/join/mgps/adapter/v0$a;

    invoke-direct {v2, v1, v3}, Lcom/join/mgps/adapter/v0$a;-><init>(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/v0;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00db

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/v0$c;

    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/v0$c;-><init>(Lcom/join/mgps/adapter/v0;Landroid/view/View;)V

    const v0, 0x7f0910ad

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->a:Landroid/widget/TextView;

    const v0, 0x7f0905ee

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->c:Landroid/widget/ImageView;

    const v0, 0x7f090a39

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090a37

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->e:Landroid/widget/TextView;

    const v0, 0x7f090cac

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->f:Landroid/widget/RelativeLayout;

    const v0, 0x7f090a3a

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->g:Landroid/widget/TextView;

    const v0, 0x7f09100c

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f090a38

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->i:Landroid/widget/TextView;

    const v0, 0x7f0908cd

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0900ea

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->k:Landroid/widget/TextView;

    const v0, 0x7f0909b2

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->l:Landroid/widget/TextView;

    const v0, 0x7f090c59

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p2, Lcom/join/mgps/adapter/v0$c;->m:Landroid/widget/ProgressBar;

    const v0, 0x7f090c60

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p2, Lcom/join/mgps/adapter/v0$c;->n:Landroid/widget/ProgressBar;

    return-object p2
.end method
