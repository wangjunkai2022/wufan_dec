.class public Lcom/join/mgps/dto/BattleChallengeConfig;
.super Ljava/lang/Object;
.source "BattleChallengeConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x55aa2e189ed804fcL


# instance fields
.field private battleChallengeCopper:[I

.field private challengeScore:I

.field private fixChallengeCopper:I

.field private isBattle:Z

.field private userCopper:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBattleChallengeCopper()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->battleChallengeCopper:[I

    return-object v0
.end method

.method public getChallengeScore()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->challengeScore:I

    return v0
.end method

.method public getFixChallengeCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->fixChallengeCopper:I

    return v0
.end method

.method public getIsBattle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->isBattle:Z

    return v0
.end method

.method public getUserCopper()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->userCopper:I

    return v0
.end method

.method public setBattleChallengeCopper([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->battleChallengeCopper:[I

    return-void
.end method

.method public setChallengeScore(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->challengeScore:I

    return-void
.end method

.method public setFixChallengeCopper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->fixChallengeCopper:I

    return-void
.end method

.method public setIsBattle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->isBattle:Z

    return-void
.end method

.method public setUserCopper(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/BattleChallengeConfig;->userCopper:I

    return-void
.end method
