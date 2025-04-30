.class Lcom/join/mgps/activity/GameDetailActivity$k;
.super Landroid/widget/BaseAdapter;
.source "GameDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GameDetailActivity$k$e;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0281

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/activity/GameDetailActivity$k$e;-><init>(Lcom/join/mgps/activity/GameDetailActivity$k;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity$k;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameListItemBean;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 10
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    .line 11
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 12
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 14
    iget-object p1, p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;->a:Lit/sephiroth/android/library/widget/HListView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 15
    :cond_3
    iget-object v4, p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    move-result v3

    .line 17
    new-instance v4, Lcom/join/mgps/adapter/x0;

    iget-object v5, p0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v5, v5, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-direct {v4, v5, v3, v0, v1}, Lcom/join/mgps/adapter/x0;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 18
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v1, v4}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-ne v3, v2, :cond_4

    .line 19
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;->a:Lit/sephiroth/android/library/widget/HListView;

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f87

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 20
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidate()V

    goto :goto_3

    .line 21
    :cond_4
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;->a:Lit/sephiroth/android/library/widget/HListView;

    iget-object v2, p0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07110f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 22
    iget-object v1, p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 23
    :goto_3
    iget-object p3, p3, Lcom/join/mgps/activity/GameDetailActivity$k$e;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v1, Lcom/join/mgps/activity/GameDetailActivity$k$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/activity/GameDetailActivity$k$a;-><init>(Lcom/join/mgps/activity/GameDetailActivity$k;Ljava/util/List;Lcom/join/mgps/dto/GameListItemBean;)V

    invoke-virtual {p3, v1}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    :cond_5
    :goto_4
    return-object p2
.end method

.method b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/GameDetailActivity;->O0(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/GameListItemBean;

    .line 2
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameListItemBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v3

    if-nez p2, :cond_0

    .line 3
    iget-object v4, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c0253

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4
    new-instance v5, Lcom/join/mgps/activity/GameDetailActivity$l;

    iget-object v6, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;-><init>(Lcom/join/mgps/activity/GameDetailActivity;)V

    const v6, 0x7f090a39

    .line 5
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;->d(Lcom/join/mgps/activity/GameDetailActivity$l;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    const v6, 0x7f090a37

    .line 6
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;->f(Lcom/join/mgps/activity/GameDetailActivity$l;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v6, 0x7f090c60

    .line 7
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->c:Landroid/widget/ProgressBar;

    const v6, 0x7f090c59

    .line 8
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->d:Landroid/widget/ProgressBar;

    const v6, 0x7f09100c

    .line 9
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;->h(Lcom/join/mgps/activity/GameDetailActivity$l;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v6, 0x7f090c4a

    .line 10
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;->i(Lcom/join/mgps/activity/GameDetailActivity$l;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v6, 0x7f090cac

    .line 11
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;->k(Lcom/join/mgps/activity/GameDetailActivity$l;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v6, 0x7f090cad

    .line 12
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;->m(Lcom/join/mgps/activity/GameDetailActivity$l;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    const v6, 0x7f090a3a

    .line 13
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;->o(Lcom/join/mgps/activity/GameDetailActivity$l;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v6, 0x7f0908cd

    .line 14
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;->q(Lcom/join/mgps/activity/GameDetailActivity$l;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v6, 0x7f0900ea

    .line 15
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Landroid/widget/TextView;

    const v6, 0x7f0910e3

    .line 16
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Landroid/widget/TextView;

    const v6, 0x7f0909b2

    .line 17
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/TextView;

    const v6, 0x7f0910ec

    .line 18
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/TextView;

    const v6, 0x7f090d63

    .line 19
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$l;->b(Lcom/join/mgps/activity/GameDetailActivity$l;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v6, 0x7f090a38

    .line 20
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/join/mgps/activity/GameDetailActivity$l;

    move-object/from16 v4, p2

    .line 23
    :goto_0
    iget-object v6, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v6, v6, Lcom/join/mgps/activity/GameDetailActivity;->t0:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTv_btn()I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-nez v6, :cond_1

    .line 24
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->l(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 25
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->j(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 26
    :cond_1
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->l(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 27
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->j(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 28
    :goto_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    move-result-object v6

    const-string v9, ""

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 29
    iget-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v6

    const-string v10, "1"

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 31
    iget-object v6, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v6, v6, Lcom/join/mgps/activity/GameDetailActivity;->t0:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v6, v6, Lcom/join/mgps/activity/GameDetailActivity;->t0:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTv_btn()I

    move-result v6

    if-nez v6, :cond_3

    .line 32
    iget-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Landroid/widget/TextView;

    const-string v10, "\u5728\u6b64\u8f93\u5165\u63a8\u8350\u8bed."

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 33
    :cond_3
    iget-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 34
    :cond_4
    iget-object v6, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v6, v6, Lcom/join/mgps/activity/GameDetailActivity;->t0:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 35
    iget-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Landroid/widget/TextView;

    const-string v10, "\u5728\u6b64\u8f93\u5165\u63a8\u8350\u8bed"

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 36
    :cond_5
    iget-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Landroid/widget/TextView;

    const-string v10, "\u4e0d\u77e5\u9053\u8be5\u8bf4\u5565\u4e86"

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_2
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->a(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v10, Lcom/join/mgps/activity/GameDetailActivity$k$b;

    invoke-direct {v10, v1, v2}, Lcom/join/mgps/activity/GameDetailActivity$k$b;-><init>(Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/join/mgps/dto/GameListItemBean;)V

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Landroid/widget/TextView;

    new-instance v10, Lcom/join/mgps/activity/GameDetailActivity$k$c;

    invoke-direct {v10, v1, v2, v5, v0}, Lcom/join/mgps/activity/GameDetailActivity$k$c;-><init>(Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/join/mgps/dto/GameListItemBean;Lcom/join/mgps/activity/GameDetailActivity$l;I)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/TextView;

    new-instance v10, Lcom/join/mgps/activity/GameDetailActivity$k$d;

    invoke-direct {v10, v1, v2, v0}, Lcom/join/mgps/activity/GameDetailActivity$k$d;-><init>(Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/join/mgps/dto/GameListItemBean;I)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->e(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v6, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->c(Lcom/join/mgps/activity/GameDetailActivity$l;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v6

    const v10, 0x7f0807b1

    invoke-virtual {v6, v10}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 43
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    .line 44
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->c(Lcom/join/mgps/activity/GameDetailActivity$l;)Lcom/facebook/drawee/view/SimpleDraweeView;

    move-result-object v6

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 45
    iget-object v6, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v6}, Lcom/join/mgps/activity/GameDetailActivity;->O0(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/join/mgps/dto/GameListItemBean;

    .line 46
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    mul-double v10, v10, v12

    mul-double v10, v10, v12

    double-to-long v10, v10

    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v13

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v15

    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v16

    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->g(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/LinearLayout;

    move-result-object v17

    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v12 .. v18}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 48
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 49
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v12}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f080a62

    const v9, 0x7f06002a

    if-eqz v0, :cond_6

    .line 50
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 52
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u5f00\u59cb"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->g(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    :cond_6
    const-string v0, "\u66f4\u65b0"

    const v8, 0x7f060033

    const v12, 0x7f1100d2

    const v13, 0x7f080a6e

    const v14, 0x7f060030

    const v15, 0x7f080a67

    if-nez v3, :cond_b

    .line 55
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v3, v9}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 56
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 57
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 58
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_7

    goto :goto_3

    :cond_7
    move v7, v2

    :goto_3
    if-eqz v7, :cond_9

    .line 59
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v2

    iget-object v3, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v2

    .line 60
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v2

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 61
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 65
    :cond_8
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 67
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 69
    :cond_9
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 72
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->j(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_6

    .line 73
    :cond_a
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 76
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->j(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_6

    .line 77
    :cond_b
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v7

    .line 78
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v8

    const/16 v12, 0x2b

    if-lez v8, :cond_c

    const/16 v7, 0x2b

    :cond_c
    if-eqz v7, :cond_12

    const/16 v8, 0x1b

    const-string v13, "\u6682\u505c\u4e2d"

    if-eq v7, v8, :cond_11

    const/16 v8, 0x30

    if-eq v7, v8, :cond_10

    const/4 v8, 0x2

    const-string v2, "/"

    if-eq v7, v8, :cond_f

    const/4 v8, 0x3

    if-eq v7, v8, :cond_e

    const/4 v8, 0x5

    if-eq v7, v8, :cond_d

    const/4 v8, 0x6

    if-eq v7, v8, :cond_e

    const/4 v8, 0x7

    if-eq v7, v8, :cond_12

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_d

    if-eq v7, v12, :cond_12

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_6

    .line 79
    :pswitch_0
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v7, v8}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 80
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/TextView;

    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 83
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f080a7b

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 85
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u89e3\u538b"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 87
    :pswitch_1
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v7, v8}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 88
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0803ca

    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 93
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 95
    :pswitch_2
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 96
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v2, v3}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 99
    :pswitch_3
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const v7, 0x7f080a62

    .line 100
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 101
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v7, "\u7b49\u5f85"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v7, v7, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v7, v7}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 104
    :try_start_0
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :goto_4
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 108
    :pswitch_4
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 110
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v2, v3}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 113
    :cond_d
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f080a6e

    .line 114
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 115
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v2, v3}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_6

    .line 118
    :cond_e
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const v7, 0x7f080a62

    .line 119
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 120
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v7, "\u7ee7\u7eed"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v7, v7, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v7, v7}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 123
    :try_start_1
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    :goto_5
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 127
    :cond_f
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 128
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const v7, 0x7f080a62

    .line 129
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 130
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v7, "\u6682\u505c"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v7, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v7, v7, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v7, v7}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 133
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/S"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, v5, Lcom/join/mgps/activity/GameDetailActivity$l;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_6

    .line 136
    :cond_10
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f080a62

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 137
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const-string v2, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v2, v2}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_6

    .line 140
    :cond_11
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 141
    :cond_12
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f080a62

    .line 142
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 143
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->F:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 145
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->n(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->j(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 146
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v2, v3}, Lcom/join/mgps/activity/GameDetailActivity;->s1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 147
    :goto_6
    invoke-static {v5}, Lcom/join/mgps/activity/GameDetailActivity$l;->j(Lcom/join/mgps/activity/GameDetailActivity$l;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v2, Lcom/join/mgps/activity/GameDetailActivity$i;

    iget-object v3, v1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v6, v5}, Lcom/join/mgps/activity/GameDetailActivity$i;-><init>(Lcom/join/mgps/activity/GameDetailActivity;Lcom/join/mgps/dto/GameListItemBean;I)V

    .line 148
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

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->O0(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->O0(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

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

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->O0(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListItemBean;->getItemType()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity$k;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/GameDetailActivity$k;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/activity/GameDetailActivity$k;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
