.class public interface abstract Lq1/j;
.super Ljava/lang/Object;
.source "IRpcNetMatchClient.java"


# virtual methods
.method public abstract A(Ljava/lang/String;ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NewGameDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v15/netbattle/welcome_in"
    .end annotation
.end method

.method public abstract B(JI)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldTrophy;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/trophy_list"
    .end annotation
.end method

.method public abstract C(Ljava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "tuid"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleUserInfoResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/simple_user_info"
    .end annotation
.end method

.method public abstract D(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/modify/find_mobile_pass"
    .end annotation
.end method

.method public abstract E(ILjava/lang/String;J)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultArenaBean<",
            "Lcom/join/mgps/dto/BattleChallengeConfig;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/create_room"
    .end annotation
.end method

.method public abstract F(J)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "game_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GradeListData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/grade_list"
    .end annotation
.end method

.method public abstract G(J)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameWorldGlobalData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/global_data"
    .end annotation
.end method

.method public abstract H(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/message/read"
    .end annotation
.end method

.method public abstract I(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/message/read/money"
    .end annotation
.end method

.method public abstract J(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/InvitationPassBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/verify_invitation_code"
    .end annotation
.end method

.method public abstract K(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/InvitationPassBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/is_invitation_pass"
    .end annotation
.end method

.method public abstract L(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NewGameDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/new_game_data"
    .end annotation
.end method

.method public abstract M(Ljava/lang/String;ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/ArchiveRecordBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/get_all_archive_record"
    .end annotation
.end method

.method public abstract N(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleOnlineCount;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/get_online_count"
    .end annotation
.end method

.method public abstract O(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CreateArchiveRecordBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/delete_archive_record"
    .end annotation
.end method

.method public abstract P(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultArenaBean<",
            "Lapp/mgsim/arena/ArenaLobbyServer;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/login"
    .end annotation
.end method

.method public abstract Q(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/InWorldDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/in_world"
    .end annotation
.end method

.method public abstract R(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/BattleStatus;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v15/netbattle/start_battle"
    .end annotation
.end method

.method public abstract S(Ljava/lang/String;ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameworldFightRecoderResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v15/netbattle/user_info"
    .end annotation
.end method

.method public abstract T(ILjava/lang/String;Ljava/lang/String;IJ)Lretrofit2/Call;
    .param p1    # I
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
            value = "gameId"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p5    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "roomid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/Invite_start"
    .end annotation
.end method

.method public abstract U(Ljava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "tuid"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleUserInfoResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/user_info_main"
    .end annotation
.end method

.method public abstract V(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CloudStatus;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v16/backup/completed"
    .end annotation
.end method

.method public abstract W(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GetPaiWeiPlayCodeBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/game_rank/generatePlayCode"
    .end annotation
.end method

.method public abstract X(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/ArenaLobbyPlayCheck;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/lobby_play_check"
    .end annotation
.end method

.method public abstract Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "a1"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "a2"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "a3"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaSelectServer;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/select_lobby_server"
    .end annotation
.end method

.method public abstract Z(Ljava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "tuid"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleUserInfoResultBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/invite_user_info"
    .end annotation
.end method

.method public abstract a(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/register"
    .end annotation
.end method

.method public abstract a0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CreateArchiveRecordBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/create_archive_record"
    .end annotation
.end method

.method public abstract b(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/logout"
    .end annotation
.end method

.method public abstract b0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/login/third_way_login"
    .end annotation
.end method

.method public abstract c(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/modify/modify_user_info"
    .end annotation
.end method

.method public abstract c0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/message/read/message_count"
    .end annotation
.end method

.method public abstract d(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/info"
    .end annotation
.end method

.method public abstract d0(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/ArenaWelcomeLobby;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/welcome_lobby"
    .end annotation
.end method

.method public abstract e(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/register/third_way_register"
    .end annotation
.end method

.method public abstract e0(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetGetBattleUdpPortBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/get_udp_test_server"
    .end annotation
.end method

.method public abstract f(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
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
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleInviteBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/Invite_accept"
    .end annotation
.end method

.method public abstract f0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CloudCreateInfo;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v16/backup/create"
    .end annotation
.end method

.method public abstract g(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/send/chk_mobile_code"
    .end annotation
.end method

.method public abstract g0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameWorldWorship;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/gameworld/worship_user"
    .end annotation
.end method

.method public abstract h(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/login/chk_token"
    .end annotation
.end method

.method public abstract h0(JIILjava/lang/String;I)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "game_id"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "start_rank"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "grade_number"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "rank_cond"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GradeRankListData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/get_grade_rank_list"
    .end annotation
.end method

.method public abstract i(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountTokenSuccess;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/send/send_mobile_code"
    .end annotation
.end method

.method public abstract i0(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
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
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleStartBattleBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/start_battle_new"
    .end annotation
.end method

.method public abstract j(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/AccountResultMainBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/login/chk_token_expired"
    .end annotation
.end method

.method public abstract j0(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/DiscoveryMainDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/discover/home_page/index"
    .end annotation
.end method

.method public abstract k(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/AccountResultMainBean<",
            "Lcom/join/mgps/dto/AccountresultData<",
            "Lcom/join/mgps/dto/AccountBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/user/login"
    .end annotation
.end method

.method public abstract k0(IJLjava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "game_id"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "role"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "room_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/ArenaWelcomeLobby;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/start_lobby_game"
    .end annotation
.end method

.method public abstract l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/game/ranking/detail"
    .end annotation
.end method

.method public abstract l0(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/WelcomeInDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/welcome_in"
    .end annotation
.end method

.method public abstract m(ILjava/lang/String;I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/lately_game_list/index"
    .end annotation
.end method

.method public abstract n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/game_rank"
    .end annotation
.end method

.method public abstract o(J)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameWorldRealTimeWorshipBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/last_worship_message"
    .end annotation
.end method

.method public abstract p(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
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
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleGetMatchAvailableServerBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v15/netbattle/get_match_available_server"
    .end annotation
.end method

.method public abstract q(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/Message;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v14/message/info"
    .end annotation
.end method

.method public abstract r(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "game_ids"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ArenaGameInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/lobby_game_info"
    .end annotation
.end method

.method public abstract s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
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
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GetPaiWeiPlayCodeBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v2/game/ranking/generatePlayCode"
    .end annotation
.end method

.method public abstract t(JIILjava/lang/String;)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "to_uid"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameWorldWorship;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/worship_user"
    .end annotation
.end method

.method public abstract u(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/home_page/home"
    .end annotation
.end method

.method public abstract v()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PspBattleServer;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/psp_battle_server"
    .end annotation
.end method

.method public abstract w(III)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "rom_type"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "game_type"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "pn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/NewArenaGameListBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/lobby/game_list/index"
    .end annotation
.end method

.method public abstract x(ILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
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
            value = "gameId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/NetBattleInviteBean;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/netbattle/Invite_create"
    .end annotation
.end method

.method public abstract y(JII)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "gameId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "s_uid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/GameWorldUserInfoWrap;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v14/gameworld/user_info"
    .end annotation
.end method

.method public abstract z(ILjava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "uid"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/join/mgps/dto/GameWorldResponse<",
            "Lcom/join/mgps/dto/CloudList;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v16/backup/record_list"
    .end annotation
.end method
