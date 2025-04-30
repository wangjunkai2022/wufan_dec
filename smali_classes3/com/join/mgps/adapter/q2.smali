.class public Lcom/join/mgps/adapter/q2;
.super Landroid/widget/BaseAdapter;
.source "InterstingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/q2$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/RecomDatabeanBusiness;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/adapter/q2;->b:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/join/mgps/adapter/q2;->b:Ljava/util/List;

    .line 6
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/q2;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/q2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/q2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/q2;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/q2;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecomDatabean;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/p;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/q2;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0c02e2

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f09069b

    .line 2
    invoke-static {p2, p3}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090a3a

    .line 3
    invoke-static {p2, v1}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/adapter/q2;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 5
    new-instance v3, Lcom/join/mgps/adapter/q2$a;

    iget-object v4, p0, Lcom/join/mgps/adapter/q2;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/business/RecomDatabeanBusiness;

    invoke-virtual {v2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, p1, v5}, Lcom/join/mgps/adapter/q2$a;-><init>(Lcom/join/mgps/adapter/q2;Lcom/join/mgps/business/RecomDatabeanBusiness;ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090104

    .line 6
    invoke-static {p2, p1}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/AppBeanMain;

    .line 10
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/business/RecomDatabeanBusiness;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    .line 14
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 15
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const v2, 0x7f080a62

    const v4, 0x7f06002a

    if-eqz p3, :cond_2

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u5f00\u59cb"

    .line 17
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_2
    const-string p3, "\u66f4\u65b0"

    const v5, 0x7f060033

    const v6, 0x7f1100d2

    const v7, 0x7f080a6e

    const v8, 0x7f060030

    const v9, 0x7f080a67

    if-nez p1, :cond_7

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 20
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v2, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    move v0, p1

    :goto_0
    if-eqz v0, :cond_5

    .line 22
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object p1

    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result p1

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 24
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 25
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 27
    :cond_4
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 30
    :cond_5
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 32
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_1

    .line 33
    :cond_6
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 35
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_1

    .line 36
    :cond_7
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    .line 37
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v10

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x2b

    if-lez v10, :cond_8

    const/16 v0, 0x2b

    :cond_8
    if-eqz v0, :cond_e

    const/16 v10, 0x1b

    if-eq v0, v10, :cond_d

    const/16 v10, 0x30

    if-eq v0, v10, :cond_c

    const/4 v10, 0x2

    if-eq v0, v10, :cond_b

    const/4 p1, 0x3

    if-eq v0, p1, :cond_a

    const/4 p1, 0x5

    if-eq v0, p1, :cond_9

    const/4 p1, 0x6

    if-eq v0, p1, :cond_a

    const/4 p1, 0x7

    if-eq v0, p1, :cond_e

    const/16 p1, 0x2a

    if-eq v0, p1, :cond_9

    if-eq v0, v11, :cond_e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const p1, 0x7f080a7b

    .line 38
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u89e3\u538b"

    .line 39
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :pswitch_1
    const p1, 0x7f0803ca

    .line 41
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u89e3\u538b\u4e2d"

    .line 42
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f060031

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 44
    :pswitch_2
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u5b89\u88c5"

    .line 45
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 47
    :pswitch_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u7b49\u5f85"

    .line 48
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 50
    :pswitch_4
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 51
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 53
    :cond_9
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 54
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 56
    :cond_a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u7ee7\u7eed"

    .line 57
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 59
    :cond_b
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u6682\u505c"

    .line 61
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 63
    :cond_c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p1, "\u5b89\u88c5\u4e2d"

    .line 64
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/join/mgps/adapter/q2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_d
    const-string p1, "\u6682\u505c\u4e2d"

    .line 66
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :cond_e
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 68
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object p1

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 69
    invoke-static {v1, v3}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V

    :cond_f
    :goto_1
    return-object p2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
