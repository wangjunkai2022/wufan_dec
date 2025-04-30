.class public Lcom/join/mgps/dto/SimulatorAreaRequest;
.super Ljava/lang/Object;
.source "SimulatorAreaRequest.java"


# instance fields
.field private m:Ljava/lang/String;

.field private pn:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaRequest;->m:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/SimulatorAreaRequest;->pn:I

    return-void
.end method


# virtual methods
.method public getM()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SimulatorAreaRequest;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SimulatorAreaRequest;->pn:I

    return v0
.end method

.method public setM(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SimulatorAreaRequest;->m:Ljava/lang/String;

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SimulatorAreaRequest;->pn:I

    return-void
.end method
