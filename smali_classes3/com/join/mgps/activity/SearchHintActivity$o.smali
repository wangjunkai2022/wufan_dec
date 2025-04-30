.class public Lcom/join/mgps/activity/SearchHintActivity$o;
.super Landroid/widget/BaseAdapter;
.source "SearchHintActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SearchHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchHintActivity$o$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->d:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->d:Lcom/join/mgps/activity/SearchHintActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->c:Ljava/util/List;

    .line 6
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/SearchHintActivity$o;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->b:Landroid/view/LayoutInflater;

    const p3, 0x7f0c058e

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;

    invoke-direct {p3, p0, v0}, Lcom/join/mgps/activity/SearchHintActivity$o$b;-><init>(Lcom/join/mgps/activity/SearchHintActivity$o;Lcom/join/mgps/activity/SearchHintActivity$c;)V

    const v0, 0x7f0909cf

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->d:Landroid/widget/TextView;

    const v0, 0x7f090399

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->b:Landroid/widget/ImageView;

    const v0, 0x7f090d44

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->c:Landroid/view/View;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getGame_name()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->d:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=#f47500>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchAutoDataBean;->getIsHistory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_2
    iget-object p3, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->c:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/activity/SearchHintActivity$o$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/SearchHintActivity$o$a;-><init>(Lcom/join/mgps/activity/SearchHintActivity$o;Ljava/lang/String;Lcom/join/mgps/dto/SearchAutoDataBean;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 18
    :cond_3
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    .line 19
    iget-object p1, p3, Lcom/join/mgps/activity/SearchHintActivity$o$b;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    return-object p2
.end method

.method public c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v1, p0

    if-nez p2, :cond_0

    .line 1
    iget-object v0, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0c057a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/join/mgps/activity/SearchHintActivity$p;

    invoke-direct {v2}, Lcom/join/mgps/activity/SearchHintActivity$p;-><init>()V

    const v3, 0x7f090a39

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0905ee

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->b:Landroid/widget/ImageView;

    const v3, 0x7f090a37

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->c:Landroid/widget/TextView;

    const v3, 0x7f090cac

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->d:Landroid/widget/RelativeLayout;

    const v3, 0x7f090a3a

    .line 7
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const v3, 0x7f090a38

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->g:Landroid/widget/TextView;

    const v3, 0x7f0908cd

    .line 9
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->h:Landroid/widget/LinearLayout;

    const v3, 0x7f09100c

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->i:Landroid/widget/LinearLayout;

    const v3, 0x7f091003

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->k:Landroid/widget/TextView;

    const v3, 0x7f0900ea

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    const v3, 0x7f0909b2

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->l:Landroid/widget/TextView;

    const v3, 0x7f090c59

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->m:Landroid/widget/ProgressBar;

    const v3, 0x7f090c60

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->n:Landroid/widget/ProgressBar;

    const v3, 0x7f0908be

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/activity/SearchHintActivity$p;->f:Landroid/view/View;

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/join/mgps/activity/SearchHintActivity$p;

    move-object v3, v2

    move-object/from16 v2, p2

    .line 19
    :goto_0
    iget-object v0, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->c:Ljava/util/List;

    move/from16 v4, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 20
    invoke-virtual {v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 21
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v5, v6, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    :goto_1
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double v5, v5, v8

    mul-double v5, v5, v8

    double-to-long v5, v5

    .line 26
    iget-object v8, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    .line 28
    iget-object v8, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->k:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " \u00b7 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v10}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const v9, 0x7f06002a

    const v11, 0x7f080a62

    if-eqz v8, :cond_2

    .line 30
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 31
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 32
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const-string v5, "\u5f00\u59cb"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_2
    const-string v7, "\u66f4\u65b0"

    const v8, 0x7f1100d2

    const v12, 0x7f080a6e

    const v13, 0x7f080a67

    if-nez v0, :cond_7

    .line 36
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 37
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    iget-object v0, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 39
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v5

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_5

    .line 40
    iget-object v0, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 41
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 42
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 43
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 44
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const v5, -0x8d57ef

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 46
    :cond_4
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 48
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const v5, -0xa81da

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 50
    :cond_5
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 51
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 52
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 53
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5, v4}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_6

    .line 54
    :cond_6
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 56
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 57
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5, v4}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_6

    .line 58
    :cond_7
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v14

    .line 59
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v15

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v8

    const/16 v15, 0x2b

    if-lez v8, :cond_8

    const/16 v14, 0x2b

    :cond_8
    if-eqz v14, :cond_10

    const/16 v8, 0x1b

    const-string v12, "\u6682\u505c\u4e2d"

    if-eq v14, v8, :cond_f

    const/16 v8, 0x30

    if-eq v14, v8, :cond_e

    const/4 v8, 0x2

    const-wide/16 v16, 0x0

    const-string v9, "/"

    if-eq v14, v8, :cond_c

    const/4 v8, 0x3

    if-eq v14, v8, :cond_a

    const/4 v8, 0x5

    if-eq v14, v8, :cond_9

    const/4 v8, 0x6

    if-eq v14, v8, :cond_a

    const/4 v8, 0x7

    if-eq v14, v8, :cond_10

    const/16 v8, 0x2a

    if-eq v14, v8, :cond_9

    if-eq v14, v15, :cond_10

    const v8, 0x7f060030

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_6

    .line 60
    :pswitch_0
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v7, v8}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 61
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->l:Landroid/widget/TextView;

    const-string v6, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 64
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const v5, 0x7f080a7b

    .line 65
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 66
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const-string v5, "\u89e3\u538b"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 68
    :pswitch_1
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v7, v8}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 69
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->l:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 72
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const v5, 0x7f0803ca

    .line 73
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 74
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const-string v5, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const v5, -0x4a4a4b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 76
    :pswitch_2
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const-string v5, "\u5b89\u88c5"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 80
    :pswitch_3
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 81
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const-string v8, "\u7b49\u5f85"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f06002a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v7, v7}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 85
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :try_start_0
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :goto_2
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->l:Landroid/widget/TextView;

    const-string v5, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 89
    :pswitch_4
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 90
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 91
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 94
    :cond_9
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const v5, 0x7f080a6e

    .line 95
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v0}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 99
    :cond_a
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 100
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 101
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const-string v8, "\u7ee7\u7eed"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f06002a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v7, v7}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 104
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v11, v7, v16

    if-nez v11, :cond_b

    .line 105
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 106
    :cond_b
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_3
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :goto_4
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 110
    :cond_c
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 111
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 112
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 113
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const-string v8, "\u6682\u505c"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f06002a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v7, v7}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 116
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v7

    cmp-long v11, v7, v16

    if-nez v11, :cond_d

    .line 117
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 118
    :cond_d
    iget-object v7, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->j:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_5
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 120
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->l:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 122
    :cond_e
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    const-string v5, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_6

    .line 126
    :cond_f
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 127
    :cond_10
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    .line 128
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 130
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5, v4}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 131
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/activity/SearchHintActivity$o;->d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 133
    :goto_6
    iget-object v0, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->d:Lcom/join/mgps/activity/SearchHintActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/SearchHintActivity;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 134
    :cond_11
    iget-object v0, v3, Lcom/join/mgps/activity/SearchHintActivity$p;->d:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/activity/SearchHintActivity$l;

    iget-object v5, v1, Lcom/join/mgps/activity/SearchHintActivity$o;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v10}, Lcom/join/mgps/activity/SearchHintActivity$l;-><init>(Lcom/join/mgps/business/CollectionBeanSubBusiness;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method d(Lcom/join/mgps/activity/SearchHintActivity$p;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/SearchHintActivity$p;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/dto/SearchAutoDataBean;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchHintActivity$o;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/SearchHintActivity$o;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/SearchHintActivity$o;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
