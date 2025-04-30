.class public Lcom/join/mgps/dto/GameworldIntentInfoBean;
.super Ljava/lang/Object;
.source "GameworldIntentInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private game_get_pet:I

.field private game_kill_mob:I

.field private game_level:I

.field private game_medal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_kill_mob:I

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_get_pet:I

    .line 5
    iput p3, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_medal:I

    .line 6
    iput p4, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_level:I

    return-void
.end method


# virtual methods
.method public getGame_get_pet()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_get_pet:I

    return v0
.end method

.method public getGame_kill_mob()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_kill_mob:I

    return v0
.end method

.method public getGame_level()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_level:I

    return v0
.end method

.method public getGame_medal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_medal:I

    return v0
.end method

.method public setGame_get_pet(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_get_pet:I

    return-void
.end method

.method public setGame_kill_mob(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_kill_mob:I

    return-void
.end method

.method public setGame_level(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_level:I

    return-void
.end method

.method public setGame_medal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameworldIntentInfoBean;->game_medal:I

    return-void
.end method
