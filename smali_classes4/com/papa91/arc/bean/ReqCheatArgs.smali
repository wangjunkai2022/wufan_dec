.class public Lcom/papa91/arc/bean/ReqCheatArgs;
.super Ljava/lang/Object;
.source "ReqCheatArgs.java"


# instance fields
.field private gameId:Ljava/lang/String;

.field private uid:I

.field private userToken:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/papa91/arc/bean/ReqCheatArgs;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/ReqCheatArgs;->uid:I

    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/ReqCheatArgs;->userToken:Ljava/lang/String;

    return-object v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/ReqCheatArgs;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/ReqCheatArgs;->uid:I

    return-void
.end method

.method public setUserToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/ReqCheatArgs;->userToken:Ljava/lang/String;

    return-void
.end method
