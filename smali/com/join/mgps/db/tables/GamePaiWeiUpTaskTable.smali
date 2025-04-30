.class public Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;
.super Ljava/lang/Object;
.source "GamePaiWeiUpTaskTable.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cost_coin:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private filePath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private isUped:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private numPlayers:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private playId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private playTime:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rank_auto_upload:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rank_play_time:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private role_id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setUserId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setPlayId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p3}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setGameId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setNumPlayers(I)V

    .line 7
    invoke-virtual {p0, p5}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setFilePath(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p6}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setUped(Z)V

    .line 9
    invoke-virtual {p0, p7, p8}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setPlayTime(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZJIIII)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setUserId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setPlayId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p3}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setGameId(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p4}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setNumPlayers(I)V

    .line 15
    invoke-virtual {p0, p5}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setFilePath(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p6}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setUped(Z)V

    .line 17
    invoke-virtual {p0, p7, p8}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setPlayTime(J)V

    .line 18
    invoke-virtual {p0, p9}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setCost_coin(I)V

    .line 19
    invoke-virtual {p0, p10}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setRole_id(I)V

    .line 20
    invoke-virtual {p0, p11}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setRank_auto_upload(I)V

    int-to-long p1, p12

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->setRank_play_time(J)V

    return-void
.end method


# virtual methods
.method public getCost_coin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->cost_coin:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->id:I

    return v0
.end method

.method public getNumPlayers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->numPlayers:I

    return v0
.end method

.method public getPlayId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->playId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->playTime:J

    return-wide v0
.end method

.method public getRank_auto_upload()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->rank_auto_upload:I

    return v0
.end method

.method public getRank_play_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->rank_play_time:J

    return-wide v0
.end method

.method public getRole_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->role_id:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isUped()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->isUped:Z

    return v0
.end method

.method public setCost_coin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->cost_coin:I

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->id:I

    return-void
.end method

.method public setNumPlayers(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->numPlayers:I

    return-void
.end method

.method public setPlayId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->playId:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->playTime:J

    return-void
.end method

.method public setRank_auto_upload(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->rank_auto_upload:I

    return-void
.end method

.method public setRank_play_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->rank_play_time:J

    return-void
.end method

.method public setRole_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->role_id:I

    return-void
.end method

.method public setUped(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->isUped:Z

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/db/tables/GamePaiWeiUpTaskTable;->userId:Ljava/lang/String;

    return-void
.end method
