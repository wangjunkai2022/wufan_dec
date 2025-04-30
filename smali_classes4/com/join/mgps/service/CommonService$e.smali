.class Lcom/join/mgps/service/CommonService$e;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->K(Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZ)V
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
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;IILcom/join/mgps/dto/QueryDownloadInfoResponseData;ZLjava/lang/String;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$e;->h:Lcom/join/mgps/service/CommonService;

    iput p2, p0, Lcom/join/mgps/service/CommonService$e;->a:I

    iput p3, p0, Lcom/join/mgps/service/CommonService$e;->b:I

    iput-object p4, p0, Lcom/join/mgps/service/CommonService$e;->c:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    iput-boolean p5, p0, Lcom/join/mgps/service/CommonService$e;->d:Z

    iput-object p6, p0, Lcom/join/mgps/service/CommonService$e;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/join/mgps/service/CommonService$e;->f:Z

    iput-boolean p8, p0, Lcom/join/mgps/service/CommonService$e;->g:Z

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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$e;->h:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 7
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

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    move-result p2

    const/16 v0, 0x258

    if-ne p2, v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/mygame/data/DataGameListBean;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/mygame/data/DataGameListBean;->getGameList()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/join/mgps/dto/CollectionBeanSub;

    if-eqz v1, :cond_1

    .line 8
    iget p1, p0, Lcom/join/mgps/service/CommonService$e;->a:I

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 9
    iget p1, p0, Lcom/join/mgps/service/CommonService$e;->b:I

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$e;->c:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceSize()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/join/mgps/dto/CollectionBeanSub;->setResourceSize(J)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$e;->c:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getActualSize()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/join/mgps/dto/CollectionBeanSub;->setActual_size(J)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$e;->c:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getDownloadURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/CollectionBeanSub;->setDown_url_remote(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$e;->c:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/QueryDownloadInfoResponseData;->getResourceURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/CollectionBeanSub;->setResourceUrl(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$e;->h:Lcom/join/mgps/service/CommonService;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/join/mgps/service/CommonService$e;->d:Z

    iget-object v4, p0, Lcom/join/mgps/service/CommonService$e;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/join/mgps/service/CommonService$e;->f:Z

    iget-boolean v6, p0, Lcom/join/mgps/service/CommonService$e;->g:Z

    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/service/CommonService;->h1(Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/service/CommonService$e;->h:Lcom/join/mgps/service/CommonService;

    invoke-static {p1}, Lcom/join/mgps/service/CommonService;->g(Lcom/join/mgps/service/CommonService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u6e38\u620f\u4fe1\u606f\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
