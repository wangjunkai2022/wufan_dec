.class public Lcom/join/mgps/adapter/b3;
.super Landroid/widget/BaseAdapter;
.source "MustPlayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/b3$e;,
        Lcom/join/mgps/adapter/b3$f;,
        Lcom/join/mgps/adapter/b3$g;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk1/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lk1/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/b3;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/b3;->b:Ljava/util/List;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/b3;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/b3;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/b3;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b(Lcom/join/mgps/business/CollectionBeanSubBusiness;Landroid/widget/TextView;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const-string v1, "\u66f4\u65b0"

    const v2, -0xa81da

    const v3, 0x7f1100d2

    const v4, 0x7f080a6e

    const v5, -0x8d57ef

    const v6, 0x7f080a62

    const v7, 0x7f080a67

    if-nez v0, :cond_5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u5f00\u59cb"

    .line 4
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/b3;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/b3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v6, p0, Lcom/join/mgps/adapter/b3;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/b3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v6, p0, Lcom/join/mgps/adapter/b3;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 11
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 12
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 14
    :cond_2
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/adapter/b3;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 17
    :cond_3
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 19
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->r2(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_0

    .line 20
    :cond_4
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 22
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->r2(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_0

    .line 23
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " dd "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "infoo"

    invoke-static {v9, v8}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v8

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v9

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x2b

    if-lez v9, :cond_6

    const/16 v8, 0x2b

    :cond_6
    if-eqz v8, :cond_c

    const/16 v9, 0x1b

    if-eq v8, v9, :cond_b

    const/16 v9, 0x30

    const v11, -0xc57a1e

    if-eq v8, v9, :cond_a

    const/4 v9, 0x2

    if-eq v8, v9, :cond_9

    const/4 v0, 0x3

    if-eq v8, v0, :cond_8

    const/4 v0, 0x5

    if-eq v8, v0, :cond_7

    const/4 v0, 0x6

    if-eq v8, v0, :cond_8

    const/4 v0, 0x7

    if-eq v8, v0, :cond_c

    const/16 v0, 0x2a

    if-eq v8, v0, :cond_7

    if-eq v8, v10, :cond_c

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const p1, 0x7f080a7b

    .line 26
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u89e3\u538b"

    .line 27
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :pswitch_1
    const p1, 0x7f0803ca

    .line 29
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u89e3\u538b\u4e2d"

    .line 30
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, -0x4a4a4b

    .line 31
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 32
    :pswitch_2
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u5b89\u88c5"

    .line 33
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 35
    :pswitch_3
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u7b49\u5f85"

    .line 36
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 38
    :pswitch_4
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 39
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 41
    :cond_7
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 42
    iget-object p1, p0, Lcom/join/mgps/adapter/b3;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 44
    :cond_8
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u7ee7\u7eed"

    .line 45
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 47
    :cond_9
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 48
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u6682\u505c"

    .line 49
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 51
    :cond_a
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u5b89\u88c5\u4e2d"

    .line 52
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_b
    const-string p1, "\u6682\u505c\u4e2d"

    .line 54
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_c
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 57
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->r2(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    :goto_0
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


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk1/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b3;->b:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/b3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/b3;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/c;

    .line 3
    invoke-virtual {p1}, Lk1/c;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/b3;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/b3$f;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/b3$f;-><init>(Lcom/join/mgps/adapter/b3;)V

    .line 3
    iget-object v4, p0, Lcom/join/mgps/adapter/b3;->c:Landroid/view/LayoutInflater;

    const v5, 0x7f0c04b8

    invoke-virtual {v4, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v4, 0x7f09086e

    .line 4
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->t(Lcom/join/mgps/adapter/b3$f;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v4, 0x7f09086f

    .line 5
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->v(Lcom/join/mgps/adapter/b3$f;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v4, 0x7f090870

    .line 6
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->x(Lcom/join/mgps/adapter/b3$f;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v4, 0x7f090871

    .line 7
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->z(Lcom/join/mgps/adapter/b3$f;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v4, 0x7f0900e2

    .line 8
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->B(Lcom/join/mgps/adapter/b3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0900e3

    .line 9
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->D(Lcom/join/mgps/adapter/b3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0900e4

    .line 10
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->F(Lcom/join/mgps/adapter/b3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0900e5

    .line 11
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->b(Lcom/join/mgps/adapter/b3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0900da

    .line 12
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->d(Lcom/join/mgps/adapter/b3$f;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0900db

    .line 13
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->f(Lcom/join/mgps/adapter/b3$f;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0900dc

    .line 14
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->h(Lcom/join/mgps/adapter/b3$f;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0900dd

    .line 15
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->j(Lcom/join/mgps/adapter/b3$f;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0900d1

    .line 16
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->l(Lcom/join/mgps/adapter/b3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0900d2

    .line 17
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->n(Lcom/join/mgps/adapter/b3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0900d3

    .line 18
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->p(Lcom/join/mgps/adapter/b3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f0900d4

    .line 19
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$f;->r(Lcom/join/mgps/adapter/b3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 20
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    goto :goto_2

    .line 21
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/b3$g;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/b3$g;-><init>(Lcom/join/mgps/adapter/b3;)V

    .line 22
    iget-object v4, p0, Lcom/join/mgps/adapter/b3;->c:Landroid/view/LayoutInflater;

    const v5, 0x7f0c04ba

    invoke-virtual {v4, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v4, 0x7f091020

    .line 23
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$g;->b(Lcom/join/mgps/adapter/b3$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f091037

    .line 24
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$g;->d(Lcom/join/mgps/adapter/b3$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v4, 0x7f090df7

    .line 25
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-static {p2, v4}, Lcom/join/mgps/adapter/b3$g;->f(Lcom/join/mgps/adapter/b3$g;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 26
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, p2

    move-object p2, p3

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    :goto_0
    move-object p3, v1

    goto :goto_2

    .line 27
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/b3$f;

    goto :goto_2

    .line 28
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/b3$g;

    move-object v6, v1

    move-object v1, p3

    :goto_1
    move-object p3, v6

    :goto_2
    const/16 v4, 0x8

    if-nez p1, :cond_5

    if-nez v0, :cond_5

    .line 29
    invoke-static {v1}, Lcom/join/mgps/adapter/b3$g;->c(Lcom/join/mgps/adapter/b3$g;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    invoke-static {v1}, Lcom/join/mgps/adapter/b3$g;->e(Lcom/join/mgps/adapter/b3$g;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    .line 31
    iget-object v5, p0, Lcom/join/mgps/adapter/b3;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne p1, v5, :cond_6

    .line 32
    invoke-static {v1}, Lcom/join/mgps/adapter/b3$g;->c(Lcom/join/mgps/adapter/b3$g;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    invoke-static {v1}, Lcom/join/mgps/adapter/b3$g;->e(Lcom/join/mgps/adapter/b3$g;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-object p2

    :cond_6
    if-nez v0, :cond_7

    .line 34
    invoke-static {v1}, Lcom/join/mgps/adapter/b3$g;->c(Lcom/join/mgps/adapter/b3$g;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    invoke-static {v1}, Lcom/join/mgps/adapter/b3$g;->e(Lcom/join/mgps/adapter/b3$g;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/join/mgps/adapter/b3;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/c;

    if-eqz v0, :cond_e

    if-eq v0, v2, :cond_8

    goto/16 :goto_6

    .line 37
    :cond_8
    invoke-virtual {p1}, Lk1/c;->a()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_9

    goto/16 :goto_6

    .line 38
    :cond_9
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->s(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 39
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->u(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->w(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 41
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->y(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 42
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 43
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    goto/16 :goto_5

    .line 44
    :cond_a
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->y(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->i(Lcom/join/mgps/adapter/b3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 46
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->a(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->q(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/join/mgps/adapter/b3;->b(Lcom/join/mgps/business/CollectionBeanSubBusiness;Landroid/widget/TextView;)V

    .line 48
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->q(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/b3$e;

    invoke-direct {v5, p0, v1}, Lcom/join/mgps/adapter/b3$e;-><init>(Lcom/join/mgps/adapter/b3;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->i(Lcom/join/mgps/adapter/b3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/b3$d;

    invoke-direct {v5, p0, v1}, Lcom/join/mgps/adapter/b3$d;-><init>(Lcom/join/mgps/adapter/b3;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 50
    :cond_b
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->w(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 51
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->g(Lcom/join/mgps/adapter/b3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 52
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->E(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->o(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/join/mgps/adapter/b3;->b(Lcom/join/mgps/business/CollectionBeanSubBusiness;Landroid/widget/TextView;)V

    .line 54
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->o(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/b3$e;

    invoke-direct {v5, p0, v1}, Lcom/join/mgps/adapter/b3$e;-><init>(Lcom/join/mgps/adapter/b3;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->g(Lcom/join/mgps/adapter/b3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/b3$c;

    invoke-direct {v5, p0, v1}, Lcom/join/mgps/adapter/b3$c;-><init>(Lcom/join/mgps/adapter/b3;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 56
    :cond_c
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->u(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->e(Lcom/join/mgps/adapter/b3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 58
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->C(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->m(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/join/mgps/adapter/b3;->b(Lcom/join/mgps/business/CollectionBeanSubBusiness;Landroid/widget/TextView;)V

    .line 60
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->m(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/b3$e;

    invoke-direct {v5, p0, v1}, Lcom/join/mgps/adapter/b3$e;-><init>(Lcom/join/mgps/adapter/b3;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->e(Lcom/join/mgps/adapter/b3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/b3$b;

    invoke-direct {v5, p0, v1}, Lcom/join/mgps/adapter/b3$b;-><init>(Lcom/join/mgps/adapter/b3;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 62
    :cond_d
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->s(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->c(Lcom/join/mgps/adapter/b3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 64
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->A(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->k(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/join/mgps/adapter/b3;->b(Lcom/join/mgps/business/CollectionBeanSubBusiness;Landroid/widget/TextView;)V

    .line 66
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->k(Lcom/join/mgps/adapter/b3$f;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/b3$e;

    invoke-direct {v5, p0, v1}, Lcom/join/mgps/adapter/b3$e;-><init>(Lcom/join/mgps/adapter/b3;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {p3}, Lcom/join/mgps/adapter/b3$f;->c(Lcom/join/mgps/adapter/b3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v4

    new-instance v5, Lcom/join/mgps/adapter/b3$a;

    invoke-direct {v5, p0, v1}, Lcom/join/mgps/adapter/b3$a;-><init>(Lcom/join/mgps/adapter/b3;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 68
    :cond_e
    invoke-static {v1}, Lcom/join/mgps/adapter/b3$g;->a(Lcom/join/mgps/adapter/b3$g;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p1}, Lk1/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_6
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
