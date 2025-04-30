package com.join.mgps.rpc;

import app.mgsim.arena.ArenaLobbyServer;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.ArchiveRecordBean;
import com.join.mgps.dto.ArenaGameInfo;
import com.join.mgps.dto.ArenaLobbyPlayCheck;
import com.join.mgps.dto.ArenaSelectServer;
import com.join.mgps.dto.ArenaWelcomeLobby;
import com.join.mgps.dto.BattleChallengeConfig;
import com.join.mgps.dto.BattleStatus;
import com.join.mgps.dto.CloudCreateInfo;
import com.join.mgps.dto.CloudList;
import com.join.mgps.dto.CloudStatus;
import com.join.mgps.dto.CreateArchiveRecordBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.GameDataBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.GameListBean;
import com.join.mgps.dto.GameWorldGlobalData;
import com.join.mgps.dto.GameWorldRealTimeWorshipBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.GameWorldTrophy;
import com.join.mgps.dto.GameWorldUserInfoWrap;
import com.join.mgps.dto.GameWorldWorship;
import com.join.mgps.dto.GameworldFightRecoderResultBean;
import com.join.mgps.dto.GetPaiWeiPlayCodeBean;
import com.join.mgps.dto.GradeListData;
import com.join.mgps.dto.GradeRankListData;
import com.join.mgps.dto.InWorldDataBean;
import com.join.mgps.dto.InvitationPassBean;
import com.join.mgps.dto.Message;
import com.join.mgps.dto.NetBattleGetMatchAvailableServerBean;
import com.join.mgps.dto.NetBattleInviteBean;
import com.join.mgps.dto.NetBattleOnlineCount;
import com.join.mgps.dto.NetBattleStartBattleBean;
import com.join.mgps.dto.NetBattleUserInfoResultBean;
import com.join.mgps.dto.NetGetBattleUdpPortBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.NewGameDataBean;
import com.join.mgps.dto.PspBattleServer;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.dto.WelcomeInDataBean;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.util.List;
import java.util.Map;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
/* compiled from: RpcNetMatchClient.java */
/* loaded from: classes4.dex */
public interface k {
    @GET("/v15/netbattle/welcome_in?game_id={gameId}&uid={uid}&token={token}")
    GameWorldResponse<NewGameDataBean> A(@Path("gameId") String str, @Path("uid") int i2, @Path("token") String str2);

    @GET("v14/gameworld/trophy_list?game_id={gameId}&limit={limit}")
    GameWorldResponse<List<GameWorldTrophy>> B(@Path("gameId") long j4, @Path("limit") int i2);

    @GET("/netbattle/simple_user_info?game_id={gameId}&tuid={tuid}&uid={uid}&token={token}")
    GameWorldResponse<NetBattleUserInfoResultBean> C(@Path("gameId") String str, @Path("tuid") int i2, @Path("uid") int i4, @Path("token") String str2);

    @POST("/v14/user/modify/find_mobile_pass")
    AccountResultMainBean<AccountTokenSuccess> D(@Body Map<String, String> map);

    @GET("/lobby/create_room?uid={uid}&token={token}&game_id={game_id}")
    ResultArenaBean<BattleChallengeConfig> E(@Path("uid") int i2, @Path("token") String str, @Path("game_id") long j4);

    @GET("v14/gameworld/grade_list?game_id={game_id}")
    GameWorldResponse<GradeListData> F(@Path("game_id") long j4);

    @GET("v14/gameworld/global_data?game_id={gameId}")
    GameWorldResponse<GameWorldGlobalData> G(@Path("gameId") long j4);

    @POST("/v14/message/read")
    GameWorldResponse<GameDataBean> H(@Body Map<String, String> map);

    @POST("/v14/message/read/money")
    GameWorldResponse<GameDataBean> I(@Body Map<String, String> map);

    @POST("/v14/gameworld/verify_invitation_code")
    GameWorldResponse<InvitationPassBean> J(@Body Map<String, String> map);

    @GET("/v14/gameworld/is_invitation_pass?game_id={gameId}&uid={uid}")
    GameWorldResponse<InvitationPassBean> K(@Path("gameId") String str, @Path("uid") String str2);

    @POST("/v14/gameworld/new_game_data")
    GameWorldResponse<NewGameDataBean> L(@Body Map<String, String> map);

    @GET("/v14/gameworld/get_all_archive_record?game_id={gameId}&uid={uid}&token={token}")
    GameWorldResponse<ArchiveRecordBean> M(@Path("gameId") String str, @Path("uid") int i2, @Path("token") String str2);

    @GET("/netbattle/get_online_count?game_id={gameId}")
    GameWorldResponse<NetBattleOnlineCount> N(@Path("gameId") String str);

    @POST("/v14/gameworld/delete_archive_record")
    GameWorldResponse<CreateArchiveRecordBean> O(@Body Map<String, String> map);

    @GET("/lobby/login?uid={uid}&token={token}")
    ResultArenaBean<ArenaLobbyServer> P(@Path("uid") int i2, @Path("token") String str);

    @POST("/v14/gameworld/in_world")
    GameWorldResponse<InWorldDataBean> Q(@Body Map<String, String> map);

    @GET("/v15/netbattle/start_battle?uid={uid}&token={token}")
    GameWorldResponse<BattleStatus> R(@Path("uid") int i2, @Path("token") String str);

    @GET("/v15/netbattle/user_info?game_id={gameId}&uid={uid}&token={token}")
    GameWorldResponse<GameworldFightRecoderResultBean> S(@Path("gameId") String str, @Path("uid") int i2, @Path("token") String str2);

    @GET("/netbattle/Invite_start?uid={uid}&token={token}&game_id={gameId}&uid2={uid2}&roomid={roomid}")
    GameWorldResponse T(@Path("uid") int i2, @Path("token") String str, @Path("gameId") String str2, @Path("uid") int i4, @Path("roomid") long j4);

    @GET("/netbattle/user_info_main?game_id={gameId}&tuid={tuid}&uid={uid}&token={token}")
    GameWorldResponse<NetBattleUserInfoResultBean> U(@Path("gameId") String str, @Path("tuid") int i2, @Path("uid") int i4, @Path("token") String str2);

    @POST("/v16/backup/completed")
    GameWorldResponse<CloudStatus> V(@Body Map<String, String> map);

    @GET("/lobby/game_rank/generatePlayCode?uid={uid}&gameid={gameid}")
    ResultResMainBean<GetPaiWeiPlayCodeBean> W(@Path("uid") String str, @Path("gameid") String str2);

    @GET("/netbattle/lobby_play_check?uid={uid}&token={token}")
    GameWorldResponse<ArenaLobbyPlayCheck> X(@Path("uid") String str, @Path("token") String str2);

    @GET("/netbattle/select_lobby_server?a1={a1}&a2={a2}&a3={a3}&uid={uid}&token={token}")
    GameWorldResponse<List<ArenaSelectServer>> Y(@Path("a1") String str, @Path("a2") String str2, @Path("a3") String str3, @Path("uid") int i2, @Path("token") String str4);

    @GET("/netbattle/invite_user_info?game_id={gameId}&tuid={tuid}&uid={uid}&token={token}")
    GameWorldResponse<NetBattleUserInfoResultBean> Z(@Path("gameId") String str, @Path("tuid") int i2, @Path("uid") int i4, @Path("token") String str2);

    @POST("/v14/user/register")
    AccountResultMainBean<AccountresultData<AccountBean>> a(@Body Map<String, String> map);

    @POST("/v14/gameworld/create_archive_record")
    GameWorldResponse<CreateArchiveRecordBean> a0(@Body Map<String, String> map);

    @POST("/v14/user/logout")
    AccountResultMainBean<AccountTokenSuccess> b(@Body Map<String, String> map);

    @POST("/v14/user/login/third_way_login")
    AccountResultMainBean<AccountresultData<AccountBean>> b0(@Body Map<String, String> map);

    @POST("/v14/user/modify/modify_user_info")
    AccountResultMainBean<AccountTokenSuccess> c(@Body Map<String, String> map);

    @POST("/v14/message/read/message_count")
    GameWorldResponse<GameDataBean> c0(@Body Map<String, String> map);

    @POST("/v14/user/info")
    AccountResultMainBean<AccountBean> d(@Body Map<String, String> map);

    @GET("/netbattle/welcome_lobby?uid={uid}&token={token}&test_flag=1")
    GameWorldResponse<ArenaWelcomeLobby> d0(@Path("uid") int i2, @Path("token") String str);

    @POST("/v14/user/register/third_way_register")
    AccountResultMainBean<AccountresultData<AccountBean>> e(@Body Map<String, String> map);

    @GET("/netbattle/get_udp_test_server?game_id={gameId}")
    GameWorldResponse<NetGetBattleUdpPortBean> e0(@Path("gameId") String str);

    @GET("/netbattle/Invite_accept?uid={uid}&token={token}&game_id={gameId}")
    GameWorldResponse<NetBattleInviteBean> f(@Path("uid") int i2, @Path("token") String str, @Path("gameId") String str2);

    @POST("/v16/backup/create")
    GameWorldResponse<CloudCreateInfo> f0(@Body Map<String, String> map);

    @POST("/v14/user/send/chk_mobile_code")
    AccountResultMainBean<AccountTokenSuccess> g(@Body Map<String, String> map);

    @POST("/v14/gameworld/worship_user")
    GameWorldResponse<GameWorldWorship> g0(@Body Map<String, String> map);

    @POST("/v14/user/login/chk_token")
    AccountResultMainBean<AccountTokenSuccess> h(@Body Map<String, String> map);

    @GET("v14/gameworld/get_grade_rank_list?game_id={game_id}&start_rank={start_rank}&grade_number={grade_number}&rank_cond={rank_cond}&limit={limit}")
    GameWorldResponse<GradeRankListData> h0(@Path("game_id") long j4, @Path("start_rank") int i2, @Path("grade_number") int i4, @Path("rank_cond") String str, @Path("limit") int i5);

    @POST("/v14/user/send/send_mobile_code")
    AccountResultMainBean<AccountTokenSuccess> i(@Body Map<String, String> map);

    @GET("/netbattle/start_battle_new?uid={uid}&token={token}&game_id={gameId}")
    GameWorldResponse<NetBattleStartBattleBean> i0(@Path("uid") int i2, @Path("token") String str, @Path("gameId") String str2);

    @POST("/v14/user/login/chk_token_expired")
    GameWorldResponse<AccountResultMainBean> j(@Body Map<String, String> map);

    @POST("/discover/home_page/index")
    GameWorldResponse<DiscoveryMainDataBean> j0(@Body Map<String, String> map);

    @POST("/v14/user/login")
    AccountResultMainBean<AccountresultData<AccountBean>> k(@Body Map<String, String> map);

    @GET("/netbattle/start_lobby_game?uid={uid}&game_id={game_id}&token={token}&role={role}&room_id={room_id}")
    GameWorldResponse<ArenaWelcomeLobby> k0(@Path("uid") int i2, @Path("game_id") long j4, @Path("token") String str, @Path("role") String str2, @Path("room_id") int i4);

    @GET("/v2/game/ranking/detail")
    ResultResMainBean<PaiWeiDataBean> l(@Query("uid") String str, @Query("token") String str2, @Query("gameid") String str3, @Query("refresh") String str4, @Query("sign") String str5);

    @GET("/v14/gameworld/welcome_in?game_id={gameId}&uid={uid}&token={token}&role_name={role_name}")
    GameWorldResponse<WelcomeInDataBean> l0(@Path("gameId") String str, @Path("uid") int i2, @Path("token") String str2, @Path("role_name") String str3);

    @GET("/lobby/lately_game_list/index?uid={uid}&token={token}&pn={pn}")
    ResultResMainBean<GameListBean> m(@Path("uid") int i2, @Path("token") String str, @Path("pn") int i4);

    @GET("/lobby/game_rank?uid={uid}&token={token}&gameid={gameid}&refresh={refresh}")
    ResultResMainBean<PaiWeiDataBean> n(@Path("uid") String str, @Path("token") String str2, @Path("gameid") String str3, @Path("refresh") String str4);

    @GET("/v14/gameworld/last_worship_message?game_id={gameId}")
    GameWorldResponse<List<GameWorldRealTimeWorshipBean>> o(@Path("gameId") long j4);

    @GET("/v15/netbattle/get_match_available_server?uid={uid}&token={token}&game_id={gameId}")
    GameWorldResponse<NetBattleGetMatchAvailableServerBean> p(@Path("uid") int i2, @Path("token") String str, @Path("gameId") String str2);

    @POST("/v14/message/info")
    GameWorldResponse<Message> q(@Body Map<String, String> map);

    @GET("/netbattle/lobby_game_info?game_ids={game_ids}")
    GameWorldResponse<List<ArenaGameInfo>> r(@Path("game_ids") String str);

    @GET("/v2/game/ranking/generatePlayCode")
    ResultResMainBean<GetPaiWeiPlayCodeBean> s(@Query("uid") String str, @Query("gameid") String str2, @Query("token") String str3, @Query("sign") String str4);

    @GET("v14/gameworld/worship_user?game_id={gameId}&uid={uid}&to_uid={to_uid}&token={token}")
    GameWorldResponse<GameWorldWorship> t(@Path("gameId") long j4, @Path("uid") int i2, @Path("to_uid") int i4, @Path("token") String str);

    @GET("/lobby/home_page/home?uid={uid}")
    ResultResMainBean<GameListBannerBean> u(@Path("uid") String str);

    @GET("/netbattle/psp_battle_server")
    GameWorldResponse<List<PspBattleServer>> v();

    @GET("/lobby/game_list/index?rom_type={rom_type}&game_type={game_type}&pn={pn}")
    ResultResMainBean<NewArenaGameListBean> w(@Path("rom_type") int i2, @Path("game_type") int i4, @Path("pn") int i5);

    @GET("/netbattle/Invite_create?uid={uid}&token={token}&game_id={gameId}")
    GameWorldResponse<NetBattleInviteBean> x(@Path("uid") int i2, @Path("token") String str, @Path("gameId") String str2);

    @GET("v14/gameworld/user_info?game_id={gameId}&uid={uid}&s_uid={s_uid}")
    GameWorldResponse<GameWorldUserInfoWrap> y(@Path("gameId") long j4, @Path("uid") int i2, @Path("s_uid") int i4);

    @GET("/v16/backup/record_list?uid={uid}&token={token}")
    GameWorldResponse<CloudList> z(@Path("uid") int i2, @Path("token") String str);
}
