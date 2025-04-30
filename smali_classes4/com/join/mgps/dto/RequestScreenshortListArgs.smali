.class public Lcom/join/mgps/dto/RequestScreenshortListArgs;
.super Ljava/lang/Object;
.source "RequestScreenshortListArgs.java"


# instance fields
.field private gameId:Ljava/lang/String;

.field private pc:I

.field private pn:I

.field private typeId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->pc:I

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->typeId:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->gameId:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->pn:I

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->pn:I

    return v0
.end method

.method public getTypeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->typeId:I

    return v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->pn:I

    return-void
.end method

.method public setTypeId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestScreenshortListArgs;->typeId:I

    return-void
.end method
