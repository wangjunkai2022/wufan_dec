.class public Lcom/join/mgps/adapter/s3;
.super Landroid/widget/BaseAdapter;
.source "PaPaListItemDownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/s3$b;,
        Lcom/join/mgps/adapter/s3$a;,
        Lcom/join/mgps/adapter/s3$d;,
        Lcom/join/mgps/adapter/s3$c;,
        Lcom/join/mgps/adapter/s3$f;,
        Lcom/join/mgps/adapter/s3$g;,
        Lcom/join/mgps/adapter/s3$e;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private c:I

.field private final d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/s3;->c:I

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/s3;->a:Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/join/mgps/dto/PaPaBean;->getTypes()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/join/mgps/adapter/s3;->c:I

    .line 6
    iput-object p3, p0, Lcom/join/mgps/adapter/s3;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/s3;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/s3;->e:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/s3;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/s3;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/s3;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/adapter/s3$d;->m(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    invoke-static {p1}, Lcom/join/mgps/adapter/s3$d;->g(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/adapter/s3$d;->m(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/adapter/s3$d;->g(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method e(Landroid/view/View;Lcom/join/mgps/adapter/s3$c;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    const v0, 0x7f090bcc

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/adapter/s3$a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/adapter/s3$a;

    iget-object v2, p0, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/adapter/s3$a;-><init>(Lcom/join/mgps/adapter/s3;Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    :cond_0
    iget-object p1, p2, Lcom/join/mgps/adapter/s3$c;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    invoke-virtual {v1, p3}, Lcom/join/mgps/adapter/s3$a;->setListDatas(Ljava/util/List;)V

    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method f(Lcom/join/mgps/adapter/s3$d;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/join/mgps/dto/AppBean;

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->a(Lcom/join/mgps/adapter/s3$d;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v0

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0807b1

    invoke-static {v0, v5, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->c(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->e(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->g(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getAppSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4130000000000000L    # 1048576.0

    mul-double v5, v5, v7

    double-to-long v5, v5

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getScore()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getDown_count()I

    move-result v8

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getAppSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v10

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->o(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/LinearLayout;

    move-result-object v12

    iget-object v13, v1, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    invoke-static/range {v7 .. v13}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->i(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/RelativeLayout;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v8, 0x7f080a62

    if-eqz v7, :cond_0

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v5, "\u5f00\u59cb"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v5, v1, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->o(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->c(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_0
    const-string v4, "\u66f4\u65b0"

    const v7, -0xa81da

    const v9, 0x7f1100d2

    const v10, 0x7f080a6e

    const v11, -0x8d57ef

    const v12, 0x7f080a67

    if-nez v0, :cond_4

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v5}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, v1, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v5, v1, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 22
    iget-object v0, v1, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v5, v1, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 23
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 24
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 26
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 28
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 32
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 34
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 35
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->i(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_4

    .line 36
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 38
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->i(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_4

    .line 40
    :cond_4
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v13

    .line 41
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v14

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0x2b

    if-lez v14, :cond_5

    const/16 v13, 0x2b

    :cond_5
    if-eqz v13, :cond_d

    const/16 v14, 0x1b

    const-string v7, "\u6682\u505c\u4e2d"

    if-eq v13, v14, :cond_c

    const/16 v14, 0x30

    const v9, -0xc57a1e

    if-eq v13, v14, :cond_b

    const/4 v14, 0x2

    const-wide/16 v16, 0x0

    const-string v10, "/"

    if-eq v13, v14, :cond_9

    const/4 v14, 0x3

    if-eq v13, v14, :cond_7

    const/4 v14, 0x5

    if-eq v13, v14, :cond_6

    const/4 v14, 0x6

    if-eq v13, v14, :cond_7

    const/4 v7, 0x7

    if-eq v13, v7, :cond_d

    const/16 v7, 0x2a

    if-eq v13, v7, :cond_6

    if-eq v13, v15, :cond_d

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_4

    .line 42
    :pswitch_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4, v7}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 43
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->k:Landroid/widget/TextView;

    const-string v5, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f080a7b

    .line 47
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u89e3\u538b"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 50
    :pswitch_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4, v7}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 51
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->k:Landroid/widget/TextView;

    const-string v5, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f0803ca

    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const v4, -0x4a4a4b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 58
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u5b89\u88c5"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_4

    .line 62
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 64
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v4

    const-string v7, "\u7b49\u5f85"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4, v4}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 67
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :try_start_0
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :goto_0
    iget-object v0, v2, Lcom/join/mgps/adapter/s3$d;->k:Landroid/widget/TextView;

    const-string v4, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 71
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 73
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_4

    .line 76
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f080a6e

    .line 77
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v4, v1, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1100d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const v4, -0xa81da

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v0}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_4

    .line 81
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v4

    const-string v8, "\u7ee7\u7eed"

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4, v4}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 85
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v8

    cmp-long v4, v8, v16

    if-nez v4, :cond_8

    .line 86
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 87
    :cond_8
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_1
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :goto_2
    iget-object v0, v2, Lcom/join/mgps/adapter/s3$d;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 91
    :cond_9
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 92
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v4

    .line 93
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v4

    const-string v7, "\u6682\u505c"

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4, v4}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 97
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v4, v7, v16

    if-nez v4, :cond_a

    .line 98
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 99
    :cond_a
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_3
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 101
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v4, v2, Lcom/join/mgps/adapter/s3$d;->k:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 103
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 104
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v4, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_4

    .line 107
    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 108
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 110
    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v3}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 111
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->k(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->i(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->m2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/AppBean;)V

    .line 112
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/s3;->d(Lcom/join/mgps/adapter/s3$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 113
    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->i(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/adapter/s3$d;->i(Lcom/join/mgps/adapter/s3$d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/adapter/s3;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method g(Lcom/join/mgps/adapter/s3$e;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameHeadAd;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getMain()Lcom/join/mgps/dto/GameHeadAd$GameMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd$GameMain;->getAd_switch()I

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/adapter/s3$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameHeadAd;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameHeadAd;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 7
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameHeadAd;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameHeadAd$SubInfo;

    .line 8
    iget-object v2, p1, Lcom/join/mgps/adapter/s3$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v1, p1, Lcom/join/mgps/adapter/s3$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/join/mgps/adapter/s3;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    :cond_2
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GameHeadAd;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameHeadAd;->getMain()Lcom/join/mgps/dto/GameHeadAd$GameMain;

    move-result-object p2

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameHeadAd$GameMain;->getPic_remote()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s3;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s3;->a:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/s3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PaPaBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/s3;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_5

    .line 2
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 3
    new-instance p2, Lcom/join/mgps/adapter/s3$e;

    invoke-direct {p2}, Lcom/join/mgps/adapter/s3$e;-><init>()V

    .line 4
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v2, 0x7f0c0329

    invoke-virtual {p3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 5
    iget-object v2, p0, Lcom/join/mgps/adapter/s3;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/PaPaBean;

    const v3, 0x7f09054d

    .line 6
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, p2, Lcom/join/mgps/adapter/s3$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getImageHeaderParams()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getImageHeaderParams()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "key_image_header_height"

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 11
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/join/mgps/adapter/s3;->b:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v5, v2}, Lcom/join/mgps/Util/b0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    iget-object v2, p2, Lcom/join/mgps/adapter/s3$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v1, p2

    move-object p2, p3

    goto/16 :goto_0

    .line 14
    :cond_1
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_TITLE_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 15
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c032b

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 16
    new-instance p3, Lcom/join/mgps/adapter/s3$f;

    invoke-direct {p3}, Lcom/join/mgps/adapter/s3$f;-><init>()V

    const v2, 0x7f0910c5

    .line 17
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$f;->b:Landroid/widget/TextView;

    const v2, 0x7f091192

    .line 18
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$f;->a:Landroid/widget/TextView;

    .line 19
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 20
    :cond_2
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_GAMEFACTORY_LIST:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 21
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c030d

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 22
    new-instance p3, Lcom/join/mgps/adapter/s3$g;

    invoke-direct {p3}, Lcom/join/mgps/adapter/s3$g;-><init>()V

    const v2, 0x7f09056c

    .line 23
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f09113e

    .line 24
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$g;->b:Landroid/widget/TextView;

    const v2, 0x7f0910ed

    .line 25
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$g;->c:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 27
    :cond_3
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 28
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c032a

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 29
    new-instance p3, Lcom/join/mgps/adapter/s3$c;

    invoke-direct {p3}, Lcom/join/mgps/adapter/s3$c;-><init>()V

    const v2, 0x7f0909da

    .line 30
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$c;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 31
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 32
    :cond_4
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 33
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0327

    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance p3, Lcom/join/mgps/adapter/s3$d;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/s3$d;-><init>(Lcom/join/mgps/adapter/s3;)V

    const v2, 0x7f090a39

    .line 35
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p3, v2}, Lcom/join/mgps/adapter/s3$d;->b(Lcom/join/mgps/adapter/s3$d;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f0905ee

    .line 36
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {p3, v2}, Lcom/join/mgps/adapter/s3$d;->d(Lcom/join/mgps/adapter/s3$d;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v2, 0x7f090a37

    .line 37
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lcom/join/mgps/adapter/s3$d;->f(Lcom/join/mgps/adapter/s3$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f090c60

    .line 38
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$d;->d:Landroid/widget/ProgressBar;

    const v2, 0x7f090c59

    .line 39
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$d;->e:Landroid/widget/ProgressBar;

    const v2, 0x7f090a38

    .line 40
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lcom/join/mgps/adapter/s3$d;->h(Lcom/join/mgps/adapter/s3$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f090cac

    .line 41
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {p3, v2}, Lcom/join/mgps/adapter/s3$d;->j(Lcom/join/mgps/adapter/s3$d;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v2, 0x7f090a3a

    .line 42
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {p3, v2}, Lcom/join/mgps/adapter/s3$d;->l(Lcom/join/mgps/adapter/s3$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v2, 0x7f0908cd

    .line 43
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {p3, v2}, Lcom/join/mgps/adapter/s3$d;->n(Lcom/join/mgps/adapter/s3$d;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v2, 0x7f0900ea

    .line 44
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$d;->j:Landroid/widget/TextView;

    const v2, 0x7f0909b2

    .line 45
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/join/mgps/adapter/s3$d;->k:Landroid/widget/TextView;

    const v2, 0x7f09100c

    .line 46
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-static {p3, v2}, Lcom/join/mgps/adapter/s3$d;->p(Lcom/join/mgps/adapter/s3$d;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 47
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 48
    :cond_5
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result p3

    if-ne v0, p3, :cond_6

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/s3$e;

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v1, p3

    :goto_0
    move-object p3, v4

    goto :goto_7

    .line 50
    :cond_6
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_TITLE_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result p3

    if-ne v0, p3, :cond_7

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/s3$f;

    :goto_1
    move-object v2, v1

    :goto_2
    move-object v3, v2

    :goto_3
    move-object v4, v3

    goto :goto_7

    .line 52
    :cond_7
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_GAMEFACTORY_LIST:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result p3

    if-ne v0, p3, :cond_8

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/s3$g;

    :goto_4
    move-object v2, p3

    move-object p3, v1

    move-object v3, p3

    goto :goto_3

    .line 54
    :cond_8
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result p3

    if-ne v0, p3, :cond_9

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/s3$c;

    :goto_5
    move-object v3, p3

    move-object p3, v1

    move-object v2, p3

    move-object v4, v2

    goto :goto_7

    .line 56
    :cond_9
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result p3

    if-ne v0, p3, :cond_a

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/s3$d;

    :goto_6
    move-object v4, p3

    move-object p3, v1

    move-object v2, p3

    move-object v3, v2

    goto :goto_7

    :cond_a
    move-object p3, v1

    move-object v2, p3

    goto :goto_2

    .line 58
    :goto_7
    iget-object v5, p0, Lcom/join/mgps/adapter/s3;->a:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PaPaBean;

    .line 59
    sget-object v5, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v5

    if-ne v0, v5, :cond_b

    .line 60
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/adapter/s3;->g(Lcom/join/mgps/adapter/s3$e;Lcom/join/mgps/dto/PaPaBean;)V

    goto :goto_8

    .line 61
    :cond_b
    sget-object v1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_TITLE_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 62
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/s3;->h(Lcom/join/mgps/adapter/s3$f;Lcom/join/mgps/dto/PaPaBean;)V

    goto :goto_8

    .line 63
    :cond_c
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_GAMEFACTORY_LIST:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result p3

    if-ne v0, p3, :cond_d

    .line 64
    invoke-virtual {p0, v2, p1}, Lcom/join/mgps/adapter/s3;->i(Lcom/join/mgps/adapter/s3$g;Lcom/join/mgps/dto/PaPaBean;)V

    goto :goto_8

    .line 65
    :cond_d
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result p3

    if-ne v0, p3, :cond_e

    .line 66
    invoke-virtual {p0, p2, v3, p1}, Lcom/join/mgps/adapter/s3;->e(Landroid/view/View;Lcom/join/mgps/adapter/s3$c;Lcom/join/mgps/dto/PaPaBean;)V

    goto :goto_8

    .line 67
    :cond_e
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    move-result p3

    if-ne v0, p3, :cond_f

    .line 68
    invoke-virtual {p0, v4, p1}, Lcom/join/mgps/adapter/s3;->f(Lcom/join/mgps/adapter/s3$d;Lcom/join/mgps/dto/PaPaBean;)V

    :cond_f
    :goto_8
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/s3;->c:I

    return v0
.end method

.method h(Lcom/join/mgps/adapter/s3$f;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/CollectionInfo;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$f;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$f;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$f;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method i(Lcom/join/mgps/adapter/s3$g;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->getLogo_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$g;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->getIntroduce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$g;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
