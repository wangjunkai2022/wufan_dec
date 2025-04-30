.class public Lcom/join/mgps/dto/RequestModGameTagArgs;
.super Ljava/lang/Object;
.source "RequestModGameTagArgs.java"


# instance fields
.field private gameId:Ljava/lang/String;

.field private lastEnterTime:J

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->gameId:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->lastEnterTime:J

    .line 5
    iput p4, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->uid:I

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastEnterTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->lastEnterTime:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->uid:I

    return v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setLastEnterTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->lastEnterTime:J

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestModGameTagArgs;->uid:I

    return-void
.end method
