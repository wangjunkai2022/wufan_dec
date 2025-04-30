.class public Lcom/join/mgps/dto/GameWorldGlobalInfoRequestBean;
.super Ljava/lang/Object;
.source "GameWorldGlobalInfoRequestBean.java"


# instance fields
.field private gameId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/GameWorldGlobalInfoRequestBean;->gameId:J

    return-wide v0
.end method

.method public setGameId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/GameWorldGlobalInfoRequestBean;->gameId:J

    return-void
.end method
