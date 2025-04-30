.class public Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;
.super Ljava/lang/Object;
.source "SearchIntegratedFavoriteBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;
    }
.end annotation


# instance fields
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
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->list:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->recommend_list:Ljava/util/List;

    return-object v0
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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->list:Ljava/util/List;

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
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;->recommend_list:Ljava/util/List;

    return-void
.end method
