.class public Lcom/join/mgps/dto/SearchIntegratedBean;
.super Ljava/lang/Object;
.source "SearchIntegratedBean.java"


# instance fields
.field private game_favorite_list:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

.field private game_list:Lcom/join/mgps/dto/SearchIntegratedGameBean;

.field private keyword:Ljava/lang/String;

.field private posts_list:Lcom/join/mgps/dto/SearchIntegratedPostBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_favorite_list()Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedBean;->game_favorite_list:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    return-object v0
.end method

.method public getGame_list()Lcom/join/mgps/dto/SearchIntegratedGameBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedBean;->game_list:Lcom/join/mgps/dto/SearchIntegratedGameBean;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedBean;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPosts_list()Lcom/join/mgps/dto/SearchIntegratedPostBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedBean;->posts_list:Lcom/join/mgps/dto/SearchIntegratedPostBean;

    return-object v0
.end method

.method public setGame_favorite_list(Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedBean;->game_favorite_list:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;

    return-void
.end method

.method public setGame_list(Lcom/join/mgps/dto/SearchIntegratedGameBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedBean;->game_list:Lcom/join/mgps/dto/SearchIntegratedGameBean;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedBean;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setPosts_list(Lcom/join/mgps/dto/SearchIntegratedPostBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedBean;->posts_list:Lcom/join/mgps/dto/SearchIntegratedPostBean;

    return-void
.end method
