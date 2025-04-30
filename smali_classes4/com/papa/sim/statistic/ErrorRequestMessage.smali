.class public Lcom/papa/sim/statistic/ErrorRequestMessage;
.super Ljava/lang/Object;
.source "ErrorRequestMessage.java"


# instance fields
.field private args:Lcom/papa/sim/statistic/EmuErrorDto;

.field private modeltype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/papa/sim/statistic/EmuErrorDto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorRequestMessage;->modeltype:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/ErrorRequestMessage;->args:Lcom/papa/sim/statistic/EmuErrorDto;

    return-void
.end method


# virtual methods
.method public getArgs()Lcom/papa/sim/statistic/EmuErrorDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ErrorRequestMessage;->args:Lcom/papa/sim/statistic/EmuErrorDto;

    return-object v0
.end method

.method public getModeltype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ErrorRequestMessage;->modeltype:Ljava/lang/String;

    return-object v0
.end method

.method public setArgs(Lcom/papa/sim/statistic/EmuErrorDto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorRequestMessage;->args:Lcom/papa/sim/statistic/EmuErrorDto;

    return-void
.end method

.method public setModeltype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorRequestMessage;->modeltype:Ljava/lang/String;

    return-void
.end method
