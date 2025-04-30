.class public Lcom/join/mgps/dto/BattleStatus;
.super Ljava/lang/Object;
.source "BattleStatus.java"


# instance fields
.field private error_msg:Ljava/lang/String;

.field private remaining_seconds:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError_msg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BattleStatus;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getRemaining_seconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BattleStatus;->remaining_seconds:I

    return v0
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BattleStatus;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setRemaining_seconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BattleStatus;->remaining_seconds:I

    return-void
.end method
