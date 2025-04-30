.class Lcom/join/mgps/activity/w1$g;
.super Landroid/widget/BaseAdapter;
.source "MyGamePapaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/w1$g$b;,
        Lcom/join/mgps/activity/w1$g$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/w1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/w1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/w1$g;->a:Lcom/join/mgps/activity/w1;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/business/CollectionBeanSubBusiness;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/join/mgps/activity/w1$g;->b(Lcom/join/mgps/business/CollectionBeanSubBusiness;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic b(Lcom/join/mgps/business/CollectionBeanSubBusiness;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method c(Landroid/widget/TextView;Landroid/view/View;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    const v1, -0xc35b03

    .line 2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    invoke-static {p4, p5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result p5

    const/4 v2, 0x0

    if-lez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    const/4 v3, 0x3

    const v4, 0x7f080a62

    const/4 v5, 0x2

    if-ne p3, v3, :cond_1

    if-nez p5, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1100d4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 5
    invoke-virtual {p1, v5, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_1
    if-ne p3, v5, :cond_2

    if-nez p5, :cond_2

    const-string p3, "\u5373\u5c06\u5f00\u653e"

    .line 8
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f071125

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, v2, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    const p3, -0x767677

    .line 10
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    const p2, 0x7f080a6a

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    .line 13
    invoke-virtual {p4}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p2

    if-lez p2, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110261

    new-array p5, v0, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p5, v2

    invoke-virtual {p2, p3, p5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1100d1

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/high16 p2, 0x41500000    # 13.0f

    .line 16
    invoke-virtual {p1, v5, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method

.method d(Lcom/join/mgps/activity/w1$g$b;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    .line 1
    :try_start_0
    iget-object v0, v3, Lcom/join/mgps/activity/w1$g;->a:Lcom/join/mgps/activity/w1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    .line 3
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->b:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    mul-double v8, v8, v10

    mul-double v8, v8, v10

    double-to-long v8, v8

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const-wide/16 v8, 0x0

    .line 7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v10, 0x7f080a62

    const v11, 0x7f06002a

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    .line 9
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v2, "\u5f00\u59cb"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :cond_1
    const v0, 0x7f060033

    const v12, 0x7f1100d2

    const-string v13, "\u66f4\u65b0"

    const v14, 0x7f080a6e

    const v15, 0x7f060030

    const v6, 0x7f080a67

    if-nez v5, :cond_5

    .line 12
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 15
    invoke-static {v4}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v5

    .line 16
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v5, v2, :cond_2

    .line 17
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 19
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 21
    :cond_2
    iget-object v2, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 23
    iget-object v2, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v1, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 25
    :cond_3
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 27
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-static {v0, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_2

    .line 28
    :cond_4
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 30
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-static {v0, v0, v2}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_2

    .line 31
    :cond_5
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v12, 0x2b

    if-lez v0, :cond_6

    const/16 v7, 0x2b

    :cond_6
    const/4 v0, 0x3

    const/4 v14, 0x2

    if-eqz v7, :cond_e

    const/16 v10, 0x1b

    if-eq v7, v10, :cond_d

    const/16 v10, 0x30

    if-eq v7, v10, :cond_c

    const-string v10, "/"

    if-eq v7, v14, :cond_a

    if-eq v7, v0, :cond_8

    const/4 v14, 0x5

    if-eq v7, v14, :cond_7

    const/4 v14, 0x6

    if-eq v7, v14, :cond_8

    const/4 v14, 0x7

    if-eq v7, v14, :cond_e

    const/16 v14, 0x2a

    if-eq v7, v14, :cond_7

    if-eq v7, v12, :cond_e

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2

    .line 33
    :pswitch_0
    :try_start_4
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const v2, 0x7f080a7b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 35
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 37
    :pswitch_1
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const v2, 0x7f0803ca

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 39
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 41
    :pswitch_2
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 42
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 44
    :pswitch_3
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const v2, 0x7f080a62

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 45
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 48
    :pswitch_4
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 50
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 52
    :cond_7
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const v2, 0x7f080a6e

    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 54
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1100d2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 56
    :cond_8
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const v2, 0x7f080a62

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v2, "\u7ee7\u7eed"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 59
    :try_start_5
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    if-nez v0, :cond_9

    .line 60
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 61
    :cond_9
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    .line 62
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 63
    :cond_a
    invoke-static {v5}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 64
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const v2, 0x7f080a62

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 65
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    if-nez v0, :cond_b

    .line 68
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 69
    :cond_b
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 70
    :cond_c
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const v2, 0x7f080a62

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 73
    :cond_d
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 74
    :cond_e
    iget-object v4, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 76
    iget-object v4, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-static {v4, v4, v2}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_1

    :cond_f
    const/4 v2, 0x0

    :goto_1
    if-ne v7, v0, :cond_10

    if-nez v2, :cond_10

    goto :goto_2

    :cond_10
    const/4 v0, 0x2

    if-ne v7, v0, :cond_11

    if-nez v2, :cond_11

    goto :goto_2

    .line 78
    :cond_11
    iget-object v0, v1, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    const-string v1, "\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

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

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/w1$g;->a:Lcom/join/mgps/activity/w1;

    invoke-static {v0}, Lcom/join/mgps/activity/w1;->c0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x6

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/w1$g;->a:Lcom/join/mgps/activity/w1;

    invoke-static {v1}, Lcom/join/mgps/activity/w1;->c0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/w1$g;->a:Lcom/join/mgps/activity/w1;

    invoke-static {v0}, Lcom/join/mgps/activity/w1;->c0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/w1$g;->a:Lcom/join/mgps/activity/w1;

    invoke-static {v0}, Lcom/join/mgps/activity/w1;->c0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/w1$g$b;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/activity/w1$g$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/w1$g$b;-><init>(Lcom/join/mgps/activity/w1$g;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/w1$g;->a:Lcom/join/mgps/activity/w1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c021e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090687

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/activity/w1$g$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090acd

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/activity/w1$g$b;->b:Landroid/widget/TextView;

    const v0, 0x7f090e7c

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/activity/w1$g$b;->c:Landroid/widget/TextView;

    const v0, 0x7f09076f

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/w1$g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/w1$g;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 11
    iget-object v0, p3, Lcom/join/mgps/activity/w1$g$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/activity/w1$g$b;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double v0, v0, v2

    mul-double v0, v0, v2

    double-to-long v0, v0

    .line 15
    :cond_2
    iget-object v2, p3, Lcom/join/mgps/activity/w1$g$b;->c:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v0, Lcom/join/mgps/activity/x1;

    invoke-direct {v0, p1}, Lcom/join/mgps/activity/x1;-><init>(Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p3, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/join/mgps/Util/UtilsMy;->r2(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 18
    iget-object v0, p3, Lcom/join/mgps/activity/w1$g$b;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/activity/w1$g$a;

    new-instance v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-direct {v2, p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/activity/w1$g$a;-><init>(Lcom/join/mgps/activity/w1$g;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/activity/w1$g;->d(Lcom/join/mgps/activity/w1$g$b;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    return-object p2
.end method
