.class public Lcom/join/mgps/dto/GameScore;
.super Ljava/lang/Object;
.source "GameScore.java"


# instance fields
.field private count:I

.field private score:Ljava/lang/String;

.field private sgc_switch:I

.field private total_stars:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameScore;->count:I

    return v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameScore;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getSgc_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameScore;->sgc_switch:I

    return v0
.end method

.method public getTotal_stars()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameScore;->total_stars:D

    return-wide v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameScore;->count:I

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameScore;->score:Ljava/lang/String;

    return-void
.end method

.method public setSgc_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameScore;->sgc_switch:I

    return-void
.end method

.method public setTotal_stars(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameScore;->total_stars:D

    return-void
.end method
