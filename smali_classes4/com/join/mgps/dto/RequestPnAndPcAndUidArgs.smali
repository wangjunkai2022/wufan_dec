.class public Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestPnAndPcAndUidArgs.java"


# instance fields
.field private is_vip:Z

.field private pc:I

.field private pn:I

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->pn:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->pc:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->uid:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->is_vip:Z

    .line 8
    iput p2, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->uid:I

    return-void
.end method


# virtual methods
.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->pn:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->uid:I

    return v0
.end method

.method public isIs_vip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->is_vip:Z

    return v0
.end method

.method public setIs_vip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->is_vip:Z

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->pn:I

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;->uid:I

    return-void
.end method
