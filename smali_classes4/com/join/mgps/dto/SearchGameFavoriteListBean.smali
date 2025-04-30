.class public Lcom/join/mgps/dto/SearchGameFavoriteListBean;
.super Ljava/lang/Object;
.source "SearchGameFavoriteListBean.java"


# instance fields
.field private keyword:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;",
            ">;"
        }
    .end annotation
.end field

.field private recommend_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getRecommend_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->recommend_list:Ljava/util/List;

    return-object v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->list:Ljava/util/List;

    return-void
.end method

.method public setRecommend_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchGameFavoriteListBean;->recommend_list:Ljava/util/List;

    return-void
.end method
