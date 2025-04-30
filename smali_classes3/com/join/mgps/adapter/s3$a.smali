.class public Lcom/join/mgps/adapter/s3$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PaPaListItemDownloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/s3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/adapter/s3$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/adapter/s3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/s3;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/s3$a;->c:Lcom/join/mgps/adapter/s3;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/adapter/s3$a;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/adapter/s3$b;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AppBean;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/s3$a;->c(Lcom/join/mgps/adapter/s3$b;Lcom/join/mgps/dto/AppBean;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/s3$b;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c02e2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/s3$b;

    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->c:Lcom/join/mgps/adapter/s3;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/adapter/s3$b;-><init>(Lcom/join/mgps/adapter/s3;Landroid/view/View;)V

    const v0, 0x7f09069b

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p2, Lcom/join/mgps/adapter/s3$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090104

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/s3$b;->b:Landroid/widget/TextView;

    const v0, 0x7f090a3a

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const v0, 0x7f090d96

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p2, Lcom/join/mgps/adapter/s3$b;->d:Landroid/widget/LinearLayout;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->c:Lcom/join/mgps/adapter/s3;

    invoke-static {v0}, Lcom/join/mgps/adapter/s3;->a(Lcom/join/mgps/adapter/s3;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p2, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->c:Lcom/join/mgps/adapter/s3;

    invoke-static {v0}, Lcom/join/mgps/adapter/s3;->b(Lcom/join/mgps/adapter/s3;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public c(Lcom/join/mgps/adapter/s3$b;Lcom/join/mgps/dto/AppBean;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    iget-object v2, p1, Lcom/join/mgps/adapter/s3$b;->d:Landroid/widget/LinearLayout;

    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f080a62

    const v3, 0x7f06002a

    if-eqz v1, :cond_0

    .line 8
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const-string v0, "\u5f00\u59cb"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "\u66f4\u65b0"

    const v4, 0x7f060033

    const v5, 0x7f1100d2

    const v6, 0x7f080a6e

    const v7, 0x7f060030

    const v8, 0x7f080a67

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v2

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getVer()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ge v0, p2, :cond_2

    .line 17
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 19
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 21
    :cond_2
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 22
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 23
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 25
    :cond_3
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 26
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 28
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_0

    .line 29
    :cond_4
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 30
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 32
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V

    goto/16 :goto_0

    .line 33
    :cond_5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v9

    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v10

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x2b

    if-lez v10, :cond_6

    const/16 v9, 0x2b

    :cond_6
    if-eqz v9, :cond_b

    const/16 v10, 0x1b

    if-eq v9, v10, :cond_a

    const/4 v10, 0x2

    if-eq v9, v10, :cond_9

    const/4 v0, 0x3

    if-eq v9, v0, :cond_8

    const/4 v0, 0x5

    if-eq v9, v0, :cond_7

    const/4 v0, 0x6

    if-eq v9, v0, :cond_8

    const/4 v0, 0x7

    if-eq v9, v0, :cond_b

    const/16 v0, 0x2a

    if-eq v9, v0, :cond_7

    if-eq v9, v11, :cond_b

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_0

    .line 35
    :pswitch_0
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const v0, 0x7f080a7b

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 36
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const-string v0, "\u89e3\u538b"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 38
    :pswitch_1
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const v0, 0x7f0803ca

    .line 39
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 40
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const-string v0, "\u89e3\u538b\u4e2d"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060031

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 42
    :pswitch_2
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 43
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const-string v0, "\u5b89\u88c5"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 45
    :pswitch_3
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 47
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const-string v0, "\u7b49\u5f85"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 49
    :pswitch_4
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 50
    invoke-virtual {p2, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 51
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 53
    :cond_7
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 55
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 57
    :cond_8
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 59
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const-string v0, "\u7ee7\u7eed"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 61
    :cond_9
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 62
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 64
    iget-object p2, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const-string v0, "\u6682\u505c"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/s3$a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 66
    :cond_a
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    const-string p2, "\u6682\u505c\u4e2d"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_b
    iget-object v0, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 69
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 70
    iget-object p1, p1, Lcom/join/mgps/adapter/s3$b;->c:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/join/mgps/Util/UtilsMy;->q2(Landroid/widget/TextView;Lcom/join/mgps/dto/AppBean;)V

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

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/adapter/s3$b;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/s3$a;->a(Lcom/join/mgps/adapter/s3$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/s3$a;->b(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/s3$b;

    move-result-object p1

    return-object p1
.end method

.method public setListDatas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/s3$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
