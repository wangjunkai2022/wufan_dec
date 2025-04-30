.class public Lcom/join/mgps/dto/RequestSiliencebean;
.super Ljava/lang/Object;
.source "RequestSiliencebean.java"


# instance fields
.field private game_id:Ljava/lang/String;

.field private silence_room_switch:I

.field private uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/RequestSiliencebean;->uid:I

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/RequestSiliencebean;->silence_room_switch:I

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/RequestSiliencebean;->game_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestSiliencebean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSilence_room_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestSiliencebean;->silence_room_switch:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestSiliencebean;->uid:I

    return v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestSiliencebean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setSilence_room_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestSiliencebean;->silence_room_switch:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestSiliencebean;->uid:I

    return-void
.end method
