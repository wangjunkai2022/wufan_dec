.class public Lcom/join/mgps/dto/RecoverFileJson;
.super Ljava/lang/Object;
.source "RecoverFileJson.java"


# instance fields
.field private gameID:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecoverFileJson;->gameID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RecoverFileJson;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public setGameID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecoverFileJson;->gameID:Ljava/lang/String;

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RecoverFileJson;->userID:Ljava/lang/String;

    return-void
.end method
