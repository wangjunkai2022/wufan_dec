.class public Lcom/join/mgps/adapter/c$r;
.super Landroid/widget/BaseAdapter;
.source "ChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-direct {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/c$r;->b:Landroid/content/Context;

    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/adapter/c$p;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/c$p;

    invoke-direct {p1}, Lcom/join/mgps/adapter/c$p;-><init>()V

    .line 3
    iget-object p3, p0, Lcom/join/mgps/adapter/c$r;->b:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c00c8

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090304

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p1, Lcom/join/mgps/adapter/c$p;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/adapter/c$p;->a:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {p3}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_count()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance p1, Lcom/join/mgps/adapter/c$r$a;

    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/c$r$a;-><init>(Lcom/join/mgps/adapter/c$r;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p2
.end method

.method private c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/c$q;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/c$q;

    invoke-direct {p3}, Lcom/join/mgps/adapter/c$q;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/c$r;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090acd

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/c$q;->b:Landroid/widget/TextView;

    const v0, 0x7f090687

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/c$q;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/c$r;->d(I)Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 8
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/c$q;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_ico()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/adapter/c$r;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 9
    iget-object p3, p3, Lcom/join/mgps/adapter/c$q;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/TodayWufunBroadcast;->getGame_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p3, Lcom/join/mgps/adapter/c$r$b;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/c$r$b;-><init>(Lcom/join/mgps/adapter/c$r;Lcom/join/mgps/dto/TodayWufunBroadcast;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
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


# virtual methods
.method public b()Lcom/join/mgps/dto/TodayWufunEmuClassify;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    return-object v0
.end method

.method public d(I)Lcom/join/mgps/dto/TodayWufunBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TodayWufunBroadcast;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Lcom/join/mgps/dto/TodayWufunEmuClassify;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/c$r;->a:Lcom/join/mgps/dto/TodayWufunEmuClassify;

    invoke-virtual {v0}, Lcom/join/mgps/dto/TodayWufunEmuClassify;->getGame_list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/c$r;->d(I)Lcom/join/mgps/dto/TodayWufunBroadcast;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/c$r;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/c$r;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/c$r;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/c$r;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/c$r;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
