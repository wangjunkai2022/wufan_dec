.class public Lcom/join/mgps/adapter/u0;
.super Landroid/widget/BaseAdapter;
.source "GameAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/u0$b;,
        Lcom/join/mgps/adapter/u0$a;
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

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/u0;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/u0;->d:I

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/u0;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/u0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/u0;->c:Ljava/util/List;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/u0;->d:I

    return-void
.end method

.method d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/adapter/u0$b;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/u0$b;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/adapter/u0$b;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/u0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/u0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/u0;->c:Ljava/util/List;

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
    .locals 21

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 2
    invoke-virtual {v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-nez p2, :cond_0

    .line 3
    iget-object v4, v1, Lcom/join/mgps/adapter/u0;->b:Landroid/view/LayoutInflater;

    const v5, 0x7f0c00db

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4
    new-instance v5, Lcom/join/mgps/adapter/u0$b;

    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/u0$b;-><init>(Lcom/join/mgps/adapter/u0;)V

    const v6, 0x7f0908c3

    .line 5
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->a:Landroid/view/View;

    const v6, 0x7f0910ad

    .line 6
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    const v6, 0x7f0907d0

    .line 7
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->c:Landroid/widget/ImageView;

    const v6, 0x7f0905ee

    .line 8
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->d:Landroid/widget/ImageView;

    const v6, 0x7f090a39

    .line 9
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v6, 0x7f090a37

    .line 10
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->f:Landroid/widget/TextView;

    const v6, 0x7f090cac

    .line 11
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->g:Landroid/widget/RelativeLayout;

    const v6, 0x7f090a3a

    .line 12
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const v6, 0x7f09100c

    .line 13
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->i:Landroid/widget/LinearLayout;

    const v6, 0x7f090a38

    .line 14
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->j:Landroid/widget/TextView;

    const v6, 0x7f0908cd

    .line 15
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->k:Landroid/widget/LinearLayout;

    const v6, 0x7f0900ea

    .line 16
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->l:Landroid/widget/TextView;

    const v6, 0x7f0909b2

    .line 17
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->m:Landroid/widget/TextView;

    const v6, 0x7f090c59

    .line 18
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->n:Landroid/widget/ProgressBar;

    const v6, 0x7f090c60

    .line 19
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/adapter/u0$b;->o:Landroid/widget/ProgressBar;

    .line 20
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/join/mgps/adapter/u0$b;

    move-object/from16 v4, p2

    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x8

    if-nez v0, :cond_1

    .line 22
    iget v8, v1, Lcom/join/mgps/adapter/u0;->d:I

    if-lez v8, :cond_1

    .line 23
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->a:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_1
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->a:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v8, v0, 0x1

    const-string v9, ""

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v8, v12, :cond_2

    if-eq v8, v11, :cond_2

    if-eq v8, v10, :cond_2

    .line 25
    iget-object v13, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v13, v5, Lcom/join/mgps/adapter/u0$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object v13, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    const/high16 v13, -0x1000000

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    const/high16 v13, 0x41400000    # 12.0f

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 30
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    .line 31
    :cond_2
    iget v13, v1, Lcom/join/mgps/adapter/u0;->d:I

    if-lez v13, :cond_5

    .line 32
    iget-object v13, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v13, v5, Lcom/join/mgps/adapter/u0$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v13, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ne v8, v12, :cond_3

    .line 34
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->c:Landroid/widget/ImageView;

    const v13, 0x7f080663

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    if-ne v8, v11, :cond_4

    .line 35
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->c:Landroid/widget/ImageView;

    const v13, 0x7f080665

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    if-ne v8, v10, :cond_6

    .line 36
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->c:Landroid/widget/ImageView;

    const v13, 0x7f080664

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 37
    :cond_5
    iget-object v13, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    iget-object v13, v5, Lcom/join/mgps/adapter/u0$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    iget-object v13, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    const-string v13, "#ff9f15"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 42
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->b:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 43
    :cond_6
    :goto_2
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v13, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0807b1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v8

    if-ne v8, v12, :cond_7

    .line 47
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 48
    :cond_7
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    :goto_3
    iget-object v8, v5, Lcom/join/mgps/adapter/u0$b;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 50
    iget-object v8, v1, Lcom/join/mgps/adapter/u0;->c:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 51
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    mul-double v12, v12, v14

    mul-double v12, v12, v14

    double-to-long v12, v12

    .line 52
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v15

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v17

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v18

    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->i:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    invoke-static/range {v14 .. v20}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 53
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 54
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f080a62

    const v6, 0x7f06002a

    if-eqz v0, :cond_8

    .line 55
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 57
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const-string v2, "\u5f00\u59cb"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_8
    const-string v0, "\u66f4\u65b0"

    const v7, 0x7f060033

    const v9, 0x7f1100d2

    const v14, 0x7f080a6e

    const v15, 0x7f060030

    const v2, 0x7f080a67

    if-nez v3, :cond_d

    .line 61
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v3, v6}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 62
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 63
    iget-object v3, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    iget-object v6, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 64
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v6

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_9

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    move v6, v3

    :goto_4
    if-eqz v6, :cond_b

    .line 65
    iget-object v3, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    iget-object v6, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v6, v10}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v3

    .line 66
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v3

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 67
    iget-object v3, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 69
    iget-object v2, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 71
    :cond_a
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    .line 72
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 73
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 75
    :cond_b
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 77
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 78
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v5, Lcom/join/mgps/adapter/u0$b;->g:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2, v8}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_8

    .line 79
    :cond_c
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 81
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 82
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v5, Lcom/join/mgps/adapter/u0$b;->g:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2, v8}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_8

    .line 83
    :cond_d
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v16

    .line 84
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v7

    const/16 v9, 0x2b

    if-lez v7, :cond_e

    const/16 v7, 0x2b

    goto :goto_5

    :cond_e
    move/from16 v7, v16

    :goto_5
    if-eqz v7, :cond_14

    const/16 v14, 0x1b

    const-string v15, "\u6682\u505c\u4e2d"

    if-eq v7, v14, :cond_13

    const/16 v14, 0x30

    if-eq v7, v14, :cond_12

    const-string v14, "/"

    if-eq v7, v11, :cond_11

    if-eq v7, v10, :cond_10

    const/4 v10, 0x5

    if-eq v7, v10, :cond_f

    const/4 v10, 0x6

    if-eq v7, v10, :cond_10

    const/4 v10, 0x7

    if-eq v7, v10, :cond_14

    const/16 v10, 0x2a

    if-eq v7, v10, :cond_f

    if-eq v7, v9, :cond_14

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_8

    .line 85
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 86
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->m:Landroid/widget/TextView;

    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const v2, 0x7f080a7b

    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 91
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 93
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 94
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->m:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const v2, 0x7f0803ca

    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 101
    :pswitch_2
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 102
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 105
    :pswitch_3
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const v2, 0x7f080a62

    .line 106
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v0}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 110
    :try_start_0
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :goto_6
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->m:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 114
    :pswitch_4
    iget-object v3, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 116
    iget-object v2, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 119
    :cond_f
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const v2, 0x7f080a6e

    .line 120
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 121
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 124
    :cond_10
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const v2, 0x7f080a62

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 126
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const-string v2, "\u7ee7\u7eed"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v0}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 129
    :try_start_1
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    :goto_7
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 133
    :cond_11
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 134
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const v2, 0x7f080a62

    .line 135
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 136
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v0}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 139
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/S"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_8

    .line 142
    :cond_12
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const v2, 0x7f080a62

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 143
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const-string v2, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_8

    .line 146
    :cond_13
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 147
    :cond_14
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    const v2, 0x7f080a62

    .line 148
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 149
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/join/mgps/adapter/u0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v8}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 151
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->h:Landroid/widget/TextView;

    iget-object v2, v5, Lcom/join/mgps/adapter/u0$b;->g:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2, v8}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 152
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/u0;->d(Lcom/join/mgps/adapter/u0$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 153
    :goto_8
    iget-object v0, v5, Lcom/join/mgps/adapter/u0$b;->g:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/adapter/u0$a;

    invoke-direct {v2, v1, v8}, Lcom/join/mgps/adapter/u0$a;-><init>(Lcom/join/mgps/adapter/u0;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 154
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
