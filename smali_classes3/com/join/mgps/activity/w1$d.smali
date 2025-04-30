.class Lcom/join/mgps/activity/w1$d;
.super Ljava/lang/Object;
.source "MyGamePapaFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/w1;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/join/mgps/dto/ResponseModel<",
        "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/w1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/w1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/w1$d;->a:Lcom/join/mgps/activity/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/mygame/data/DataGameListBean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/w1$d;->a:Lcom/join/mgps/activity/w1;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    iput-object v0, p2, Lcom/join/mgps/activity/w1;->q0:Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    .line 4
    iget-object p2, p0, Lcom/join/mgps/activity/w1$d;->a:Lcom/join/mgps/activity/w1;

    invoke-static {p2}, Lcom/join/mgps/activity/w1;->c0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    invoke-virtual {p2}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getRecommendList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 7
    new-instance v1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    invoke-direct {v1, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;-><init>(Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 8
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg1/f;->B(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setDownloadTask(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/w1$d;->a:Lcom/join/mgps/activity/w1;

    invoke-static {v2}, Lcom/join/mgps/activity/w1;->c0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/w1$d;->a:Lcom/join/mgps/activity/w1;

    invoke-static {p2}, Lcom/join/mgps/activity/w1;->d0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/join/mgps/activity/w1$d;->a:Lcom/join/mgps/activity/w1;

    invoke-static {p2}, Lcom/join/mgps/activity/w1;->d0(Lcom/join/mgps/activity/w1;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/join/mgps/activity/w1$d;->a:Lcom/join/mgps/activity/w1;

    invoke-virtual {p2}, Lcom/join/mgps/activity/w1;->J0()V

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 14
    iget-object p2, p0, Lcom/join/mgps/activity/w1$d;->a:Lcom/join/mgps/activity/w1;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/w1;->k1(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
