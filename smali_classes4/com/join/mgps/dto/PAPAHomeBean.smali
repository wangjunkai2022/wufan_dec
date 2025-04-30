.class public Lcom/join/mgps/dto/PAPAHomeBean;
.super Ljava/lang/Object;
.source "PAPAHomeBean.java"


# instance fields
.field private banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field public fast_entry:Lcom/join/mgps/dto/FastEntry;

.field private gamebroadcast:Lcom/join/mgps/dto/GamebroadcastBean;

.field private gameinteresting:Lcom/join/mgps/dto/GameinterestingBean;

.field private gamerecommend:Lcom/join/mgps/dto/GamerecommendBean;

.field private guessyoulike:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_online_game:Lcom/join/mgps/dto/GameinterestingBean;

.field private hotsinglegame:Lcom/join/mgps/dto/GameinterestingBean;

.field public new_daily_uv:I

.field private recently:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field

.field private toptip:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/join/mgps/dto/GamerecommendBean;Lcom/join/mgps/dto/GameinterestingBean;Lcom/join/mgps/dto/GamebroadcastBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;",
            "Lcom/join/mgps/dto/GamerecommendBean;",
            "Lcom/join/mgps/dto/GameinterestingBean;",
            "Lcom/join/mgps/dto/GamebroadcastBean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->banner:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/PAPAHomeBean;->recently:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/PAPAHomeBean;->guessyoulike:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/PAPAHomeBean;->toptip:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/PAPAHomeBean;->gamerecommend:Lcom/join/mgps/dto/GamerecommendBean;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/PAPAHomeBean;->gameinteresting:Lcom/join/mgps/dto/GameinterestingBean;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/PAPAHomeBean;->gamebroadcast:Lcom/join/mgps/dto/GamebroadcastBean;

    return-void
.end method


# virtual methods
.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getFast_entry()Lcom/join/mgps/dto/FastEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->fast_entry:Lcom/join/mgps/dto/FastEntry;

    return-object v0
.end method

.method public getGamebroadcast()Lcom/join/mgps/dto/GamebroadcastBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->gamebroadcast:Lcom/join/mgps/dto/GamebroadcastBean;

    return-object v0
.end method

.method public getGameinteresting()Lcom/join/mgps/dto/GameinterestingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->gameinteresting:Lcom/join/mgps/dto/GameinterestingBean;

    return-object v0
.end method

.method public getGamerecommend()Lcom/join/mgps/dto/GamerecommendBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->gamerecommend:Lcom/join/mgps/dto/GamerecommendBean;

    return-object v0
.end method

.method public getGuessyoulike()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->guessyoulike:Ljava/util/List;

    return-object v0
.end method

.method public getHot_online_game()Lcom/join/mgps/dto/GameinterestingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->hot_online_game:Lcom/join/mgps/dto/GameinterestingBean;

    return-object v0
.end method

.method public getHotsinglegame()Lcom/join/mgps/dto/GameinterestingBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->hotsinglegame:Lcom/join/mgps/dto/GameinterestingBean;

    return-object v0
.end method

.method public getNew_daily_uv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->new_daily_uv:I

    return v0
.end method

.method public getRecently()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->recently:Ljava/util/List;

    return-object v0
.end method

.method public getToptip()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBean;->toptip:Ljava/util/List;

    return-object v0
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->banner:Ljava/util/List;

    return-void
.end method

.method public setFast_entry(Lcom/join/mgps/dto/FastEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->fast_entry:Lcom/join/mgps/dto/FastEntry;

    return-void
.end method

.method public setGamebroadcast(Lcom/join/mgps/dto/GamebroadcastBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->gamebroadcast:Lcom/join/mgps/dto/GamebroadcastBean;

    return-void
.end method

.method public setGameinteresting(Lcom/join/mgps/dto/GameinterestingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->gameinteresting:Lcom/join/mgps/dto/GameinterestingBean;

    return-void
.end method

.method public setGamerecommend(Lcom/join/mgps/dto/GamerecommendBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->gamerecommend:Lcom/join/mgps/dto/GamerecommendBean;

    return-void
.end method

.method public setGuessyoulike(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->guessyoulike:Ljava/util/List;

    return-void
.end method

.method public setHot_online_game(Lcom/join/mgps/dto/GameinterestingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->hot_online_game:Lcom/join/mgps/dto/GameinterestingBean;

    return-void
.end method

.method public setHotsinglegame(Lcom/join/mgps/dto/GameinterestingBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->hotsinglegame:Lcom/join/mgps/dto/GameinterestingBean;

    return-void
.end method

.method public setNew_daily_uv(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->new_daily_uv:I

    return-void
.end method

.method public setRecently(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->recently:Ljava/util/List;

    return-void
.end method

.method public setToptip(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBean;->toptip:Ljava/util/List;

    return-void
.end method
