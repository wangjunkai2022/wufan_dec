.class public Lcom/papa91/arc/bean/GateBean;
.super Ljava/lang/Object;
.source "GateBean.java"


# instance fields
.field private gateIndex:I

.field private gateMaskPath:Ljava/lang/String;

.field private gateName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGateIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/GateBean;->gateIndex:I

    return v0
.end method

.method public getGateMaskPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/GateBean;->gateMaskPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGateName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/GateBean;->gateName:Ljava/lang/String;

    return-object v0
.end method

.method public setGateIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/GateBean;->gateIndex:I

    return-void
.end method

.method public setGateMaskPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/GateBean;->gateMaskPath:Ljava/lang/String;

    return-void
.end method

.method public setGateName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/GateBean;->gateName:Ljava/lang/String;

    return-void
.end method
