.class public interface abstract Lcom/join/mgps/rpc/d;
.super Ljava/lang/Object;
.source "RpcClient.java"


# virtual methods
.method public abstract A(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameOLDataBean<",
            "Lcom/join/mgps/dto/GameOLFirstBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/onlinegame/thefirst"
    .end annotation
.end method

.method public abstract A0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunTopic;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/today/topic_today"
    .end annotation
.end method

.method public abstract A1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSNKGameArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/scanning/matching"
    .end annotation
.end method

.method public abstract B(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomCentrebean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/personalcenter"
    .end annotation
.end method

.method public abstract B0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GameSortRequestBean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameSortBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gametypesort/indexv2"
    .end annotation
.end method

.method public abstract B1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SearchGameListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/search/integrated_game_list"
    .end annotation
.end method

.method public abstract C(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/BootPageRequestArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BootPageData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/boot/boot_page/index"
    .end annotation
.end method

.method public abstract C0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameDownInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game_down_load/down_info"
    .end annotation
.end method

.method public abstract C1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/APKVersionRequestargs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ApkVersionbean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/ver/check_battle_plugin_ver_so"
    .end annotation
.end method

.method public abstract D(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/add/gamefollow"
    .end annotation
.end method

.method public abstract D0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestBattlehallArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/BattlehallDatabean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/battle/battlehall"
    .end annotation
.end method

.method public abstract D1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SearchIntegratedBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/search/integrated_list"
    .end annotation
.end method

.method public abstract E(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MatchBattleManagementBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/battle/match_management_list"
    .end annotation
.end method

.method public abstract E0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumAreaBannerMessagesData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/community/areabanner"
    .end annotation
.end method

.method public abstract E1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameShareTag;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ResultValbean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/share/gamestartbootcommentadd"
    .end annotation
.end method

.method public abstract F(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_information_more_by_game_id"
    .end annotation
.end method

.method public abstract F0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameSignleCompanyListbean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/largesingle/company"
    .end annotation
.end method

.method public abstract F1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StandAloneListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/single_channel/thenew/index"
    .end annotation
.end method

.method public abstract G(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameMainV3DataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gamesurfacev3"
    .end annotation
.end method

.method public abstract G0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Ljava/util/ArrayList;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ShowViewDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/app/strategyinfov2"
    .end annotation
.end method

.method public abstract G1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/CollectionBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestCollectionArgs;",
            ">;)",
            "Lcom/join/mgps/dto/CollectionBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/collection/gamelist"
    .end annotation
.end method

.method public abstract H(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameFactoryListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_company_game_list"
    .end annotation
.end method

.method public abstract H0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/AppDataBackupBean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/recovergame"
    .end annotation
.end method

.method public abstract H1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/MessageRedPointBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v2/message/surplusunreadmessage"
    .end annotation
.end method

.method public abstract I(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/RecomeWifiDatabean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/home/recommendwifi"
    .end annotation
.end method

.method public abstract I0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestClassifyArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v2/game/gamelist"
    .end annotation
.end method

.method public abstract I1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/PAPAMainBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v5/home/homepage"
    .end annotation
.end method

.method public abstract J(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/PopupAdBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/advertisement/popupad"
    .end annotation
.end method

.method public abstract J0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GameDiscoverMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/GameDiscoverMainBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gamediscover"
    .end annotation
.end method

.method public abstract J1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RegisterRequestBean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentSendMessageResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/add/regpushdevice"
    .end annotation
.end method

.method public abstract K(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BaiduAdDataMain;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/app/baiduad"
    .end annotation
.end method

.method public abstract K0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/RecomDataAllBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
        value = "/home/float_ad_v3"
    .end annotation
.end method

.method public abstract K1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/SimulatorAreaRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/simulator/simulator_fba_index"
    .end annotation
.end method

.method public abstract L(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestTypePn;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/activity/recomend/RecomentBean1;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/game/gamerecommendsetup"
    .end annotation
.end method

.method public abstract L0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GiftPackageArgs;",
            ">;)",
            "Lcom/join/mgps/dto/GiftPackageBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gamegiftpackageownerlist"
    .end annotation
.end method

.method public abstract L1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/SimulatorAreaRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/simulator/simulator_gba_index"
    .end annotation
.end method

.method public abstract M(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameFactoryListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/single_channel/gamecompanygamelist"
    .end annotation
.end method

.method public abstract M0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/ClassifyGameBean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ClassfyTypeBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v2/game/gametypestate"
    .end annotation
.end method

.method public abstract M1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/SimulatorAreaRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/simulator/simulator_psp_index"
    .end annotation
.end method

.method public abstract N(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameListAndHeadAdAndCollectionInfoBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/largesingle/recommend"
    .end annotation
.end method

.method public abstract N0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/APKVersionRequestargs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/APKVersionMainBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/ver/chk_app_ver_so_v2"
    .end annotation
.end method

.method public abstract N1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/SimulatorAreaRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SimulatorAreaDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/simulator/simulator_fc_index"
    .end annotation
.end method

.method public abstract O(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestInfoIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInformationBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/information/infov2"
    .end annotation
.end method

.method public abstract O0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/add/gamefollow/unfollow"
    .end annotation
.end method

.method public abstract P(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameOLHeadAdBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/mycopperjumpinfo"
    .end annotation
.end method

.method public abstract P0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageInfoBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GiftPackageInfoArgs;",
            ">;)",
            "Lcom/join/mgps/dto/GiftPackageInfoBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gamegiftpackageinfo"
    .end annotation
.end method

.method public abstract Q(Lcom/join/mgps/dto/CommonRequestBeanInterface;)Lcom/join/mgps/dto/WarModuleBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBeanInterface;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
        value = "/battle/warmodulelist"
    .end annotation
.end method

.method public abstract Q0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/community/tag"
    .end annotation
.end method

.method public abstract R(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetailResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gameinfo"
    .end annotation
.end method

.method public abstract R0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/VipPopData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/app/vip_message"
    .end annotation
.end method

.method public abstract S(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameListAndHeadAdBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/largesingle/languecnv2"
    .end annotation
.end method

.method public abstract S0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/GamesurFaceMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;)",
            "Lcom/join/mgps/dto/GamesurFaceMainBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gamesurface"
    .end annotation
.end method

.method public abstract T(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetailResultBeanV3;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v5/game/gameinfo"
    .end annotation
.end method

.method public abstract T0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StandAloneListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/single_channel/recommend/index"
    .end annotation
.end method

.method public abstract U(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamedetialModleFourBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v5/game/gameinfo"
    .end annotation
.end method

.method public abstract U0(Lcom/join/mgps/dto/CommonRequestBeanInterface;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBeanInterface;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBeanInterface;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/StatisticMainBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/stdserver/api"
    .end annotation
.end method

.method public abstract V(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SNKGameInfoBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/scanning/setting"
    .end annotation
.end method

.method public abstract V0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameMainSimulatorResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/simulator/simulator_play_game_surface_state"
    .end annotation
.end method

.method public abstract W(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestUserCenterArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ResultValbean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/personal_center_prompt_title"
    .end annotation
.end method

.method public abstract W0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/CategoryBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Ljava/util/ArrayList;",
            ">;)",
            "Lcom/join/mgps/dto/CategoryBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gametypelist"
    .end annotation
.end method

.method public abstract X(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GamedetialMoreGiftData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_gift_more_by_game_id"
    .end annotation
.end method

.method public abstract X0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/HomeGameCarefullyBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/home/game_carefully"
    .end annotation
.end method

.method public abstract Y(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameOLDataBean<",
            "Lcom/join/mgps/dto/GameOLFirstBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/onlinegame/opentest"
    .end annotation
.end method

.method public abstract Y0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/advertisement/my_game_top_ad"
    .end annotation
.end method

.method public abstract Z(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;)Lcom/join/mgps/dto/ForumBannerBean$ForumBannerResponseBean;
    .param p1    # Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
        value = "/community/bannerv3"
    .end annotation
.end method

.method public abstract Z0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestUserCenterArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/UserCenterBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/personal_center_home_page/indexv2"
    .end annotation
.end method

.method public abstract a(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestUserCenterArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/UserCenterBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/personal_center/index"
    .end annotation
.end method

.method public abstract a0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/PayGameDetialBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_down_infov2"
    .end annotation
.end method

.method public abstract a1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameMainDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gamesurfacev3"
    .end annotation
.end method

.method public abstract b(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GamePariseRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PariseBackData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/postpraise"
    .end annotation
.end method

.method public abstract b0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GameReplyMessageListBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v2/message/replynoticemessagelist"
    .end annotation
.end method

.method public abstract b1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestTypePn;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/RankingItemDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/ranking/gamelists"
    .end annotation
.end method

.method public abstract c(Lcom/join/mgps/dto/CommonRequestBeanInterface;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBeanInterface;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBeanInterface;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MustPlayNetDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/home/willplay"
    .end annotation
.end method

.method public abstract c0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSimulatorArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/home/everydaynewgame"
    .end annotation
.end method

.method public abstract c1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/CollectionModuleBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestCollectionArgs;",
            ">;)",
            "Lcom/join/mgps/dto/CollectionModuleBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/collection/gamelist"
    .end annotation
.end method

.method public abstract d(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/user/favorite"
    .end annotation
.end method

.method public abstract d0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/add/gamebespeak"
    .end annotation
.end method

.method public abstract d1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestDownloadCenterArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ResponseDownloadCenterAd;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/advertisement/downloadcenterad/index"
    .end annotation
.end method

.method public abstract e(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/SearchAutoBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestKeywordArgs;",
            ">;)",
            "Lcom/join/mgps/dto/SearchAutoBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/search/integrated_auto"
    .end annotation
.end method

.method public abstract e0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/IgnoreNoticeRequestArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/app/vip_message_ignore"
    .end annotation
.end method

.method public abstract e1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/game/gamedowninfo"
    .end annotation
.end method

.method public abstract f(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GameInformationCommentRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/InformationCommentBack;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/collection/replycommentlist"
    .end annotation
.end method

.method public abstract f0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageOperationBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GiftPackageOperationArgs;",
            ">;)",
            "Lcom/join/mgps/dto/GiftPackageOperationBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gamegiftpackagereceive"
    .end annotation
.end method

.method public abstract f1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/AllAppId;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CheckAppVersionBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/game/gamever"
    .end annotation
.end method

.method public abstract g(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameListAndHeadAdBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/largesingle/crackv2"
    .end annotation
.end method

.method public abstract g0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestTypePn;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gamerankingv3"
    .end annotation
.end method

.method public abstract g1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceStateForMore;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gameopenserver"
    .end annotation
.end method

.method public abstract h(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameOLDataBean<",
            "Lcom/join/mgps/dto/GameOLNoOpenTestBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/onlinegame/notopentest"
    .end annotation
.end method

.method public abstract h0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenshortTabBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v2/game/gamescreenshot/getTypeList"
    .end annotation
.end method

.method public abstract h1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/SearchRecommendBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
        value = "/game/randomgame"
    .end annotation
.end method

.method public abstract i(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/WarIndexResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestWarIndexArgs;",
            ">;)",
            "Lcom/join/mgps/dto/WarIndexResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/WarIndexDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/battle/warindex"
    .end annotation
.end method

.method public abstract i0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcAndUidArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RewardBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/reward/copper/every_day_copper_receive_v2"
    .end annotation
.end method

.method public abstract i1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameOLDataBean<",
            "Lcom/join/mgps/dto/GameOLFirstBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/largesingle/large"
    .end annotation
.end method

.method public abstract j(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameOLDataBean<",
            "Lcom/join/mgps/dto/GameOLFirstBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/largesingle/languecn"
    .end annotation
.end method

.method public abstract j0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gamestrategypost"
    .end annotation
.end method

.method public abstract j1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSearchPageArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SearchPageBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/search/integrated_rand_game_favorites"
    .end annotation
.end method

.method public abstract k(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GameSortRequestBean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RankingDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_ranking_top_5"
    .end annotation
.end method

.method public abstract k0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GameInformationCommentRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/InformationCommentBack;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/information/replycommentlist"
    .end annotation
.end method

.method public abstract k1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestUidtagidTagdes;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ResultValbean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/share/gamestartbootcommenttagadd"
    .end annotation
.end method

.method public abstract l(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSearchPageArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SearchPageBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/search/integrated_index"
    .end annotation
.end method

.method public abstract l0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/SearchAppBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestKeywordArgs;",
            ">;)",
            "Lcom/join/mgps/dto/SearchAppBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/search/searchinfo"
    .end annotation
.end method

.method public abstract l1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/home/recommendlocation"
    .end annotation
.end method

.method public abstract m(Lcom/join/mgps/dto/CommonRequestBeanInterface;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBeanInterface;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBeanInterface;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gameuv"
    .end annotation
.end method

.method public abstract m0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TodayWufunBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/today/wufun_today"
    .end annotation
.end method

.method public abstract m1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/InformationSendRequestBean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/CommitContextDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/information/postcomment"
    .end annotation
.end method

.method public abstract n(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/CommitContextDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/postgamecomment"
    .end annotation
.end method

.method public abstract n0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSearchPageArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchPageBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/search/searchgamecount"
    .end annotation
.end method

.method public abstract n1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameShareData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/share/gamestartbootcommenttaglist"
    .end annotation
.end method

.method public abstract o(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/add/gamebespeak/unbespeak"
    .end annotation
.end method

.method public abstract o0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/advertisement/down_load_speed_tips_ad"
    .end annotation
.end method

.method public abstract o1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SearchPostsBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/search/integrated_posts_list"
    .end annotation
.end method

.method public abstract p(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_list_and_tag_relation"
    .end annotation
.end method

.method public abstract p0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/PariseRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PariseBackData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/information/postpraise"
    .end annotation
.end method

.method public abstract p1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameOLDataBean<",
            "Lcom/join/mgps/dto/GameOLFirstBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/largesingle/crack"
    .end annotation
.end method

.method public abstract q(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestArenaRoomListArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ArenaGameRoomListConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/battle/battle_room_game_list_cfg"
    .end annotation
.end method

.method public abstract q0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GameSortRequestBean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ClassifyBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/gametypelistv2/indexv2"
    .end annotation
.end method

.method public abstract q1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/single_channel/gamelistandtagrelation"
    .end annotation
.end method

.method public abstract r(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/SearchGameFavoriteListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v4/search/integrated_game_favorite_list"
    .end annotation
.end method

.method public abstract r0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestHandShankAdListArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/HandShankAdBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/advertisement/handle_cfg_ad"
    .end annotation
.end method

.method public abstract r1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/APKVersionRequestargs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/APKVersionMainBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/ver/chk_app_ver_so"
    .end annotation
.end method

.method public abstract s(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSimulatorArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/home/recentlygameother"
    .end annotation
.end method

.method public abstract s0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/SendAppinfoMainbean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentSendMessageResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/add/collectappinfo"
    .end annotation
.end method

.method public abstract s1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RecomRequestArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/MustPlayData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/home/willplay"
    .end annotation
.end method

.method public abstract t(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/onlinegame/gift"
    .end annotation
.end method

.method public abstract t0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/advertisement/game_sureface_bottom_adv3"
    .end annotation
.end method

.method public abstract t1(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/RequestAppDetialArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/DownDeductCoinResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_down_deduct_coin"
    .end annotation
.end method

.method public abstract u(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSiliencebean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ResultValbean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/app/silence_room_cfg"
    .end annotation
.end method

.method public abstract u0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/WufunMarketHomeBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/home/topindexv7"
    .end annotation
.end method

.method public abstract u1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/PariseRequest;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PariseBackData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/collection/postpraise"
    .end annotation
.end method

.method public abstract v(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/InformationMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnArgs;",
            ">;)",
            "Lcom/join/mgps/dto/InformationMainBean;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/information/listsv2"
    .end annotation
.end method

.method public abstract v0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/home/topindexv4"
    .end annotation
.end method

.method public abstract v1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameHeadAd;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v3/advertisement/game_start_up_ad/index"
    .end annotation
.end method

.method public abstract w(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestScreenshortListArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/screenshot/ScreenShortListItemBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/android/v2/game/gamescreenshot/index"
    .end annotation
.end method

.method public abstract w0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGoogleRankArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/AppBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/largesingle/game_google_ranking"
    .end annotation
.end method

.method public abstract w1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/InformationSendRequestBean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/InformationSendBack;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/collection/postcomment"
    .end annotation
.end method

.method public abstract x(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestSimulatorArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/EverydayNewGameResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/everydaynewgame"
    .end annotation
.end method

.method public abstract x0(Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerRequestBean;",
            ")",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/ForumBannerBean$ForumBannerDataBannerBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/community/forumbanner"
    .end annotation
.end method

.method public abstract x1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/SearchAppBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
        value = "/search/recommendgame"
    .end annotation
.end method

.method public abstract y(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/GameTopicBean;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTopicBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_topic"
    .end annotation
.end method

.method public abstract y0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestCommitArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/InformationCommentBack;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/replycommentlist"
    .end annotation
.end method

.method public abstract y1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestGameIdArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecomDatabean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/advertisement/down_load_center_ad"
    .end annotation
.end method

.method public abstract z(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestCompanyNameArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_list_and_company_name_relation"
    .end annotation
.end method

.method public abstract z0(Lcom/join/mgps/dto/RecomRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/RecomRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/RecomRequestBean<",
            "Lcom/join/mgps/dto/GameVerByBgRequestargs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameVerByBg;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/game/game_ver_by_pg"
    .end annotation
.end method

.method public abstract z1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;
    .param p1    # Lcom/join/mgps/dto/CommonRequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/CommonRequestBean<",
            "Lcom/join/mgps/dto/RequestPnAndPcArgs;",
            ">;)",
            "Lcom/join/mgps/dto/ResultMainBean<",
            "Lcom/join/mgps/dto/GameOLDataBean<",
            "Lcom/join/mgps/dto/GameOLFirstBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/largesingle/onthenew"
    .end annotation
.end method
