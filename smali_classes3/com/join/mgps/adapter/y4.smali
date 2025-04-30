.class public Lcom/join/mgps/adapter/y4;
.super Landroid/widget/BaseAdapter;
.source "RankingItemV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/y4$a;,
        Lcom/join/mgps/adapter/y4$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Lcom/join/mgps/adapter/y4$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/y4;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/join/mgps/adapter/y4;->d:I

    const-string v1, "0"

    .line 4
    iput-object v1, p0, Lcom/join/mgps/adapter/y4;->e:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/y4;->g:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/join/mgps/adapter/y4;->h:Lcom/join/mgps/adapter/y4$a;

    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/y4;->a:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/y4;->b:Landroid/view/LayoutInflater;

    .line 9
    iput-object p2, p0, Lcom/join/mgps/adapter/y4;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/y4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/y4$b;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/adapter/y4;->c(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/y4$b;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic c(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/y4$b;ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->setRequesting(Z)V

    .line 2
    iget-object p4, p2, Lcom/join/mgps/adapter/y4$b;->k:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p2, p2, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->isRequesting()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 v0, 0x4

    :cond_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/join/mgps/adapter/y4;->h:Lcom/join/mgps/adapter/y4$a;

    if-eqz p2, :cond_3

    invoke-interface {p2, p3, p1}, Lcom/join/mgps/adapter/y4$a;->a(ILcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    :cond_3
    return-void
.end method

.method private g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p5, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p6, :cond_1

    .line 7
    invoke-virtual {p4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    invoke-virtual {p4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y4;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/adapter/y4;->g:Z

    return-void
.end method

.method public e(Lcom/join/mgps/adapter/y4$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/y4;->h:Lcom/join/mgps/adapter/y4$a;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/y4;->d:I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/y4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/y4;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/y4;->c:Ljava/util/List;

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
    .locals 16

    move-object/from16 v8, p0

    move/from16 v0, p1

    if-nez p2, :cond_0

    .line 1
    iget-object v1, v8, Lcom/join/mgps/adapter/y4;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0553

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/join/mgps/adapter/y4$b;

    invoke-direct {v2, v8}, Lcom/join/mgps/adapter/y4$b;-><init>(Lcom/join/mgps/adapter/y4;)V

    const v3, 0x7f09109e

    .line 3
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->a:Landroid/widget/TextView;

    const v3, 0x7f0910be

    .line 4
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    const v3, 0x7f09108f

    .line 5
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const v3, 0x7f0907ca

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0908fb

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    const v3, 0x7f0900ea

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    const v3, 0x7f0909b2

    .line 9
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->g:Landroid/widget/TextView;

    const v3, 0x7f090c60

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const v3, 0x7f090c59

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    const v3, 0x7f0904cb

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->j:Landroid/widget/FrameLayout;

    const v3, 0x7f09098a

    .line 13
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/y4$b;->k:Landroid/widget/ProgressBar;

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v9, v1

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/join/mgps/adapter/y4$b;

    move-object/from16 v9, p2

    :goto_0
    move-object v10, v2

    .line 16
    iget-object v1, v8, Lcom/join/mgps/adapter/y4;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    .line 17
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getBig_pic()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v2, v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 18
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 19
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getG_info()Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/PAPAHomeBeanV7$GInfoDTO;->getTag_name()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 23
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 24
    aget-object v7, v5, v6

    .line 25
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " | "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    if-lt v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 26
    :cond_2
    :goto_2
    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_3
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    new-instance v5, Lcom/join/mgps/adapter/x4;

    invoke-direct {v5, v8, v1, v10, v0}, Lcom/join/mgps/adapter/x4;-><init>(Lcom/join/mgps/adapter/y4;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;Lcom/join/mgps/adapter/y4$b;I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    :cond_4
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const-string v2, "\u83b7\u53d6"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->k:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 31
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;->getGameBean()Lcom/join/mgps/dto/CollectionBeanSub;

    move-result-object v11

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    move-wide v14, v4

    goto :goto_3

    :cond_5
    const-wide/16 v14, 0x0

    :goto_3
    if-eqz v11, :cond_6

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v4}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 35
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_6
    const-string v7, "\u66f4\u65b0"

    const-string v6, "\u542f\u52a8"

    if-nez v0, :cond_b

    .line 37
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v13, v6

    move v6, v0

    move-object v0, v7

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    if-nez v11, :cond_7

    return-object v9

    .line 38
    :cond_7
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 39
    iget-object v1, v8, Lcom/join/mgps/adapter/y4;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v2, v8, Lcom/join/mgps/adapter/y4;->a:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 40
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 41
    iget-object v1, v8, Lcom/join/mgps/adapter/y4;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v1

    iget-object v2, v8, Lcom/join/mgps/adapter/y4;->a:Landroid/content/Context;

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v1

    .line 42
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v1

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 43
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 44
    :cond_8
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 45
    :cond_9
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 46
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->j:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v11}, Lcom/join/mgps/Util/UtilsMy;->t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_8

    .line 47
    :cond_a
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 48
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->j:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v11}, Lcom/join/mgps/Util/UtilsMy;->t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_8

    :cond_b
    move-object v4, v6

    move-object v1, v7

    .line 49
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v5

    const/16 v6, 0x2b

    if-eqz v11, :cond_c

    .line 50
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v7

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_c

    const/16 v5, 0x2b

    :cond_c
    if-eqz v5, :cond_14

    const/16 v7, 0x1b

    const-string v12, "\u6682\u505c\u4e2d"

    if-eq v5, v7, :cond_13

    const/16 v7, 0x30

    if-eq v5, v7, :cond_12

    const/4 v7, 0x2

    const-string v13, "/"

    if-eq v5, v7, :cond_10

    if-eq v5, v3, :cond_e

    const/4 v3, 0x5

    if-eq v5, v3, :cond_d

    const/4 v3, 0x6

    if-eq v5, v3, :cond_e

    const/4 v3, 0x7

    if-eq v5, v3, :cond_14

    const/16 v3, 0x2a

    if-eq v5, v3, :cond_d

    if-eq v5, v6, :cond_14

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_8

    .line 51
    :pswitch_0
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 52
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->g:Landroid/widget/TextView;

    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 55
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 56
    :pswitch_1
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 57
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->g:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 60
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 61
    :pswitch_2
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_8

    .line 63
    :pswitch_3
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const-string v11, "\u7b49\u5f85"

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 65
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :try_start_0
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :goto_4
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 69
    :pswitch_4
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_8

    .line 71
    :cond_d
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto/16 :goto_8

    .line 73
    :cond_e
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const-string v2, "\u7ee7\u7eed"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 75
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_f

    .line 76
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 77
    :cond_f
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_5
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_6
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 81
    :cond_10
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 82
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    .line 84
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_11

    .line 85
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 86
    :cond_11
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->f(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_7
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 88
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 90
    :cond_12
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    goto :goto_8

    .line 92
    :cond_13
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 93
    :cond_14
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v11}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 95
    iget-object v0, v10, Lcom/join/mgps/adapter/y4$b;->c:Landroid/widget/TextView;

    iget-object v1, v10, Lcom/join/mgps/adapter/y4$b;->j:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v11}, Lcom/join/mgps/Util/UtilsMy;->t2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 96
    iget-object v2, v10, Lcom/join/mgps/adapter/y4$b;->b:Landroid/widget/TextView;

    iget-object v3, v10, Lcom/join/mgps/adapter/y4$b;->e:Landroid/widget/LinearLayout;

    iget-object v4, v10, Lcom/join/mgps/adapter/y4$b;->i:Landroid/widget/ProgressBar;

    iget-object v5, v10, Lcom/join/mgps/adapter/y4$b;->h:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/adapter/y4;->g(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;ZZ)V

    :goto_8
    return-object v9

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
