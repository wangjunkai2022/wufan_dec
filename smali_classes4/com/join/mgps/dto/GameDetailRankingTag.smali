.class public Lcom/join/mgps/dto/GameDetailRankingTag;
.super Ljava/lang/Object;
.source "GameDetailRankingTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;
    }
.end annotation


# instance fields
.field private hot_game:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

.field private tag_game:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHot_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailRankingTag;->hot_game:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    return-object v0
.end method

.method public getTag_game()Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameDetailRankingTag;->tag_game:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    return-object v0
.end method

.method public setHot_game(Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailRankingTag;->hot_game:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    return-void
.end method

.method public setTag_game(Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameDetailRankingTag;->tag_game:Lcom/join/mgps/dto/GameDetailRankingTag$GameTagBean;

    return-void
.end method
