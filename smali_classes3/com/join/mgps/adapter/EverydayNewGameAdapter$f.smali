.class public Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EverydayNewGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/EverydayNewGameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c02e2

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    .line 3
    new-instance p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;

    iget-object v1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-direct {p3, v1, p2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;

    .line 5
    :goto_0
    iget-object v1, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 6
    iget-object v2, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;->b:Landroid/widget/ImageView;

    .line 7
    iget-object v3, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;->c:Landroid/widget/TextView;

    .line 8
    iget-object p3, p3, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;->d:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    :cond_2
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v4

    invoke-virtual {p1}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v5

    invoke-static {v4, p2, v5}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 12
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_open_time()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_open_time()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/c;->g(J)Z

    move-result v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 14
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v4, :cond_4

    const v0, 0x7f080424

    .line 15
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    const v0, 0x7f080425

    .line 16
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    :goto_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setJump_type(I)V

    .line 26
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 27
    iget-object v2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->q(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 28
    iget-object v2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->q(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-virtual {v0, p3, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->d(Landroid/widget/TextView;Ljava/lang/Object;)V

    return-object p2
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->b:Ljava/util/List;

    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->a()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-static {p2}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->a(Lcom/join/mgps/adapter/EverydayNewGameAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c02e2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;

    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$f;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-direct {p2, v0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$h;-><init>(Lcom/join/mgps/adapter/EverydayNewGameAdapter;Landroid/view/View;)V

    return-object p2
.end method
