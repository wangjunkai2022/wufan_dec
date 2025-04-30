.class public Lcom/join/mgps/dto/RequestSimulatorArgs;
.super Lcom/join/mgps/dto/BaseDto;
.source "RequestSimulatorArgs.java"


# instance fields
.field private pc:I

.field private pn:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/RequestSimulatorArgs;->pn:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseDto;-><init>()V

    .line 5
    iput p1, p0, Lcom/join/mgps/dto/RequestSimulatorArgs;->pn:I

    .line 6
    iput p2, p0, Lcom/join/mgps/dto/RequestSimulatorArgs;->pc:I

    return-void
.end method


# virtual methods
.method public getPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestSimulatorArgs;->pc:I

    return v0
.end method

.method public getPn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/RequestSimulatorArgs;->pn:I

    return v0
.end method

.method public setPc(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestSimulatorArgs;->pc:I

    return-void
.end method

.method public setPn(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/RequestSimulatorArgs;->pn:I

    return-void
.end method
