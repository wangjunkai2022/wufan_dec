.class public Lcom/join/mgps/dto/GameworldFightRecoderResultBean;
.super Ljava/lang/Object;
.source "GameworldFightRecoderResultBean.java"


# instance fields
.field private hero_rank:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldHeroRankBean;",
            ">;"
        }
    .end annotation
.end field

.field private user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldHeroRankBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameworldFightRecoderResultBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/GameworldFightRecoderResultBean;->hero_rank:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHero_rank()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldHeroRankBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameworldFightRecoderResultBean;->hero_rank:Ljava/util/List;

    return-object v0
.end method

.method public getUser_info()Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameworldFightRecoderResultBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    return-object v0
.end method

.method public setHero_rank(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldHeroRankBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameworldFightRecoderResultBean;->hero_rank:Ljava/util/List;

    return-void
.end method

.method public setUser_info(Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameworldFightRecoderResultBean;->user_info:Lcom/join/mgps/dto/GameWorldFightRecoderUserInfoBean;

    return-void
.end method
