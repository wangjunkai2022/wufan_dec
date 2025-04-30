.class public Lcom/join/mgps/dto/RequestBbsListArgs;
.super Ljava/lang/Object;
.source "RequestBbsListArgs.java"


# instance fields
.field private gameId:Ljava/lang/String;

.field private page:Ljava/lang/Integer;

.field private tagId:Ljava/lang/Integer;

.field private uid:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsListArgs;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsListArgs;->page:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTagId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsListArgs;->tagId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestBbsListArgs;->uid:Ljava/lang/Integer;

    return-object v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsListArgs;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setPage(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsListArgs;->page:Ljava/lang/Integer;

    return-void
.end method

.method public setTagId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsListArgs;->tagId:Ljava/lang/Integer;

    return-void
.end method

.method public setUid(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestBbsListArgs;->uid:Ljava/lang/Integer;

    return-void
.end method
