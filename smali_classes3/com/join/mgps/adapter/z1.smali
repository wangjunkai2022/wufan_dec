.class public Lcom/join/mgps/adapter/z1;
.super Landroid/widget/BaseAdapter;
.source "GameOLNoOpenTestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/z1$d;,
        Lcom/join/mgps/adapter/z1$e;,
        Lcom/join/mgps/adapter/z1$c;,
        Lcom/join/mgps/adapter/z1$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GameOLNoOpenTestBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/adapter/z1;->c:Ljava/util/List;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/adapter/z1;->a:Landroid/view/LayoutInflater;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/z1;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/z1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/z1;->b:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public b(I)Lk1/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GameOLNoOpenTestBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/a;

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk1/a<",
            "Lcom/join/mgps/dto/GameOLNoOpenTestBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z1;->c:Ljava/util/List;

    return-object v0
.end method

.method d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/adapter/z1$d;->a(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/z1$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/z1$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    invoke-static {p1}, Lcom/join/mgps/adapter/z1$d;->i(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-static {p1}, Lcom/join/mgps/adapter/z1$d;->k(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-static {p1}, Lcom/join/mgps/adapter/z1$d;->m(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/adapter/z1$d;->a(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/z1$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object p2, p1, Lcom/join/mgps/adapter/z1$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/z1$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    iget-object p2, p1, Lcom/join/mgps/adapter/z1$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 14
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/adapter/z1$d;->i(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-static {p1}, Lcom/join/mgps/adapter/z1$d;->k(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-static {p1}, Lcom/join/mgps/adapter/z1$d;->m(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/z1;->b(I)Lk1/a;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/z1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk1/a;

    .line 2
    invoke-virtual {p1}, Lk1/a;->d()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/z1;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_3

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    :goto_0
    move-object/from16 v7, p2

    move-object v6, v5

    move-object v8, v6

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v6, Lcom/join/mgps/adapter/z1$d;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/z1$d;-><init>(Lcom/join/mgps/adapter/z1;)V

    .line 3
    iget-object v7, v1, Lcom/join/mgps/adapter/z1;->a:Landroid/view/LayoutInflater;

    const v8, 0x7f0c02ae

    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090a39

    .line 4
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$d;->d(Lcom/join/mgps/adapter/z1$d;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v8, 0x7f0905ee

    .line 5
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$d;->f(Lcom/join/mgps/adapter/z1$d;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v8, 0x7f090a37

    .line 6
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$d;->h(Lcom/join/mgps/adapter/z1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f090c60

    .line 7
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, v6, Lcom/join/mgps/adapter/z1$d;->d:Landroid/widget/ProgressBar;

    const v8, 0x7f090c59

    .line 8
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, v6, Lcom/join/mgps/adapter/z1$d;->e:Landroid/widget/ProgressBar;

    const v8, 0x7f090c4a

    .line 9
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$d;->j(Lcom/join/mgps/adapter/z1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f090f3a

    .line 10
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$d;->l(Lcom/join/mgps/adapter/z1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f090ee5

    .line 11
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$d;->n(Lcom/join/mgps/adapter/z1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f090cac

    .line 12
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$d;->p(Lcom/join/mgps/adapter/z1$d;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v8, 0x7f090a3a

    .line 13
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$d;->r(Lcom/join/mgps/adapter/z1$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v8, 0x7f0908cd

    .line 14
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$d;->b(Lcom/join/mgps/adapter/z1$d;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v8, 0x7f0900ea

    .line 15
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/join/mgps/adapter/z1$d;->k:Landroid/widget/TextView;

    const v8, 0x7f0909b2

    .line 16
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v6, Lcom/join/mgps/adapter/z1$d;->l:Landroid/widget/TextView;

    .line 17
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    move-object v8, v6

    move-object v6, v5

    goto :goto_4

    .line 18
    :cond_1
    new-instance v6, Lcom/join/mgps/adapter/z1$e;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/z1$e;-><init>(Lcom/join/mgps/adapter/z1;)V

    .line 19
    iget-object v7, v1, Lcom/join/mgps/adapter/z1;->a:Landroid/view/LayoutInflater;

    const v8, 0x7f0c02b0

    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f091023

    .line 20
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$e;->b(Lcom/join/mgps/adapter/z1$e;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 21
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object v8, v5

    goto :goto_4

    .line 22
    :cond_2
    new-instance v6, Lcom/join/mgps/adapter/z1$c;

    invoke-direct {v6, v1}, Lcom/join/mgps/adapter/z1$c;-><init>(Lcom/join/mgps/adapter/z1;)V

    .line 23
    iget-object v7, v1, Lcom/join/mgps/adapter/z1;->a:Landroid/view/LayoutInflater;

    const v8, 0x7f0c02af

    invoke-virtual {v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090092

    .line 24
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v6, v8}, Lcom/join/mgps/adapter/z1$c;->b(Lcom/join/mgps/adapter/z1$c;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    move-object v8, v5

    move-object v5, v6

    move-object v6, v8

    goto :goto_4

    :cond_3
    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_5

    if-eq v2, v3, :cond_4

    goto/16 :goto_0

    .line 26
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/adapter/z1$d;

    move-object/from16 v7, p2

    goto :goto_1

    .line 27
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/adapter/z1$e;

    move-object/from16 v7, p2

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/adapter/z1$c;

    move-object/from16 v7, p2

    goto :goto_3

    :goto_4
    if-eqz v2, :cond_19

    if-eq v2, v4, :cond_18

    if-eq v2, v3, :cond_7

    goto/16 :goto_b

    .line 29
    :cond_7
    iget-object v2, v1, Lcom/join/mgps/adapter/z1;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lk1/a;

    .line 30
    invoke-virtual {v2}, Lk1/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameOLNoOpenTestBean;

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v5

    invoke-virtual {v2}, Lk1/a;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v6

    invoke-static {v5, v7, v6}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->c(Lcom/join/mgps/adapter/z1$d;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v5

    const v6, 0x7f0807b1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v4, :cond_8

    .line 34
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->e(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 35
    :cond_8
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->e(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_5
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->g(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameOLNoOpenTestBean;->getGame_open_time()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "000"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 40
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->k(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5f00\u6d4b\u65f6\u95f4:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/x;->p(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_9
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->i(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u609f\u996d\u7279\u6743:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameOLNoOpenTestBean;->getPapa_privilege()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 42
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->m(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6e38\u620f\u72b6\u6001:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameOLNoOpenTestBean;->getGame_status()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    mul-double v4, v4, v9

    mul-double v4, v4, v9

    double-to-long v4, v4

    .line 44
    invoke-virtual {v2}, Lk1/a;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v9

    .line 45
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v13}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const v11, 0x7f080a62

    if-eqz v10, :cond_a

    .line 47
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 49
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u5f00\u59cb"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/join/mgps/adapter/z1;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->e(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_a
    const-string v6, "\u66f4\u65b0"

    const v10, -0xa81da

    const v12, 0x7f1100d2

    const v13, 0x7f080a6e

    const v14, -0x8d57ef

    const v15, 0x7f080a67

    if-nez v9, :cond_e

    .line 52
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v3, v4}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 54
    iget-object v3, v1, Lcom/join/mgps/adapter/z1;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    iget-object v4, v1, Lcom/join/mgps/adapter/z1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 56
    iget-object v3, v1, Lcom/join/mgps/adapter/z1;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v3

    iget-object v4, v1, Lcom/join/mgps/adapter/z1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v3

    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ge v3, v0, :cond_b

    .line 58
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 60
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 62
    :cond_b
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 64
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/join/mgps/adapter/z1;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 66
    :cond_c
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 68
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 69
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->o(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_a

    .line 70
    :cond_d
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v3

    .line 71
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 73
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->o(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_a

    .line 74
    :cond_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " dd "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "infoo"

    invoke-static {v12, v10}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v10

    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v12

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x2b

    if-lez v12, :cond_f

    const/16 v10, 0x2b

    :cond_f
    if-eqz v10, :cond_17

    const/16 v12, 0x1b

    const-string v11, "\u6682\u505c\u4e2d"

    if-eq v10, v12, :cond_16

    const/16 v12, 0x30

    const v14, -0xc57a1e

    if-eq v10, v12, :cond_15

    const-wide/16 v16, 0x0

    const-string v12, "/"

    if-eq v10, v3, :cond_13

    const/4 v3, 0x3

    if-eq v10, v3, :cond_11

    const/4 v3, 0x5

    if-eq v10, v3, :cond_10

    const/4 v3, 0x6

    if-eq v10, v3, :cond_11

    const/4 v3, 0x7

    if-eq v10, v3, :cond_17

    const/16 v3, 0x2a

    if-eq v10, v3, :cond_10

    if-eq v10, v13, :cond_17

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_a

    .line 77
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 78
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->l:Landroid/widget/TextView;

    const-string v3, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 81
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080a7b

    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 83
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u89e3\u538b"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 85
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 86
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->l:Landroid/widget/TextView;

    const-string v3, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 89
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f0803ca

    .line 90
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 91
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, -0x4a4a4b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_a

    .line 93
    :pswitch_2
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u5b89\u88c5"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, -0x8d57ef

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_a

    .line 97
    :pswitch_3
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080a62

    .line 98
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u7b49\u5f85"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v0}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 102
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :try_start_0
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    :goto_6
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->l:Landroid/widget/TextView;

    const-string v3, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 106
    :pswitch_4
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 108
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, -0x8d57ef

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_a

    .line 111
    :cond_10
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080a6e

    .line 112
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 113
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, v1, Lcom/join/mgps/adapter/z1;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, -0xa81da

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v0}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_a

    .line 116
    :cond_11
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080a62

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u7ee7\u7eed"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v0}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 121
    :try_start_1
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v13

    cmp-long v0, v13, v16

    if-nez v0, :cond_12

    .line 122
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 123
    :cond_12
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_7
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    :goto_8
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 127
    :cond_13
    invoke-static {v9}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 128
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080a62

    .line 129
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 130
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u6682\u505c"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v0}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 133
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v10

    cmp-long v0, v10, v16

    if-nez v0, :cond_14

    .line 134
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 135
    :cond_14
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_9
    iget-object v0, v8, Lcom/join/mgps/adapter/z1$d;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 137
    invoke-virtual {v9}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v3, v8, Lcom/join/mgps/adapter/z1$d;->l:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 139
    :cond_15
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const v3, 0x7f080a62

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 140
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_a

    .line 143
    :cond_16
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 144
    :cond_17
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v3

    .line 145
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 146
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 147
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->q(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->o(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 148
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v8, v0, v3}, Lcom/join/mgps/adapter/z1;->d(Lcom/join/mgps/adapter/z1$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 149
    :goto_a
    invoke-static {v8}, Lcom/join/mgps/adapter/z1$d;->o(Lcom/join/mgps/adapter/z1$d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v3, Lcom/join/mgps/adapter/z1$b;

    invoke-direct {v3, v1, v2}, Lcom/join/mgps/adapter/z1$b;-><init>(Lcom/join/mgps/adapter/z1;Lk1/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    .line 150
    :cond_18
    iget-object v2, v1, Lcom/join/mgps/adapter/z1;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk1/a;

    invoke-virtual {v0}, Lk1/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v6}, Lcom/join/mgps/adapter/z1$e;->a(Lcom/join/mgps/adapter/z1$e;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 152
    :cond_19
    iget-object v2, v1, Lcom/join/mgps/adapter/z1;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk1/a;

    invoke-virtual {v0}, Lk1/a;->b()Lcom/join/mgps/dto/GameOLHeadAdBean;

    move-result-object v0

    .line 153
    invoke-static {v5}, Lcom/join/mgps/adapter/z1$c;->a(Lcom/join/mgps/adapter/z1$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    const v3, 0x7f080168

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameOLHeadAdBean;->getMain()Lcom/join/mgps/dto/GameOLHeadAdMain;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/GameOLHeadAdMain;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 154
    invoke-static {v5}, Lcom/join/mgps/adapter/z1$c;->a(Lcom/join/mgps/adapter/z1$c;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/adapter/z1$a;

    invoke-direct {v3, v1, v0}, Lcom/join/mgps/adapter/z1$a;-><init>(Lcom/join/mgps/adapter/z1;Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_b
    return-object v7

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
