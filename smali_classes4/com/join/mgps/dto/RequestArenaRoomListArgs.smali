.class public Lcom/join/mgps/dto/RequestArenaRoomListArgs;
.super Ljava/lang/Object;
.source "RequestArenaRoomListArgs.java"


# instance fields
.field private id:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/RequestArenaRoomListArgs;->id:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/RequestArenaRoomListArgs;->type:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestArenaRoomListArgs;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestArenaRoomListArgs;->type:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestArenaRoomListArgs;->id:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestArenaRoomListArgs;->type:I

    return-void
.end method
