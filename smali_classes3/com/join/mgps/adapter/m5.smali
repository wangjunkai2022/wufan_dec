.class public Lcom/join/mgps/adapter/m5;
.super Landroid/widget/BaseAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/m5$k;,
        Lcom/join/mgps/adapter/m5$g;,
        Lcom/join/mgps/adapter/m5$v;,
        Lcom/join/mgps/adapter/m5$w;,
        Lcom/join/mgps/adapter/m5$n;,
        Lcom/join/mgps/adapter/m5$j;,
        Lcom/join/mgps/adapter/m5$h;,
        Lcom/join/mgps/adapter/m5$i;,
        Lcom/join/mgps/adapter/m5$m;,
        Lcom/join/mgps/adapter/m5$s;,
        Lcom/join/mgps/adapter/m5$p;,
        Lcom/join/mgps/adapter/m5$q;,
        Lcom/join/mgps/adapter/m5$r;,
        Lcom/join/mgps/adapter/m5$u;,
        Lcom/join/mgps/adapter/m5$t;,
        Lcom/join/mgps/adapter/m5$l;,
        Lcom/join/mgps/adapter/m5$o;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/m5$o;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/join/mgps/dto/SearchResultAdinfo;

.field private e:Lcom/join/mgps/adapter/m5$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/m5;->e:Lcom/join/mgps/adapter/m5$g;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    return-void
.end method

.method private synthetic B(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    check-cast p2, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1;->e1(I)V

    return-void
.end method

.method private synthetic C(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    check-cast p2, Lcom/join/mgps/activity/SearchListActivity1;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SearchListActivity1;->e1(I)V

    return-void
.end method

.method private synthetic D(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/m5;->E(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/m5;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/m5;->C(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/adapter/m5;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/m5;->D(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/m5;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/m5;->B(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/join/mgps/adapter/m5;)Lcom/join/mgps/adapter/m5$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/m5;->e:Lcom/join/mgps/adapter/m5$g;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/m5;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/m5;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/adapter/m5;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    return-object p0
.end method

.method private i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m5$h;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/m5$h;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/m5$h;-><init>(Lcom/join/mgps/adapter/m5;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0438

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f090687

    .line 4
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/join/mgps/adapter/m5$h;->b:Landroid/widget/ImageView;

    const v0, 0x7f090acd

    .line 5
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/join/mgps/adapter/m5$h;->c:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$h;->b:Landroid/widget/ImageView;

    const v0, 0x7f0806f3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$h;->c:Landroid/widget/TextView;

    const-string p3, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u5b83\u6e38\u620f"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 10
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$h;->b:Landroid/widget/ImageView;

    const v0, 0x7f0806f1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$h;->c:Landroid/widget/TextView;

    const-string p3, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u6e38\u620f\u5355\n\u5df2\u4e3a\u60a8\u63a8\u8350\u70ed\u95e8\u6e38\u620f\u5355"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 12
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$h;->b:Landroid/widget/ImageView;

    const v0, 0x7f0806f4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$h;->c:Landroid/widget/TextView;

    const-string p3, "\u672a\u641c\u7d22\u5230\u76f8\u5e94\u793e\u533a\n\u5df2\u4e3a\u60a8\u63a8\u8350\u5176\u4ed6\u70ed\u95e8\u793e\u533a"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-object p2
.end method

.method private j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m5$i;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/m5$i;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/m5$i;-><init>(Lcom/join/mgps/adapter/m5;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0439

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09100f

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$i;->b:Landroid/widget/TextView;

    const v0, 0x7f0906d1

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$i;->c:Landroid/view/View;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 8
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$i;->b:Landroid/widget/TextView;

    const-string v1, "\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$i;->b:Landroid/widget/TextView;

    const-string v1, "\u6e38\u620f\u5355"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$i;->b:Landroid/widget/TextView;

    const-string v1, "\u5e16\u5b50"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$i;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/join/mgps/adapter/k5;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/k5;-><init>(Lcom/join/mgps/adapter/m5;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p3, p3, Lcom/join/mgps/adapter/m5$i;->c:Landroid/view/View;

    new-instance v0, Lcom/join/mgps/adapter/j5;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/j5;-><init>(Lcom/join/mgps/adapter/m5;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method private k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m5$j;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/m5$j;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/m5$j;-><init>(Lcom/join/mgps/adapter/m5;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c043a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 4
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, p3

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6
    new-instance p3, Lcom/join/mgps/adapter/m5$c;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/m5$c;-><init>(Lcom/join/mgps/adapter/m5;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method private l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m5$m;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/m5$m;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/m5$m;-><init>(Lcom/join/mgps/adapter/m5;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c043b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090687

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$m;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090acd

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$m;->c:Landroid/widget/TextView;

    const v0, 0x7f090340

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$m;->d:Landroid/widget/TextView;

    const v0, 0x7f090304

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$m;->e:Landroid/widget/TextView;

    const v0, 0x7f09038e

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$m;->f:Landroid/view/View;

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$m;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$m;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$m;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getAuth_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$m;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getGame_count()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b3e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->isShowDivider()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p3, p3, Lcom/join/mgps/adapter/m5$m;->f:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/m5$m;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :goto_1
    new-instance p3, Lcom/join/mgps/adapter/m5$d;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/m5$d;-><init>(Lcom/join/mgps/adapter/m5;Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method private m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m5$n;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/m5$n;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/m5$n;-><init>(Lcom/join/mgps/adapter/m5;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c043c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09100f

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$n;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "\u5305\u542b%s\u7684\u6e38\u620f\u5355"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#FFF47500"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x2

    add-int/2addr p1, v2

    const/16 v3, 0x12

    invoke-virtual {v1, v0, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$n;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string p3, "0"

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/m5$p;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/m5$p;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/m5$p;-><init>(Lcom/join/mgps/adapter/m5;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0441

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090524

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/m5$p;->c:Landroid/widget/TextView;

    const v1, 0x7f090513

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/m5$p;->d:Landroid/widget/TextView;

    const v1, 0x7f09051d

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/adapter/m5$p;->e:Landroid/widget/TextView;

    const v1, 0x7f091283

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/m5$p;->f:Landroid/view/View;

    const v1, 0x7f0902a6

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/m5$p;->g:Landroid/view/View;

    const v1, 0x7f09051f

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/join/mgps/adapter/m5$p;->h:Landroid/view/View;

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    if-nez p1, :cond_1

    return-object p2

    .line 12
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/m5$p;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getView()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, v0, Lcom/join/mgps/adapter/m5$p;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, v0, Lcom/join/mgps/adapter/m5$p;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPraise()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/join/mgps/Util/i0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/m5;->K(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m5$q;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/m5$q;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/m5$q;-><init>(Lcom/join/mgps/adapter/m5;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c043e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090519

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$q;->b:Landroid/widget/TextView;

    const v0, 0x7f090a32

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$q;->c:Landroid/view/View;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v3, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/2addr v1, v4

    .line 14
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_2

    if-ltz v4, :cond_2

    .line 15
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/join/mgps/adapter/l5;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/adapter/l5;-><init>(Lcom/join/mgps/adapter/m5;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$q;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 21
    :try_start_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->isShowDivider()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 22
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$q;->b:Landroid/widget/TextView;

    const-string v0, "#3b3b3b"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$q;->b:Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 24
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$q;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0711c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_2

    .line 25
    :cond_3
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$q;->b:Landroid/widget/TextView;

    const-string v1, "#FF4A4A4A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$q;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 27
    :goto_2
    iget-object p1, p3, Lcom/join/mgps/adapter/m5$q;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 29
    iget-object p3, p3, Lcom/join/mgps/adapter/m5$q;->b:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 30
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object p2
.end method

.method private v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m5$r;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/m5$r;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/m5$r;-><init>(Lcom/join/mgps/adapter/m5;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c043f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090512

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$r;->b:Landroid/widget/Button;

    const v0, 0x7f090522

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$r;->c:Landroid/widget/TextView;

    const v0, 0x7f090efb

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$r;->d:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 8
    invoke-static {v2}, Lcom/join/android/app/component/optimizetext/a;->a(F)I

    move-result v2

    iget-object v3, p3, Lcom/join/mgps/adapter/m5$r;->d:Landroid/view/View;

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p3, Lcom/join/mgps/adapter/m5$r;->d:Landroid/view/View;

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;

    if-nez p1, :cond_1

    return-object p2

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v3, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06038c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v1, v4

    .line 20
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v1, v0, :cond_2

    if-ltz v4, :cond_2

    .line 21
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :cond_2
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/m5$r;->c:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumSearchQueryBean;->getPid()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/m5;->K(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method private w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m5$s;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/m5$s;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/m5$s;-><init>(Lcom/join/mgps/adapter/m5;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0440

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090687

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$s;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090acd

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$s;->c:Landroid/widget/TextView;

    const v0, 0x7f090340

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$s;->d:Landroid/widget/TextView;

    const v0, 0x7f090304

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m5$s;->e:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;

    .line 10
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$s;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getIcon_src()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$s;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$s;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p3, p3, Lcom/join/mgps/adapter/m5$s;->e:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4eca\u65e5\u66f4\u65b0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->getToday_posts()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance p3, Lcom/join/mgps/adapter/m5$e;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/m5$e;-><init>(Lcom/join/mgps/adapter/m5;Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->c:Ljava/lang/String;

    return-object v0
.end method

.method public E(Landroid/content/Context;Ljava/lang/String;)V
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

.method public F(Lcom/join/mgps/adapter/m5$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m5;->e:Lcom/join/mgps/adapter/m5$g;

    return-void
.end method

.method public G(Lcom/join/mgps/dto/SearchResultAdinfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m5;->d:Lcom/join/mgps/dto/SearchResultAdinfo;

    return-void
.end method

.method H(Landroid/view/View;I)V
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

.method public I(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/m5$o;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public J(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/m5$o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    return-void
.end method

.method public K(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/m5$f;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/m5$f;-><init>(Lcom/join/mgps/adapter/m5;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m5;->c:Ljava/lang/String;

    return-void
.end method

.method M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p1, Lcom/join/mgps/adapter/m5$t;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->m:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/m5$t;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p1, Lcom/join/mgps/adapter/m5$t;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method g(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    const-string v1, "103"

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/adapter/m5;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setLocation(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setExt(Ljava/lang/String;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/m5$o;

    iget-object p1, p1, Lcom/join/mgps/adapter/m5$o;->b:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

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
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/m5$o;

    iget p1, p1, Lcom/join/mgps/adapter/m5$o;->a:I

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->m(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->p(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_6
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->j(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_9
    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->i(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_a
    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/m5;->k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_b
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public h()Lcom/join/mgps/dto/SearchResultAdinfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->d:Lcom/join/mgps/dto/SearchResultAdinfo;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/m5$o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    return-object v0
.end method

.method public r(I)Lcom/join/mgps/adapter/m5$o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/m5$o;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/m5$o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->a:Ljava/util/List;

    return-object v0
.end method

.method public x(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v1, p0

    if-nez p2, :cond_0

    .line 1
    iget-object v0, v1, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0088

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v2, Lcom/join/mgps/adapter/m5$t;

    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/m5$t;-><init>(Lcom/join/mgps/adapter/m5;)V

    const v3, 0x7f090a39

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0905ee

    .line 4
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->b:Landroid/widget/ImageView;

    const v3, 0x7f090a37

    .line 5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->c:Landroid/widget/TextView;

    const v3, 0x7f090095

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/m5$t;->d:Landroid/widget/TextView;

    const v4, 0x7f090d07

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/m5$t;->n:Landroid/widget/RelativeLayout;

    const v4, 0x7f090cac

    .line 8
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/m5$t;->e:Landroid/widget/RelativeLayout;

    const v4, 0x7f090a3a

    .line 9
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const v4, 0x7f09100c

    .line 10
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/m5$t;->g:Landroid/widget/LinearLayout;

    const v4, 0x7f090a38

    .line 11
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/m5$t;->h:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->d:Landroid/widget/TextView;

    const v3, 0x7f0908cd

    .line 13
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->i:Landroid/widget/LinearLayout;

    const v3, 0x7f0900ea

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->j:Landroid/widget/TextView;

    const v3, 0x7f0909b2

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->k:Landroid/widget/TextView;

    const v3, 0x7f090c59

    .line 16
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->l:Landroid/widget/ProgressBar;

    const v3, 0x7f090c60

    .line 17
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->m:Landroid/widget/ProgressBar;

    const v3, 0x7f0908be

    .line 18
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/adapter/m5$t;->o:Landroid/view/View;

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/join/mgps/adapter/m5$t;

    move-object v3, v2

    move-object/from16 v2, p2

    .line 21
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 22
    invoke-virtual {v4}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 23
    iget-object v12, v1, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/m5;->r(I)Lcom/join/mgps/adapter/m5$o;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v13, 0x8

    if-eqz v5, :cond_2

    .line 25
    iget-boolean v5, v5, Lcom/join/mgps/adapter/m5$o;->c:Z

    if-eqz v5, :cond_2

    .line 26
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->o:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->o:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 28
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->o:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_1

    .line 29
    :cond_1
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v6, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v5, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    :goto_1
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0711aa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 31
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 32
    iget-object v8, v3, Lcom/join/mgps/adapter/m5$t;->o:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 33
    :cond_2
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->o:Landroid/view/View;

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :goto_2
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->c:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 36
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->n:Landroid/widget/RelativeLayout;

    new-instance v8, Lcom/join/mgps/adapter/m5$b;

    invoke-direct {v8, v1, v4}, Lcom/join/mgps/adapter/m5$b;-><init>(Lcom/join/mgps/adapter/m5;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 39
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 40
    :cond_3
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 41
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 42
    :cond_4
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    :goto_3
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    mul-double v5, v5, v7

    mul-double v5, v5, v7

    double-to-long v14, v5

    .line 44
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->isAd()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 45
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v6

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v8

    iget-object v9, v3, Lcom/join/mgps/adapter/m5$t;->g:Landroid/widget/LinearLayout;

    move-object v10, v12

    invoke-static/range {v5 .. v10}, Lcom/join/mgps/Util/UtilsMy;->F(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    goto :goto_4

    .line 46
    :cond_5
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v6

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v8

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, v3, Lcom/join/mgps/adapter/m5$t;->g:Landroid/widget/LinearLayout;

    move-object v11, v12

    invoke-static/range {v5 .. v11}, Lcom/join/mgps/Util/UtilsMy;->C(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 47
    :goto_4
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v5

    invoke-static {v5, v2, v0}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 48
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v7}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x7f080a62

    const v7, 0x7f06002a

    if-eqz v5, :cond_6

    .line 49
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 51
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const-string v5, "\u5f00\u59cb"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_6
    const-string v5, "\u66f4\u65b0"

    const v8, 0x7f060033

    const v9, 0x7f1100d2

    const v10, 0x7f080a6e

    const v11, 0x7f060030

    const v13, 0x7f080a67

    if-nez v0, :cond_a

    .line 55
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v6}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 56
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    invoke-static {v12}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 58
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    .line 59
    invoke-static {v12}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 60
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v0, v6, :cond_7

    .line 61
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 63
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 65
    :cond_7
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    .line 66
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 67
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 69
    :cond_8
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    .line 70
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 71
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 72
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5, v4}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_8

    .line 73
    :cond_9
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    .line 74
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 76
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5, v4}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    goto/16 :goto_8

    .line 77
    :cond_a
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v16

    .line 78
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v8

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0x2b

    if-lez v8, :cond_b

    const/16 v8, 0x2b

    goto :goto_5

    :cond_b
    move/from16 v8, v16

    :goto_5
    if-eqz v8, :cond_11

    const/16 v10, 0x1b

    const-string v6, "\u6682\u505c\u4e2d"

    if-eq v8, v10, :cond_10

    const/16 v10, 0x30

    if-eq v8, v10, :cond_f

    const/4 v10, 0x2

    const-string v11, "/"

    if-eq v8, v10, :cond_e

    const/4 v10, 0x3

    if-eq v8, v10, :cond_d

    const/4 v10, 0x5

    if-eq v8, v10, :cond_c

    const/4 v10, 0x6

    if-eq v8, v10, :cond_d

    const/4 v6, 0x7

    if-eq v8, v6, :cond_11

    const/16 v6, 0x2a

    if-eq v8, v6, :cond_c

    if-eq v8, v9, :cond_11

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_8

    .line 79
    :pswitch_0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v5, v6}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 80
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->k:Landroid/widget/TextView;

    const-string v6, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 83
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const v5, 0x7f080a7b

    .line 84
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 85
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const-string v5, "\u89e3\u538b"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 87
    :pswitch_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v5, v6}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 88
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->k:Landroid/widget/TextView;

    const-string v6, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const v5, 0x7f0803ca

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const-string v5, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 94
    :pswitch_2
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 95
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const-string v5, "\u5b89\u88c5"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 98
    :pswitch_3
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const v6, 0x7f080a62

    .line 99
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const-string v6, "\u7b49\u5f85"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v5, v5}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 103
    :try_start_0
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    :goto_6
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->k:Landroid/widget/TextView;

    const-string v5, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 107
    :pswitch_4
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 109
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060030

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 112
    :cond_c
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const v5, 0x7f080a6e

    .line 113
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060033

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 117
    :cond_d
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const v8, 0x7f080a62

    .line 118
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const-string v8, "\u7ee7\u7eed"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v5, v5}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 122
    :try_start_1
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->j:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v7

    long-to-int v0, v7

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :goto_7
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 126
    :cond_e
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 127
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const v6, 0x7f080a62

    .line 128
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const-string v6, "\u6682\u505c"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v5, v5}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 132
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->j:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->k:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/S"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-virtual {v5, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_8

    .line 135
    :cond_f
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const v5, 0x7f080a62

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 136
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    const-string v5, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_8

    .line 139
    :cond_10
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 140
    :cond_11
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    .line 141
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 142
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 143
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->f:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/join/mgps/adapter/m5$t;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v5, v4}, Lcom/join/mgps/Util/UtilsMy;->n2(Landroid/widget/TextView;Landroid/view/View;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 144
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v0, v5}, Lcom/join/mgps/adapter/m5;->M(Lcom/join/mgps/adapter/m5$t;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 145
    :goto_8
    iget-object v0, v3, Lcom/join/mgps/adapter/m5$t;->e:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/join/mgps/adapter/m5$l;

    invoke-direct {v3, v1, v4}, Lcom/join/mgps/adapter/m5$l;-><init>(Lcom/join/mgps/adapter/m5;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    .line 146
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1
    iget-object p3, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 2
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0281

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/join/mgps/adapter/m5$w;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/m5$w;-><init>(Lcom/join/mgps/adapter/m5;Landroid/view/View;)V

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/adapter/m5$w;

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/m5;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVedio_cover_pic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v6, 0x0

    .line 12
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 13
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/DetialShowImageBean;

    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 15
    iget-object p1, v0, Lcom/join/mgps/adapter/m5$w;->a:Lit/sephiroth/android/library/widget/HListView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 16
    :cond_3
    iget-object v5, v0, Lcom/join/mgps/adapter/m5$w;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    move-result v4

    .line 18
    new-instance v5, Lcom/join/mgps/adapter/x0;

    invoke-direct {v5, p3, v4, v1, v2}, Lcom/join/mgps/adapter/x0;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 19
    iget-object v2, v0, Lcom/join/mgps/adapter/m5$w;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v2, v5}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-ne v4, v3, :cond_4

    .line 20
    iget-object v2, v0, Lcom/join/mgps/adapter/m5$w;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070f87

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 21
    iget-object v2, v0, Lcom/join/mgps/adapter/m5$w;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->postInvalidate()V

    goto :goto_3

    .line 22
    :cond_4
    iget-object v2, v0, Lcom/join/mgps/adapter/m5$w;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07110f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 23
    iget-object v2, v0, Lcom/join/mgps/adapter/m5$w;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->postInvalidate()V

    .line 24
    :goto_3
    iget-object v0, v0, Lcom/join/mgps/adapter/m5$w;->a:Lit/sephiroth/android/library/widget/HListView;

    new-instance v2, Lcom/join/mgps/adapter/m5$a;

    invoke-direct {v2, p0, p3, v1, p1}, Lcom/join/mgps/adapter/m5$a;-><init>(Lcom/join/mgps/adapter/m5;Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    :cond_5
    :goto_4
    return-object p2
.end method

.method public z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/m5;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c056b

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/m5$v;

    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/m5$v;-><init>(Lcom/join/mgps/adapter/m5;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m5$v;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->d:Lcom/join/mgps/dto/SearchResultAdinfo;

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p3, Lcom/join/mgps/adapter/m5$v;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/adapter/m5;->d:Lcom/join/mgps/dto/SearchResultAdinfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SearchResultAdinfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->d:Lcom/join/mgps/dto/SearchResultAdinfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchResultAdinfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/m5;->d:Lcom/join/mgps/dto/SearchResultAdinfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchResultAdinfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string p1, "\u3000\u3000 "

    goto :goto_3

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string p1, "\u3000\u3000\u3000"

    goto :goto_3

    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    const-string p1, "\u3000\u3000\u3000\u3000"

    goto :goto_3

    .line 9
    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " "

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v0, 0x2

    .line 11
    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    const-string v1, ""

    :goto_2
    if-ge p1, v0, :cond_5

    const-string v1, "\u3000"

    .line 12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    move-object p1, v1

    .line 14
    :goto_3
    iget-object p3, p3, Lcom/join/mgps/adapter/m5$v;->b:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/mgps/adapter/m5;->d:Lcom/join/mgps/dto/SearchResultAdinfo;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchResultAdinfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    const/16 p1, 0x8

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-object p2
.end method
