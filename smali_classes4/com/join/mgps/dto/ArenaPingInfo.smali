.class public Lcom/join/mgps/dto/ArenaPingInfo;
.super Ljava/lang/Object;
.source "ArenaPingInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ip:Ljava/lang/String;

.field private pingTime:J

.field private port:I


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
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaPingInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPingTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaPingInfo;->pingTime:J

    return-wide v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPingInfo;->port:I

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaPingInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setPingTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaPingInfo;->pingTime:J

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPingInfo;->port:I

    return-void
.end method
