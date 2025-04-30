.class public Lcom/join/mgps/dto/GameworldIntentRecoderBean;
.super Ljava/lang/Object;
.source "GameworldIntentRecoderBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private game_id:J

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/join/mgps/dto/GameworldIntentRecoderBean;->game_id:J

    .line 4
    iput p3, p0, Lcom/join/mgps/dto/GameworldIntentRecoderBean;->uid:I

    return-void
.end method


# virtual methods
.method public getGame_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameworldIntentRecoderBean;->game_id:J

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldIntentRecoderBean;->uid:I

    return v0
.end method

.method public setGame_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameworldIntentRecoderBean;->game_id:J

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameworldIntentRecoderBean;->uid:I

    return-void
.end method
