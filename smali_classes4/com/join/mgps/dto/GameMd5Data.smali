.class public Lcom/join/mgps/dto/GameMd5Data;
.super Ljava/lang/Object;
.source "GameMd5Data.java"


# instance fields
.field private appGameFileMd5:Ljava/lang/String;

.field private gameDownLoadUrl:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private serverGameFileMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppGameFileMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMd5Data;->appGameFileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getGameDownLoadUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMd5Data;->gameDownLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMd5Data;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerGameFileMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMd5Data;->serverGameFileMd5:Ljava/lang/String;

    return-object v0
.end method

.method public setAppGameFileMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMd5Data;->appGameFileMd5:Ljava/lang/String;

    return-void
.end method

.method public setGameDownLoadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMd5Data;->gameDownLoadUrl:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMd5Data;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setServerGameFileMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMd5Data;->serverGameFileMd5:Ljava/lang/String;

    return-void
.end method
