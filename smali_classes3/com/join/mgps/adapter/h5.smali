.class public Lcom/join/mgps/adapter/h5;
.super Lcom/join/mgps/base/a;
.source "SearchGameListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/h5$f;,
        Lcom/join/mgps/adapter/h5$e;,
        Lcom/join/mgps/adapter/h5$g;,
        Lcom/join/mgps/adapter/h5$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/a<",
        "Lcom/join/mgps/adapter/h5$h;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field f:Lcom/join/android/app/component/video/d;

.field private g:Lcom/join/mgps/adapter/h5$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/base/a;-><init>(Ljava/util/List;)V

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/h5;->g:Lcom/join/mgps/adapter/h5$e;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/h5;->d:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/h5;->f:Lcom/join/android/app/component/video/d;

    const/4 p1, 0x1

    const p2, 0x7f0c043f

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/4 p1, 0x2

    const p2, 0x7f0c043e

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/4 p1, 0x3

    const p2, 0x7f0c0441

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/4 p1, 0x4

    const p2, 0x7f0c0440

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/4 p1, 0x5

    const p2, 0x7f0c043c

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/4 p1, 0x6

    const p2, 0x7f0c043b

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/4 p1, 0x7

    const p2, 0x7f0c0334

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/16 p1, 0xb

    const p2, 0x7f0c0337

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/16 p1, 0xc

    const p2, 0x7f0c0338

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/16 p1, 0x8

    const p2, 0x7f0c0281

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/16 p1, 0x9

    const p2, 0x7f0c0438

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/16 p1, 0xa

    const p2, 0x7f0c043a

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    const/16 p1, 0xd

    const p2, 0x7f0c0339

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->a(II)V

    return-void
.end method

.method private A(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    const v0, 0x7f090687

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getIcon_src()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090acd

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getDescription()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090340

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4eca\u65e5\u66f4\u65b0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getToday_posts()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090304

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const v0, 0x7f09026e

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/adapter/g5;

    invoke-direct {v0, p2}, Lcom/join/mgps/adapter/g5;-><init>(Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private B(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    return-void
.end method

.method private synthetic G(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/h5;->d:Landroid/content/Context;

    check-cast p2, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1;->e1(I)V

    return-void
.end method

.method private synthetic H(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tpl_two_position()I

    move-result v5

    invoke-virtual {p0}, Lcom/join/mgps/adapter/h5;->F()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v7

    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/h5;->g:Lcom/join/mgps/adapter/h5$e;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/join/mgps/adapter/h5$e;->b(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/adapter/h5;->g:Lcom/join/mgps/adapter/h5$e;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/h5$e;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic I(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/h5;->L(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic J(Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getFid()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/join/mgps/Util/i0;->r0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean;)V

    return-void
.end method

.method private synthetic K(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tpl_two_position()I

    move-result v5

    invoke-virtual {p0}, Lcom/join/mgps/adapter/h5;->F()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v7

    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->getReMarks()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/h5;->g:Lcom/join/mgps/adapter/h5$e;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/join/mgps/adapter/h5$e;->b(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/join/mgps/adapter/h5;->g:Lcom/join/mgps/adapter/h5$e;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/h5$e;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/h5;->H(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/adapter/h5;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->G(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/adapter/h5;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->I(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/join/mgps/adapter/h5;->J(Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/h5;->K(Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/join/mgps/adapter/h5;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h5;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic n(Lcom/join/mgps/adapter/h5;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h5;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/adapter/h5;)Lcom/join/mgps/adapter/h5$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h5;->g:Lcom/join/mgps/adapter/h5$e;

    return-object p0
.end method

.method private q(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    instance-of v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v2, :cond_0

    .line 4
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 5
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_0
    const v0, 0x7f090acd

    const v2, 0x7f090687

    if-ne p2, v1, :cond_1

    const p2, 0x7f0806f3

    .line 6
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->x(II)Lcom/join/mgps/base/b;

    const-string p2, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u5b83\u6e38\u620f"

    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const p2, 0x7f0806f1

    .line 8
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->x(II)Lcom/join/mgps/base/b;

    const-string p2, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\u5355\n\u5df2\u4e3a\u60a8\u63a8\u8350\u70ed\u95e8\u6e38\u620f\u5355"

    .line 9
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    const p2, 0x7f0806f4

    .line 10
    invoke-virtual {p1, v2, p2}, Lcom/join/mgps/base/b;->x(II)Lcom/join/mgps/base/b;

    const-string p2, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u793e\u533a\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u4ed6\u70ed\u95e8\u793e\u533a"

    .line 11
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    :cond_3
    :goto_0
    return-void
.end method

.method private r(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v0, 0x7f09026e

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/adapter/c5;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/c5;-><init>(Lcom/join/mgps/adapter/h5;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private s(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    const v0, 0x7f090687

    .line 2
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090acd

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 4
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getAuth_name()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090340

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getGame_count()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6b3e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090304

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->isShowDivider()Z

    move-result v0

    const v1, 0x7f09038e

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->O(IZ)Lcom/join/mgps/base/b;

    const v0, 0x7f09026e

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/adapter/h5$c;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/h5$c;-><init>(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private t(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "\u5305\u542b%s\u7684\u6e38\u620f\u5355"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#FFF47500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v2, 0x2

    add-int/2addr p2, v2

    const/16 v3, 0x12

    invoke-virtual {v1, v0, v2, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const p2, 0x7f09100f

    .line 5
    invoke-virtual {p1, p2, v1}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private u(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->D(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    return-void
.end method

.method private v(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 13

    const-string v0, "#"

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f090a37

    invoke-virtual {p1, v7, v6}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 5
    invoke-virtual {p1, v7}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v6, 0x7f090d07

    .line 6
    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/join/mgps/adapter/d5;

    invoke-direct {v8, p0, v2, p2}, Lcom/join/mgps/adapter/d5;-><init>(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f090dd1

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {p1, v8}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v8, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    move-result-object v7

    .line 12
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 13
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 14
    invoke-virtual {p1, v8}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v8, v7}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const v7, 0x7f0905ee

    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    move-result v8

    if-ne v8, v4, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p1, v7, v8}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 16
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    const v11, 0x7f091172

    cmpl-double v12, v7, v9

    if-lez v12, :cond_4

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->showScore()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 17
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v11, v7}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 18
    invoke-virtual {p1, v11, v4}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {p1, v11, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :goto_2
    const v7, 0x7f091121

    .line 20
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v8

    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->o1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v2

    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v2, v6, v1}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const v1, 0x7f090cac

    .line 22
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/join/mgps/adapter/h5$g;

    invoke-direct {v2, p0, p2}, Lcom/join/mgps/adapter/h5$g;-><init>(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0912d4

    .line 24
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/android/app/component/video/MultiStandVideo;

    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/android/app/component/video/MultiStandVideo;->i(Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/h5;->f:Lcom/join/android/app/component/video/d;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, ""

    move-object v6, v1

    .line 29
    invoke-virtual/range {v6 .. v11}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 30
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 31
    invoke-virtual {v1, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 32
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 33
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 34
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 35
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 36
    new-instance v2, Lcom/join/mgps/adapter/h5$a;

    invoke-direct {v2, p0, p2}, Lcom/join/mgps/adapter/h5$a;-><init>(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lc2/h;)V

    .line 37
    :cond_6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f090916

    if-eqz v1, :cond_8

    .line 38
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->q(II)Lcom/join/mgps/base/b;

    goto :goto_3

    .line 40
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->q(II)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_8
    const-string v0, "#994558"

    .line 42
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->q(II)Lcom/join/mgps/base/b;

    .line 43
    :goto_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getRequestStatus()I

    move-result p2

    const/16 v0, 0x2f

    const v1, 0x7f090a3a

    const v2, 0x7f090bfd

    if-ne p2, v0, :cond_9

    .line 44
    invoke-virtual {p1, v2, v4}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 45
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto :goto_4

    .line 46
    :cond_9
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    const-string p2, "\u6253\u5f00"

    .line 47
    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    :goto_4
    return-void
.end method

.method private w(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->C(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    return-void
.end method

.method private x(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 3

    const-string v0, "0"

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    if-eqz p2, :cond_0

    const v1, 0x7f090524

    .line 2
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getView()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f090513

    .line 3
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f09051d

    .line 4
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPraise()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09026e

    .line 6
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->O(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private y(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/adapter/h5;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/2addr v1, v4

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_0

    if-ltz v4, :cond_0

    .line 9
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/join/mgps/adapter/f5;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/adapter/f5;-><init>(Lcom/join/mgps/adapter/h5;Ljava/lang/String;)V

    const v0, 0x7f090a32

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090519

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 15
    :try_start_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->isShowDivider()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const-string p2, "#3b3b3b"

    .line 16
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 17
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 18
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0711c0

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1

    :cond_1
    const-string p2, "#FF4A4A4A"

    .line 19
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 20
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 21
    :goto_1
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 23
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 24
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_2
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method private z(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v3, p0, Lcom/join/mgps/adapter/h5;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v1, v4

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_1

    if-ltz v4, :cond_1

    .line 9
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const v0, 0x7f090522

    .line 11
    invoke-virtual {p1, v0, v2}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f09095b

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->O(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public C(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v4

    .line 3
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v9, 0x7f090a3a

    if-eqz v5, :cond_15

    .line 4
    iget-object v10, v1, Lcom/join/mgps/adapter/h5;->d:Landroid/content/Context;

    .line 5
    iget-boolean v11, v0, Lcom/join/mgps/adapter/h5$h;->c:Z

    const v12, 0x7f0908be

    if-eqz v11, :cond_2

    .line 6
    invoke-virtual {v2, v12}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 7
    invoke-virtual {v2, v12}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x1

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v7, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v14, v14

    invoke-direct {v11, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9
    :goto_0
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0711aa

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    iput v13, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 10
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    iput v13, v11, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 11
    invoke-virtual {v2, v12}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    :cond_2
    iget-boolean v0, v0, Lcom/join/mgps/adapter/h5$h;->c:Z

    invoke-virtual {v2, v12, v0}, Lcom/join/mgps/base/b;->O(IZ)Lcom/join/mgps/base/b;

    const v0, 0x7f090a37

    .line 13
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v0, v11}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 14
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    const v11, 0x7f090a38

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v2, v11, v7}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 16
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v2, v11, v8}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :goto_1
    const v0, 0x7f090d07

    .line 18
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v11

    new-instance v12, Lcom/join/mgps/adapter/e5;

    invoke-direct {v12, v1, v5, v3}, Lcom/join/mgps/adapter/e5;-><init>(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/GInfoBean;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v11

    const v12, 0x7f090dd1

    if-eqz v11, :cond_4

    .line 20
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-virtual {v2, v12}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v12, v11}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    move-result-object v11

    .line 23
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v11, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 24
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v12}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v12, v11}, Lcom/join/android/app/common/utils/MyImageLoader;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 26
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    move-result v11

    if-ne v11, v7, :cond_6

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    const v12, 0x7f0905ee

    invoke-virtual {v2, v12, v11}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 27
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4090000000000000L    # 1024.0

    mul-double v13, v13, v15

    mul-double v13, v13, v15

    double-to-long v13, v13

    .line 28
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    const-wide/16 v17, 0x0

    const v11, 0x7f091172

    cmpl-double v19, v15, v17

    if-lez v19, :cond_7

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->showScore()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 29
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v11, v15}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 30
    invoke-virtual {v2, v11, v7}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    goto :goto_4

    .line 31
    :cond_7
    invoke-virtual {v2, v11, v8}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :goto_4
    const v11, 0x7f091121

    .line 32
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v15

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/join/mgps/Util/UtilsMy;->p1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v11, v7}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 33
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v7

    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v7, v0, v4}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 34
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPlugin_num()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v11}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v7, 0x7f090cac

    const v11, 0x7f06002a

    const v15, 0x7f080241

    if-eqz v0, :cond_8

    .line 35
    invoke-virtual {v2, v9, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v0, "\u5f00\u59cb"

    .line 36
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 37
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 38
    invoke-virtual {v2, v12, v8}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :goto_5
    const v4, 0x7f090cac

    goto/16 :goto_b

    :cond_8
    const v0, 0x7f1100d2

    if-nez v4, :cond_c

    .line 39
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4, v12}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 40
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 41
    invoke-static {v10}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPackage_name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v10, v12}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 42
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a

    .line 43
    invoke-static {v10}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v4

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPackage_name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v10, v12}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v4

    .line 44
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getVer()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual {v4}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v4

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getVer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 45
    invoke-virtual {v2, v9, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v0, "\u66f4\u65b0"

    .line 46
    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 47
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    goto :goto_5

    .line 48
    :cond_9
    invoke-virtual {v2, v9, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    .line 49
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 50
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    goto/16 :goto_5

    .line 51
    :cond_a
    invoke-virtual {v2, v9, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    .line 52
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v2, v9}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->o2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/GInfoBean;)V

    goto/16 :goto_5

    .line 54
    :cond_b
    invoke-virtual {v2, v9, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    .line 55
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v2, v9}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->o2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/GInfoBean;)V

    goto/16 :goto_5

    .line 57
    :cond_c
    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v12

    .line 58
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v8

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x2b

    if-lez v7, :cond_d

    const/16 v12, 0x2b

    :cond_d
    if-eqz v12, :cond_e

    const/16 v7, 0x1b

    if-eq v12, v7, :cond_14

    const/16 v7, 0x30

    if-eq v12, v7, :cond_13

    const/4 v7, 0x2

    const v11, 0x7f0909b2

    const-string v0, "/"

    const v9, 0x7f0900ea

    if-eq v12, v7, :cond_12

    const/4 v7, 0x3

    if-eq v12, v7, :cond_11

    const/4 v7, 0x5

    if-eq v12, v7, :cond_f

    const/4 v7, 0x6

    if-eq v12, v7, :cond_10

    const/4 v7, 0x7

    if-eq v12, v7, :cond_e

    const/16 v7, 0x2a

    if-eq v12, v7, :cond_f

    if-eq v12, v8, :cond_e

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_5

    .line 59
    :pswitch_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v5, v7}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const-string v0, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 61
    invoke-virtual {v2, v11, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const v0, 0x7f090c60

    .line 62
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v4, 0x7f090a3a

    .line 63
    invoke-virtual {v2, v4, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v0, "\u89e3\u538b"

    .line 64
    invoke-virtual {v2, v4, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 65
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f06002a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    goto/16 :goto_5

    .line 66
    :pswitch_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v5, v7}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const-string v0, "\u89e3\u538b\u4e2d.."

    .line 68
    invoke-virtual {v2, v11, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const v0, 0x7f090c60

    .line 69
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0803ca

    const v5, 0x7f090a3a

    .line 70
    invoke-virtual {v2, v5, v0}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v0, "\u89e3\u538b\u4e2d"

    .line 71
    invoke-virtual {v2, v5, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 72
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f060031

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v5, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    goto/16 :goto_5

    :pswitch_2
    const v5, 0x7f090a3a

    .line 73
    invoke-virtual {v2, v5, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v0, "\u5b89\u88c5"

    .line 74
    invoke-virtual {v2, v5, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 75
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f06002a

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v5, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 76
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    :pswitch_3
    const v5, 0x7f090a3a

    const v7, 0x7f06002a

    .line 77
    invoke-virtual {v2, v5, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v8, "\u7b49\u5f85"

    .line 78
    invoke-virtual {v2, v5, v8}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 79
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 80
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v5, v5}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 81
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const v0, 0x7f090c59

    .line 82
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 84
    invoke-virtual {v2, v11, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto/16 :goto_5

    :pswitch_4
    const v7, 0x7f090a3a

    .line 85
    invoke-virtual {v2, v7, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v0, "\u66f4\u65b0"

    .line 86
    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 87
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f06002a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 88
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    :cond_e
    const v4, 0x7f090a3a

    goto/16 :goto_a

    :cond_f
    const v7, 0x7f090a3a

    goto :goto_7

    :cond_10
    const v7, 0x7f090a3a

    const v5, 0x7f06002a

    goto :goto_8

    .line 89
    :goto_7
    invoke-virtual {v2, v7, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    .line 90
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f1100d2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 91
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f06002a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v7, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 92
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v4}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    :cond_11
    const v5, 0x7f06002a

    const v7, 0x7f090a3a

    .line 93
    :goto_8
    invoke-virtual {v2, v7, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v8, "\u7ee7\u7eed"

    .line 94
    invoke-virtual {v2, v7, v8}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 95
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v7, v5}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 96
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v5, v5}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 97
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const v0, 0x7f090c59

    .line 98
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    const-string v0, "\u6682\u505c\u4e2d"

    .line 100
    invoke-virtual {v2, v11, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto/16 :goto_5

    .line 101
    :cond_12
    invoke-static {v4}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    const v5, 0x7f090a3a

    .line 102
    invoke-virtual {v2, v5, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v7, "\u6682\u505c"

    .line 103
    invoke-virtual {v2, v5, v7}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 104
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06002a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 105
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v5, v5}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/S"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    const v0, 0x7f090c59

    .line 108
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_5

    :cond_13
    const v4, 0x7f090a3a

    .line 109
    invoke-virtual {v2, v4, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 110
    invoke-virtual {v2, v4, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 111
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f06002a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lcom/join/mgps/base/b;->L(II)Lcom/join/mgps/base/b;

    .line 112
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v5}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_5

    :cond_14
    const v4, 0x7f090a3a

    const-string v0, "\u6682\u505c\u4e2d"

    .line 113
    invoke-virtual {v2, v4, v0}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto/16 :goto_5

    .line 114
    :goto_a
    invoke-virtual {v2, v4, v15}, Lcom/join/mgps/base/b;->r(II)Lcom/join/mgps/base/b;

    .line 115
    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v5}, Lcom/join/mgps/dto/GInfoBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v2, v4}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f090cac

    invoke-virtual {v2, v4}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v0, v7, v5}, Lcom/join/mgps/Util/UtilsMy;->o2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/GInfoBean;)V

    .line 117
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v5}, Lcom/join/mgps/adapter/h5;->Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 118
    :goto_b
    invoke-virtual {v2, v4}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/join/mgps/adapter/h5$g;

    invoke-direct {v4, v1, v3}, Lcom/join/mgps/adapter/h5$g;-><init>(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :cond_15
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getRequestStatus()I

    move-result v0

    const/16 v3, 0x2f

    const v4, 0x7f090bfd

    if-ne v0, v3, :cond_16

    const/4 v3, 0x1

    .line 120
    invoke-virtual {v2, v4, v3}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    const v3, 0x7f090a3a

    .line 121
    invoke-virtual {v2, v3, v6}, Lcom/join/mgps/base/b;->K(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    goto :goto_c

    :cond_16
    const/4 v3, 0x0

    .line 122
    invoke-virtual {v2, v4, v3}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :goto_c
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

.method public D(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    .line 8
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 9
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    const v5, 0x7f090dc1

    invoke-virtual {p1, v5, v3}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getPic_position()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 13
    new-instance v3, Lcom/join/mgps/adapter/x0;

    iget-object v6, p0, Lcom/join/mgps/adapter/h5;->d:Landroid/content/Context;

    invoke-direct {v3, v6, v0, v1, v2}, Lcom/join/mgps/adapter/x0;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 14
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-ne v0, v4, :cond_3

    .line 15
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iget-object v2, p0, Lcom/join/mgps/adapter/h5;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f87

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 16
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iget-object v2, p0, Lcom/join/mgps/adapter/h5;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07110f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 18
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 19
    :goto_2
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->k(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    new-instance v0, Lcom/join/mgps/adapter/h5$b;

    invoke-direct {v0, p0, v1, p2}, Lcom/join/mgps/adapter/h5$b;-><init>(Lcom/join/mgps/adapter/h5;Ljava/util/List;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    invoke-virtual {p1, v0}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    :cond_4
    return-void
.end method

.method protected E(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
    .locals 1
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/h5$h;->getItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->B(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->v(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->r(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->q(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->u(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->w(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 9
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->t(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 10
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->A(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 11
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->x(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 12
    :pswitch_a
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->y(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    goto :goto_0

    .line 13
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->z(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h5;->e:Ljava/lang/String;

    return-object v0
.end method

.method public L(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 3
    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    return-void
.end method

.method public M(Lcom/join/mgps/adapter/h5$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h5;->g:Lcom/join/mgps/adapter/h5$e;

    return-void
.end method

.method N(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 3
    invoke-virtual {p1, v0, p2, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public O(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/h5$d;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/h5$d;-><init>(Lcom/join/mgps/adapter/h5;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h5;->e:Ljava/lang/String;

    return-void
.end method

.method Q(Lcom/join/mgps/base/b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const v0, 0x7f090935

    const v1, 0x7f0908cd

    const v2, 0x7f090c60

    const v3, 0x7f090c59

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, v1, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 3
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 4
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 5
    invoke-virtual {p1, v0, v4}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1, v1, v4}, Lcom/join/mgps/base/b;->O(IZ)Lcom/join/mgps/base/b;

    .line 7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 9
    invoke-virtual {p1, v2, v4}, Lcom/join/mgps/base/b;->O(IZ)Lcom/join/mgps/base/b;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    .line 11
    invoke-virtual {p1, v3, v4}, Lcom/join/mgps/base/b;->O(IZ)Lcom/join/mgps/base/b;

    .line 12
    :goto_0
    invoke-virtual {p1, v0, v5}, Lcom/join/mgps/base/b;->u(IZ)Lcom/join/mgps/base/b;

    :goto_1
    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/join/mgps/adapter/h5$h;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/h5;->E(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V

    return-void
.end method

.method p(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->isAdInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x93

    .line 3
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 4
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    const-string v2, "147"

    .line 5
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    goto :goto_0

    :cond_1
    const/16 v1, 0x67

    .line 7
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 8
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    const-string v2, "103"

    .line 9
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->set_from_type(I)Lcom/join/mgps/dto/ExtBean;

    :goto_0
    const-string v1, "112"

    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/adapter/h5;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 13
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->setExt(Ljava/lang/String;)V

    return-void
.end method
