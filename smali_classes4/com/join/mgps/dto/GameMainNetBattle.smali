.class public Lcom/join/mgps/dto/GameMainNetBattle;
.super Ljava/lang/Object;
.source "GameMainNetBattle.java"


# instance fields
.field private ip:Ljava/lang/String;

.field private number:I

.field private port:I

.field private silence_room_switch:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainNetBattle;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainNetBattle;->number:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainNetBattle;->port:I

    return v0
.end method

.method public getSilence_room_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainNetBattle;->silence_room_switch:I

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainNetBattle;->ip:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainNetBattle;->number:I

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainNetBattle;->port:I

    return-void
.end method

.method public setSilence_room_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainNetBattle;->silence_room_switch:I

    return-void
.end method
