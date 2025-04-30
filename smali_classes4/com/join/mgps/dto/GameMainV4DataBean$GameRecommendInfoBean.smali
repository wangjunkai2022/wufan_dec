.class public Lcom/join/mgps/dto/GameMainV4DataBean$GameRecommendInfoBean;
.super Ljava/lang/Object;
.source "GameMainV4DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameMainV4DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameRecommendInfoBean"
.end annotation


# instance fields
.field private game_id:Ljava/lang/String;

.field private game_pic:Ljava/lang/String;

.field private game_title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$GameRecommendInfoBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$GameRecommendInfoBean;->game_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$GameRecommendInfoBean;->game_title:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$GameRecommendInfoBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$GameRecommendInfoBean;->game_pic:Ljava/lang/String;

    return-void
.end method

.method public setGame_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$GameRecommendInfoBean;->game_title:Ljava/lang/String;

    return-void
.end method
