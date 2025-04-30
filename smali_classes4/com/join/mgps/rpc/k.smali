.class public interface abstract Lcom/join/mgps/rpc/k;
.super Ljava/lang/Object;
.source "RpcNetMatchClient.java"


# virtual methods
.method public abstract A(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NewGameDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v15/netbattle/welcome_in?game_id={gameId}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract B(JI)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldTrophy;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v14/gameworld/trophy_list?game_id={gameId}&limit={limit}"
    .end annotation
.end method

.method public abstract C(Ljava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "tuid"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleUserInfoResultBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/simple_user_info?game_id={gameId}&tuid={tuid}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract D(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/modify/find_mobile_pass"
    .end annotation
.end method

.method public abstract E(ILjava/lang/String;J)Lcom/join/mgps/dto/ResultArenaBean;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J)",
            "Lcom/join/mgps/dto/ResultArenaBean<",
            "Lcom/join/mgps/dto/BattleChallengeConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/create_room?uid={uid}&token={token}&game_id={game_id}"
    .end annotation
.end method

.method public abstract F(J)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GradeListData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v14/gameworld/grade_list?game_id={game_id}"
    .end annotation
.end method

.method public abstract G(J)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameWorldGlobalData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v14/gameworld/global_data?game_id={gameId}"
    .end annotation
.end method

.method public abstract H(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/message/read"
    .end annotation
.end method

.method public abstract I(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/message/read/money"
    .end annotation
.end method

.method public abstract J(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/InvitationPassBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/verify_invitation_code"
    .end annotation
.end method

.method public abstract K(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/InvitationPassBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/is_invitation_pass?game_id={gameId}&uid={uid}"
    .end annotation
.end method

.method public abstract L(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NewGameDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/new_game_data"
    .end annotation
.end method

.method public abstract M(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/ArchiveRecordBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/get_all_archive_record?game_id={gameId}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract N(Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleOnlineCount;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/get_online_count?game_id={gameId}"
    .end annotation
.end method

.method public abstract O(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CreateArchiveRecordBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/delete_archive_record"
    .end annotation
.end method

.method public abstract P(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultArenaBean<",
            "Lapp/mgsim/arena/ArenaLobbyServer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/login?uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract Q(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/InWorldDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/in_world"
    .end annotation
.end method

.method public abstract R(ILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/BattleStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v15/netbattle/start_battle?uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract S(Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameworldFightRecoderResultBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v15/netbattle/user_info?game_id={gameId}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract T(ILjava/lang/String;Ljava/lang/String;IJ)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "roomid"
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/Invite_start?uid={uid}&token={token}&game_id={gameId}&uid2={uid2}&roomid={roomid}"
    .end annotation
.end method

.method public abstract U(Ljava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "tuid"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleUserInfoResultBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/user_info_main?game_id={gameId}&tuid={tuid}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract V(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CloudStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v16/backup/completed"
    .end annotation
.end method

.method public abstract W(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GetPaiWeiPlayCodeBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/game_rank/generatePlayCode?uid={uid}&gameid={gameid}"
    .end annotation
.end method

.method public abstract X(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/ArenaLobbyPlayCheck;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/lobby_play_check?uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "a1"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "a2"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "a3"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaSelectServer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/select_lobby_server?a1={a1}&a2={a2}&a3={a3}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract Z(Ljava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "tuid"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleUserInfoResultBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/invite_user_info?game_id={gameId}&tuid={tuid}&uid={uid}&token={token}"
    .end annotation
.end method

.method public abstract a(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/register"
    .end annotation
.end method

.method public abstract a0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CreateArchiveRecordBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/create_archive_record"
    .end annotation
.end method

.method public abstract b(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/logout"
    .end annotation
.end method

.method public abstract b0(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/login/third_way_login"
    .end annotation
.end method

.method public abstract c(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/modify/modify_user_info"
    .end annotation
.end method

.method public abstract c0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/message/read/message_count"
    .end annotation
.end method

.method public abstract d(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/info"
    .end annotation
.end method

.method public abstract d0(ILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/ArenaWelcomeLobby;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/welcome_lobby?uid={uid}&token={token}&test_flag=1"
    .end annotation
.end method

.method public abstract e(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/register/third_way_register"
    .end annotation
.end method

.method public abstract e0(Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetGetBattleUdpPortBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/get_udp_test_server?game_id={gameId}"
    .end annotation
.end method

.method public abstract f(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleInviteBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/Invite_accept?uid={uid}&token={token}&game_id={gameId}"
    .end annotation
.end method

.method public abstract f0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CloudCreateInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v16/backup/create"
    .end annotation
.end method

.method public abstract g(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/send/chk_mobile_code"
    .end annotation
.end method

.method public abstract g0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameWorldWorship;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/worship_user"
    .end annotation
.end method

.method public abstract h(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/login/chk_token"
    .end annotation
.end method

.method public abstract h0(JIILjava/lang/String;I)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "game_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "start_rank"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "grade_number"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "rank_cond"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GradeRankListData;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v14/gameworld/get_grade_rank_list?game_id={game_id}&start_rank={start_rank}&grade_number={grade_number}&rank_cond={rank_cond}&limit={limit}"
    .end annotation
.end method

.method public abstract i(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/send/send_mobile_code"
    .end annotation
.end method

.method public abstract i0(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleStartBattleBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/start_battle_new?uid={uid}&token={token}&game_id={gameId}"
    .end annotation
.end method

.method public abstract j(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/AccountResultMainBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/login/chk_token_expired"
    .end annotation
.end method

.method public abstract j0(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/discover/home_page/index"
    .end annotation
.end method

.method public abstract k(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/login"
    .end annotation
.end method

.method public abstract k0(IJLjava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "game_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "role"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "room_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/ArenaWelcomeLobby;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/start_lobby_game?uid={uid}&game_id={game_id}&token={token}&role={role}&room_id={room_id}"
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "refresh"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "sign"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/game/ranking/detail"
    .end annotation
.end method

.method public abstract l0(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "role_name"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/WelcomeInDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/welcome_in?game_id={gameId}&uid={uid}&token={token}&role_name={role_name}"
    .end annotation
.end method

.method public abstract m(ILjava/lang/String;I)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/lately_game_list/index?uid={uid}&token={token}&pn={pn}"
    .end annotation
.end method

.method public abstract n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "refresh"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/game_rank?uid={uid}&token={token}&gameid={gameid}&refresh={refresh}"
    .end annotation
.end method

.method public abstract o(J)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldRealTimeWorshipBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/last_worship_message?game_id={gameId}"
    .end annotation
.end method

.method public abstract p(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v15/netbattle/get_match_available_server?uid={uid}&token={token}&game_id={gameId}"
    .end annotation
.end method

.method public abstract q(Ljava/util/Map;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/message/info"
    .end annotation
.end method

.method public abstract r(Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "game_ids"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaGameInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/lobby_game_info?game_ids={game_ids}"
    .end annotation
.end method

.method public abstract s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "sign"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GetPaiWeiPlayCodeBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/game/ranking/generatePlayCode"
    .end annotation
.end method

.method public abstract t(JIILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "to_uid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameWorldWorship;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v14/gameworld/worship_user?game_id={gameId}&uid={uid}&to_uid={to_uid}&token={token}"
    .end annotation
.end method

.method public abstract u(Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/home_page/home?uid={uid}"
    .end annotation
.end method

.method public abstract v()Lcom/join/mgps/dto/GameWorldResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PspBattleServer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/psp_battle_server"
    .end annotation
.end method

.method public abstract w(III)Lcom/join/mgps/dto/ResultResMainBean;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "rom_type"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "game_type"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "pn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/NewArenaGameListBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/game_list/index?rom_type={rom_type}&game_type={game_type}&pn={pn}"
    .end annotation
.end method

.method public abstract x(ILjava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleInviteBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/Invite_create?uid={uid}&token={token}&game_id={gameId}"
    .end annotation
.end method

.method public abstract y(JII)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Path;
            value = "gameId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "s_uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameWorldUserInfoWrap;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v14/gameworld/user_info?game_id={gameId}&uid={uid}&s_uid={s_uid}"
    .end annotation
.end method

.method public abstract z(ILjava/lang/String;)Lcom/join/mgps/dto/GameWorldResponse;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CloudList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v16/backup/record_list?uid={uid}&token={token}"
    .end annotation
.end method
