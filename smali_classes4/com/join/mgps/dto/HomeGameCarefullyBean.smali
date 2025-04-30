.class public Lcom/join/mgps/dto/HomeGameCarefullyBean;
.super Ljava/lang/Object;
.source "HomeGameCarefullyBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;
    }
.end annotation


# instance fields
.field before_refresh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;",
            ">;"
        }
    .end annotation
.end field

.field bespeak_list_url:Ljava/lang/String;

.field buy_advert_recommend:Lcom/join/mgps/dto/TodayWufunBroadcast;

.field carefully_special:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field editor_recommend_game:Lcom/join/mgps/dto/TodayWufunBroadcast;

.field game_bespeak_recommend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunBroadcast;",
            ">;"
        }
    .end annotation
.end field

.field game_category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field game_prefecture:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunEmuClassify;",
            ">;"
        }
    .end annotation
.end field

.field today_refresh:Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

.field visitor_recommend_game:Lcom/join/mgps/dto/TodayWufunBroadcast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBefore_refresh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->before_refresh:Ljava/util/List;

    return-object v0
.end method

.method public getBespeak_list_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->bespeak_list_url:Ljava/lang/String;

    return-object v0
.end method

.method public getBuy_advert_recommend()Lcom/join/mgps/dto/TodayWufunBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->buy_advert_recommend:Lcom/join/mgps/dto/TodayWufunBroadcast;

    return-object v0
.end method

.method public getCarefully_special()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->carefully_special:Ljava/util/List;

    return-object v0
.end method

.method public getEditor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->editor_recommend_game:Lcom/join/mgps/dto/TodayWufunBroadcast;

    return-object v0
.end method

.method public getGame_bespeak_recommend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunBroadcast;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->game_bespeak_recommend:Ljava/util/List;

    return-object v0
.end method

.method public getGame_category()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->game_category:Ljava/util/List;

    return-object v0
.end method

.method public getGame_prefecture()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunEmuClassify;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->game_prefecture:Ljava/util/List;

    return-object v0
.end method

.method public getToday_refresh()Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->today_refresh:Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    return-object v0
.end method

.method public getVisitor_recommend_game()Lcom/join/mgps/dto/TodayWufunBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->visitor_recommend_game:Lcom/join/mgps/dto/TodayWufunBroadcast;

    return-object v0
.end method

.method public setBefore_refresh(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->before_refresh:Ljava/util/List;

    return-void
.end method

.method public setBespeak_list_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->bespeak_list_url:Ljava/lang/String;

    return-void
.end method

.method public setBuy_advert_recommend(Lcom/join/mgps/dto/TodayWufunBroadcast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->buy_advert_recommend:Lcom/join/mgps/dto/TodayWufunBroadcast;

    return-void
.end method

.method public setCarefully_special(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->carefully_special:Ljava/util/List;

    return-void
.end method

.method public setEditor_recommend_game(Lcom/join/mgps/dto/TodayWufunBroadcast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->editor_recommend_game:Lcom/join/mgps/dto/TodayWufunBroadcast;

    return-void
.end method

.method public setGame_bespeak_recommend(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunBroadcast;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->game_bespeak_recommend:Ljava/util/List;

    return-void
.end method

.method public setGame_category(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->game_category:Ljava/util/List;

    return-void
.end method

.method public setGame_prefecture(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunEmuClassify;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->game_prefecture:Ljava/util/List;

    return-void
.end method

.method public setToday_refresh(Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->today_refresh:Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;

    return-void
.end method

.method public setVisitor_recommend_game(Lcom/join/mgps/dto/TodayWufunBroadcast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean;->visitor_recommend_game:Lcom/join/mgps/dto/TodayWufunBroadcast;

    return-void
.end method
