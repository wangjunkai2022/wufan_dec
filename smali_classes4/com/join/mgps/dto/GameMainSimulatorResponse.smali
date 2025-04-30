.class public Lcom/join/mgps/dto/GameMainSimulatorResponse;
.super Ljava/lang/Object;
.source "GameMainSimulatorResponse.java"


# instance fields
.field private lv_cfg:Lcom/join/mgps/dto/GameMainSimulatorChiled;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLv_cfg()Lcom/join/mgps/dto/GameMainSimulatorChiled;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainSimulatorResponse;->lv_cfg:Lcom/join/mgps/dto/GameMainSimulatorChiled;

    return-object v0
.end method

.method public setLv_cfg(Lcom/join/mgps/dto/GameMainSimulatorChiled;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainSimulatorResponse;->lv_cfg:Lcom/join/mgps/dto/GameMainSimulatorChiled;

    return-void
.end method
