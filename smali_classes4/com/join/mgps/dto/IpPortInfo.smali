.class public Lcom/join/mgps/dto/IpPortInfo;
.super Ljava/lang/Object;
.source "IpPortInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field inetAddress:Ljava/net/InetAddress;

.field port:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/IpPortInfo;->inetAddress:Ljava/net/InetAddress;

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/IpPortInfo;->port:I

    return-void
.end method


# virtual methods
.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/IpPortInfo;->inetAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/IpPortInfo;->port:I

    return v0
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/IpPortInfo;->inetAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/IpPortInfo;->port:I

    return-void
.end method
