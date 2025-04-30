.class public Lcom/papa/sim/statistic/ErrorPapaRequestMessage;
.super Ljava/lang/Object;
.source "ErrorPapaRequestMessage.java"


# instance fields
.field private args:Lcom/papa/sim/statistic/RequestStatsArgs;

.field private modeltype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/papa/sim/statistic/RequestStatsArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorPapaRequestMessage;->modeltype:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/ErrorPapaRequestMessage;->args:Lcom/papa/sim/statistic/RequestStatsArgs;

    return-void
.end method


# virtual methods
.method public getArgs()Lcom/papa/sim/statistic/RequestStatsArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ErrorPapaRequestMessage;->args:Lcom/papa/sim/statistic/RequestStatsArgs;

    return-object v0
.end method

.method public getModeltype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/ErrorPapaRequestMessage;->modeltype:Ljava/lang/String;

    return-object v0
.end method

.method public setArgs(Lcom/papa/sim/statistic/RequestStatsArgs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorPapaRequestMessage;->args:Lcom/papa/sim/statistic/RequestStatsArgs;

    return-void
.end method

.method public setModeltype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/ErrorPapaRequestMessage;->modeltype:Ljava/lang/String;

    return-void
.end method
