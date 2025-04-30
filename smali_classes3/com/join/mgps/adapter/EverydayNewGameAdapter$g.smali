.class public Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;
.super Landroid/widget/BaseAdapter;
.source "EverydayNewGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/EverydayNewGameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
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
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->b:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c02e2

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f09069b

    .line 2
    invoke-static {p2, p3}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f0904db

    .line 3
    invoke-static {p2, v1}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090104

    .line 4
    invoke-static {p2, v2}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090a3a

    .line 5
    invoke-static {p2, v3}, Lcom/join/mgps/Util/o2;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_open_time()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_open_time()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/c;->g(J)Z

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 10
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v4, :cond_3

    const v0, 0x7f080424

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    const v0, 0x7f080425

    .line 12
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-static {p3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 22
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 23
    iget-object v1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->q(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 24
    iget-object v1, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-virtual {v1, p3, v0}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->q(Landroid/view/View;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 25
    iget-object p3, p0, Lcom/join/mgps/adapter/EverydayNewGameAdapter$g;->c:Lcom/join/mgps/adapter/EverydayNewGameAdapter;

    invoke-virtual {p3, v3, p1}, Lcom/join/mgps/adapter/EverydayNewGameAdapter;->d(Landroid/widget/TextView;Ljava/lang/Object;)V

    :cond_4
    return-object p2
.end method
