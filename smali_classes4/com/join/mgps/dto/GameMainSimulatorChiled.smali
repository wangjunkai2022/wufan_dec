.class public Lcom/join/mgps/dto/GameMainSimulatorChiled;
.super Ljava/lang/Object;
.source "GameMainSimulatorChiled.java"


# instance fields
.field private current_lv_times:I

.field private game_ico:Ljava/lang/String;

.field private level:I

.field private next_lv_times:I

.field private ruler_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_lv_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->current_lv_times:I

    return v0
.end method

.method public getGame_ico()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->game_ico:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->level:I

    return v0
.end method

.method public getNext_lv_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->next_lv_times:I

    return v0
.end method

.method public getRuler_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->ruler_url:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrent_lv_times(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->current_lv_times:I

    return-void
.end method

.method public setGame_ico(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->game_ico:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->level:I

    return-void
.end method

.method public setNext_lv_times(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->next_lv_times:I

    return-void
.end method

.method public setRuler_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainSimulatorChiled;->ruler_url:Ljava/lang/String;

    return-void
.end method
