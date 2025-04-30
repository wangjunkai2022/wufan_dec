.class public Lcom/join/mgps/adapter/w4;
.super Landroid/widget/BaseAdapter;
.source "RankingItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/w4$c;,
        Lcom/join/mgps/adapter/w4$b;
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

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/w4;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/w4;->d:I

    const-string v1, "0"

    .line 4
    iput-object v1, p0, Lcom/join/mgps/adapter/w4;->e:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/w4;->g:Z

    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/w4;->b:Landroid/view/LayoutInflater;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/adapter/w4;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/w4;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/adapter/w4;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/w4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/w4;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/w4;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/w4;->f:Z

    return v0
.end method

.method public e()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/w4;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/adapter/w4;->g:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/w4;->f:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/w4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/w4;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    if-nez p2, :cond_0

    .line 1
    iget-object v0, v1, Lcom/join/mgps/adapter/w4;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0552

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v3, Lcom/join/mgps/adapter/w4$c;

    invoke-direct {v3, v1}, Lcom/join/mgps/adapter/w4$c;-><init>(Lcom/join/mgps/adapter/w4;)V

    const v4, 0x7f0908c3

    .line 3
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->a:Landroid/view/View;

    const v4, 0x7f0910ad

    .line 4
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    const v4, 0x7f0907d0

    .line 5
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->d:Landroid/widget/ImageView;

    const v4, 0x7f0905ee

    .line 6
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->e:Landroid/widget/ImageView;

    const v4, 0x7f090a39

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f090a37

    .line 8
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->g:Landroid/widget/TextView;

    const v4, 0x7f090cac

    .line 9
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->h:Landroid/widget/RelativeLayout;

    const v4, 0x7f090a3a

    .line 10
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const v4, 0x7f09100c

    .line 11
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->j:Landroid/widget/LinearLayout;

    const v4, 0x7f090a38

    .line 12
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->k:Landroid/widget/TextView;

    const v4, 0x7f0908cd

    .line 13
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->l:Landroid/widget/LinearLayout;

    const v4, 0x7f0900ea

    .line 14
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->m:Landroid/widget/TextView;

    const v4, 0x7f0909b2

    .line 15
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->n:Landroid/widget/TextView;

    const v4, 0x7f090c59

    .line 16
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->o:Landroid/widget/ProgressBar;

    const v4, 0x7f090c60

    .line 17
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->p:Landroid/widget/ProgressBar;

    const v4, 0x7f090d07

    .line 18
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/join/mgps/adapter/w4$c;->b:Landroid/view/View;

    .line 19
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/join/mgps/adapter/w4$c;

    move-object v4, v3

    move-object/from16 v3, p2

    .line 21
    :goto_0
    iget-object v0, v1, Lcom/join/mgps/adapter/w4;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 22
    iget-object v0, v1, Lcom/join/mgps/adapter/w4;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 23
    invoke-virtual {v6}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-nez v2, :cond_1

    .line 24
    iget v9, v1, Lcom/join/mgps/adapter/w4;->d:I

    if-lez v9, :cond_1

    .line 25
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->a:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_1
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->a:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :goto_1
    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v9

    const v10, 0x1e240

    if-ne v9, v10, :cond_2

    .line 28
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->a:Landroid/view/View;

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0908be

    .line 29
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->b:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    add-int/lit8 v9, v2, 0x1

    const-string v10, ""

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq v9, v13, :cond_3

    if-eq v9, v12, :cond_3

    if-eq v9, v11, :cond_3

    .line 31
    iget-object v14, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v14, v4, Lcom/join/mgps/adapter/w4$c;->d:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object v14, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    const/high16 v14, -0x1000000

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 36
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_2

    .line 37
    :cond_3
    iget v14, v1, Lcom/join/mgps/adapter/w4;->d:I

    if-lez v14, :cond_6

    .line 38
    iget-object v14, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    iget-object v14, v4, Lcom/join/mgps/adapter/w4$c;->d:Landroid/widget/ImageView;

    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ne v9, v13, :cond_4

    .line 40
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->d:Landroid/widget/ImageView;

    const v14, 0x7f080663

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    if-ne v9, v12, :cond_5

    .line 41
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->d:Landroid/widget/ImageView;

    const v14, 0x7f080665

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    if-ne v9, v11, :cond_7

    .line 42
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->d:Landroid/widget/ImageView;

    const v14, 0x7f080664

    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 43
    :cond_6
    iget-object v14, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v14, v4, Lcom/join/mgps/adapter/w4$c;->d:Landroid/widget/ImageView;

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v14, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    const-string v14, "#ff9f15"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    const/high16 v14, 0x41600000    # 14.0f

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->c:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 49
    :cond_7
    :goto_2
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->g:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->k:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v14, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0807b1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v9

    if-ne v9, v13, :cond_8

    .line 53
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 54
    :cond_8
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :goto_3
    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    const-wide/16 v13, 0x0

    if-eqz v0, :cond_9

    .line 56
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v13

    .line 57
    :cond_9
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v16

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v18

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v19

    iget-object v9, v4, Lcom/join/mgps/adapter/w4$c;->j:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    move-object/from16 v20, v9

    move-object/from16 v21, v7

    invoke-static/range {v15 .. v21}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 58
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v7

    invoke-static {v7, v3, v0}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 59
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v15}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const v9, 0x7f080a62

    const v10, 0x7f06002a

    if-eqz v7, :cond_a

    .line 60
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    .line 61
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 62
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const-string v7, "\u5f00\u59cb"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_a
    const-string v7, "\u66f4\u65b0"

    const v8, 0x7f060033

    const v15, 0x7f1100d2

    const v9, 0x7f080a6e

    const v10, 0x7f060030

    const v11, 0x7f080a67

    if-nez v0, :cond_f

    .line 66
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v0, v12}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 67
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 68
    iget-object v0, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v12, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 69
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v12

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_b

    const/4 v0, 0x0

    :cond_b
    if-eqz v0, :cond_d

    .line 70
    iget-object v0, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v12, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 71
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-ge v0, v12, :cond_c

    .line 72
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    .line 73
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 74
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 76
    :cond_c
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    .line 77
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 78
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 80
    :cond_d
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    .line 81
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 82
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 83
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->h:Landroid/widget/RelativeLayout;

    invoke-static {v0, v7, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 84
    :cond_e
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 86
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 87
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->h:Landroid/widget/RelativeLayout;

    invoke-static {v0, v7, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_7

    .line 88
    :cond_f
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v18

    .line 89
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v8

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v8

    const/16 v15, 0x2b

    if-lez v8, :cond_10

    const/16 v8, 0x2b

    goto :goto_4

    :cond_10
    move/from16 v8, v18

    :goto_4
    if-eqz v8, :cond_16

    const/16 v9, 0x1b

    const-string v10, "\u6682\u505c\u4e2d"

    if-eq v8, v9, :cond_15

    const/16 v9, 0x30

    if-eq v8, v9, :cond_14

    const-string v9, "/"

    if-eq v8, v12, :cond_13

    const/4 v12, 0x3

    if-eq v8, v12, :cond_12

    const/4 v12, 0x5

    if-eq v8, v12, :cond_11

    const/4 v12, 0x6

    if-eq v8, v12, :cond_12

    const/4 v10, 0x7

    if-eq v8, v10, :cond_16

    const/16 v10, 0x2a

    if-eq v8, v10, :cond_11

    if-eq v8, v15, :cond_16

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_7

    .line 90
    :pswitch_0
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v7, v8}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 91
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->m:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->n:Landroid/widget/TextView;

    const-string v8, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 94
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const v7, 0x7f080a7b

    .line 95
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const-string v7, "\u89e3\u538b"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 98
    :pswitch_1
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v7, v8}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 99
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->m:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->n:Landroid/widget/TextView;

    const-string v8, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const v7, 0x7f0803ca

    .line 103
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 104
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const-string v7, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 106
    :pswitch_2
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 107
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const-string v7, "\u5b89\u88c5"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v0, v7}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 110
    :pswitch_3
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const v8, 0x7f080a62

    .line 111
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 112
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const-string v8, "\u7b49\u5f85"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f06002a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v7, v7}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 115
    :try_start_0
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->m:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :goto_5
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->n:Landroid/widget/TextView;

    const-string v7, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 119
    :pswitch_4
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    .line 120
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 121
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v0, v7}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 124
    :cond_11
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const v7, 0x7f080a6e

    .line 125
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 126
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1100d2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v0, v7}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_7

    .line 129
    :cond_12
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const v8, 0x7f080a62

    .line 130
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 131
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const-string v8, "\u7ee7\u7eed"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f06002a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v7, v7}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 134
    :try_start_1
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->m:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :goto_6
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 138
    :cond_13
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 139
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const v8, 0x7f080a62

    .line 140
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 141
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const-string v8, "\u6682\u505c"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f06002a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v7, v7}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 144
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->m:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->n:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-virtual {v7, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_7

    .line 147
    :cond_14
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const v7, 0x7f080a62

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 148
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const-string v7, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v0, v7}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_7

    .line 151
    :cond_15
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 152
    :cond_16
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    const v7, 0x7f080a62

    .line 153
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 154
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v1, Lcom/join/mgps/adapter/w4;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 156
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->i:Landroid/widget/TextView;

    iget-object v7, v4, Lcom/join/mgps/adapter/w4$c;->h:Landroid/widget/RelativeLayout;

    invoke-static {v0, v7, v5}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 157
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v0, v7}, Lcom/join/mgps/adapter/w4;->i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 158
    :goto_7
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->b:Landroid/view/View;

    new-instance v7, Lcom/join/mgps/adapter/w4$a;

    invoke-direct {v7, v1, v6, v2}, Lcom/join/mgps/adapter/w4$a;-><init>(Lcom/join/mgps/adapter/w4;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, v4, Lcom/join/mgps/adapter/w4$c;->h:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/join/mgps/adapter/w4$b;

    invoke-direct {v4, v1, v5, v2}, Lcom/join/mgps/adapter/w4$b;-><init>(Lcom/join/mgps/adapter/w4;Lcom/join/mgps/business/CollectionBeanSubBusiness;I)V

    .line 160
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

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

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/w4;->d:I

    return-void
.end method

.method i(Lcom/join/mgps/adapter/w4$c;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/adapter/w4$c;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/w4$c;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/adapter/w4$c;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
