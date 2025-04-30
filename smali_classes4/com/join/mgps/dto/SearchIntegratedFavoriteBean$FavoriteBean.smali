.class public Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;
.super Ljava/lang/Object;
.source "SearchIntegratedFavoriteBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SearchIntegratedFavoriteBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavoriteBean"
.end annotation


# instance fields
.field private auth_name:Ljava/lang/String;

.field private game_count:I

.field private id:I

.field private pic:Ljava/lang/String;

.field private showDivider:Z

.field private title:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->showDivider:Z

    return-void
.end method


# virtual methods
.method public getAuth_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->auth_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->game_count:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->id:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isShowDivider()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->showDivider:Z

    return v0
.end method

.method public setAuth_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->auth_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->game_count:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->id:I

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->pic:Ljava/lang/String;

    return-void
.end method

.method public setShowDivider(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->showDivider:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->uid:Ljava/lang/String;

    return-void
.end method
