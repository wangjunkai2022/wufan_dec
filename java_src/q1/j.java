package q1;

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
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
/* compiled from: IRpcNetMatchClient.java */
/* loaded from: classes4.dex */
public interface j {
    @GET("/v15/netbattle/welcome_in")
    Call<GameWorldResponse<NewGameDataBean>> A(@Query("gameId") String str, @Query("uid") int i2, @Query("token") String str2);

    @GET("/v14/gameworld/trophy_list")
    Call<GameWorldResponse<List<GameWorldTrophy>>> B(@Query("gameId") long j4, @Query("limit") int i2);

    @GET("/netbattle/simple_user_info")
    Call<GameWorldResponse<NetBattleUserInfoResultBean>> C(@Query("gameId") String str, @Query("tuid") int i2, @Query("uid") int i4, @Query("token") String str2);

    @FormUrlEncoded
    @POST("/v14/user/modify/find_mobile_pass")
    Call<AccountResultMainBean<AccountTokenSuccess>> D(@FieldMap Map<String, String> map);

    @GET("/lobby/create_room")
    Call<ResultArenaBean<BattleChallengeConfig>> E(@Query("uid") int i2, @Query("token") String str, @Query("game_id") long j4);

    @GET("/v14/gameworld/grade_list")
    Call<GameWorldResponse<GradeListData>> F(@Query("game_id") long j4);

    @GET("/v14/gameworld/global_data")
    Call<GameWorldResponse<GameWorldGlobalData>> G(@Query("gameId") long j4);

    @FormUrlEncoded
    @POST("/v14/message/read")
    Call<GameWorldResponse<GameDataBean>> H(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/message/read/money")
    Call<GameWorldResponse<GameDataBean>> I(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/gameworld/verify_invitation_code")
    Call<GameWorldResponse<InvitationPassBean>> J(@FieldMap Map<String, String> map);

    @GET("/v14/gameworld/is_invitation_pass")
    Call<GameWorldResponse<InvitationPassBean>> K(@Query("gameId") String str, @Query("uid") String str2);

    @FormUrlEncoded
    @POST("/v14/gameworld/new_game_data")
    Call<GameWorldResponse<NewGameDataBean>> L(@FieldMap Map<String, String> map);

    @GET("/v14/gameworld/get_all_archive_record")
    Call<GameWorldResponse<ArchiveRecordBean>> M(@Query("gameId") String str, @Query("uid") int i2, @Query("token") String str2);

    @GET("/netbattle/get_online_count")
    Call<GameWorldResponse<NetBattleOnlineCount>> N(@Query("gameId") String str);

    @FormUrlEncoded
    @POST("/v14/gameworld/delete_archive_record")
    Call<GameWorldResponse<CreateArchiveRecordBean>> O(@FieldMap Map<String, String> map);

    @GET("/lobby/login")
    Call<ResultArenaBean<ArenaLobbyServer>> P(@Query("uid") int i2, @Query("token") String str);

    @FormUrlEncoded
    @POST("/v14/gameworld/in_world")
    Call<GameWorldResponse<InWorldDataBean>> Q(@FieldMap Map<String, String> map);

    @GET("/v15/netbattle/start_battle")
    Call<GameWorldResponse<BattleStatus>> R(@Query("uid") int i2, @Query("token") String str);

    @GET("/v15/netbattle/user_info")
    Call<GameWorldResponse<GameworldFightRecoderResultBean>> S(@Query("gameId") String str, @Query("uid") int i2, @Query("token") String str2);

    @GET("/netbattle/Invite_start")
    Call<GameWorldResponse> T(@Query("uid") int i2, @Query("token") String str, @Query("gameId") String str2, @Query("uid") int i4, @Query("roomid") long j4);

    @GET("/netbattle/user_info_main")
    Call<GameWorldResponse<NetBattleUserInfoResultBean>> U(@Query("gameId") String str, @Query("tuid") int i2, @Query("uid") int i4, @Query("token") String str2);

    @FormUrlEncoded
    @POST("/v16/backup/completed")
    Call<GameWorldResponse<CloudStatus>> V(@FieldMap Map<String, String> map);

    @GET("/lobby/game_rank/generatePlayCode")
    Call<ResultResMainBean<GetPaiWeiPlayCodeBean>> W(@Query("uid") String str, @Query("gameid") String str2);

    @GET("/netbattle/lobby_play_check")
    Call<GameWorldResponse<ArenaLobbyPlayCheck>> X(@Query("uid") String str, @Query("token") String str2);

    @GET("/netbattle/select_lobby_server")
    Call<GameWorldResponse<List<ArenaSelectServer>>> Y(@Query("a1") String str, @Query("a2") String str2, @Query("a3") String str3, @Query("uid") int i2, @Query("token") String str4);

    @GET("/netbattle/invite_user_info")
    Call<GameWorldResponse<NetBattleUserInfoResultBean>> Z(@Query("gameId") String str, @Query("tuid") int i2, @Query("uid") int i4, @Query("token") String str2);

    @FormUrlEncoded
    @POST("/v14/user/register")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> a(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/gameworld/create_archive_record")
    Call<GameWorldResponse<CreateArchiveRecordBean>> a0(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/user/logout")
    Call<AccountResultMainBean<AccountTokenSuccess>> b(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/user/login/third_way_login")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> b0(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/user/modify/modify_user_info")
    Call<AccountResultMainBean<AccountTokenSuccess>> c(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/message/read/message_count")
    Call<GameWorldResponse<GameDataBean>> c0(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/user/info")
    Call<AccountResultMainBean<AccountBean>> d(@FieldMap Map<String, String> map);

    @GET("/netbattle/welcome_lobby")
    Call<GameWorldResponse<ArenaWelcomeLobby>> d0(@Query("uid") int i2, @Query("token") String str);

    @FormUrlEncoded
    @POST("/v14/user/register/third_way_register")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> e(@FieldMap Map<String, String> map);

    @GET("/netbattle/get_udp_test_server")
    Call<GameWorldResponse<NetGetBattleUdpPortBean>> e0(@Query("gameId") String str);

    @GET("/netbattle/Invite_accept")
    Call<GameWorldResponse<NetBattleInviteBean>> f(@Query("uid") int i2, @Query("token") String str, @Query("gameId") String str2);

    @FormUrlEncoded
    @POST("/v16/backup/create")
    Call<GameWorldResponse<CloudCreateInfo>> f0(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/user/send/chk_mobile_code")
    Call<AccountResultMainBean<AccountTokenSuccess>> g(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/gameworld/worship_user")
    Call<GameWorldResponse<GameWorldWorship>> g0(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/user/login/chk_token")
    Call<AccountResultMainBean<AccountTokenSuccess>> h(@FieldMap Map<String, String> map);

    @GET("/v14/gameworld/get_grade_rank_list")
    Call<GameWorldResponse<GradeRankListData>> h0(@Query("game_id") long j4, @Query("start_rank") int i2, @Query("grade_number") int i4, @Query("rank_cond") String str, @Query("limit") int i5);

    @FormUrlEncoded
    @POST("/v14/user/send/send_mobile_code")
    Call<AccountResultMainBean<AccountTokenSuccess>> i(@FieldMap Map<String, String> map);

    @GET("/netbattle/start_battle_new")
    Call<GameWorldResponse<NetBattleStartBattleBean>> i0(@Query("uid") int i2, @Query("token") String str, @Query("gameId") String str2);

    @FormUrlEncoded
    @POST("/v14/user/login/chk_token_expired")
    Call<GameWorldResponse<AccountResultMainBean>> j(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/discover/home_page/index")
    Call<GameWorldResponse<DiscoveryMainDataBean>> j0(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/v14/user/login")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> k(@FieldMap Map<String, String> map);

    @GET("/netbattle/start_lobby_game")
    Call<GameWorldResponse<ArenaWelcomeLobby>> k0(@Query("uid") int i2, @Query("game_id") long j4, @Query("token") String str, @Query("role") String str2, @Query("room_id") int i4);

    @GET("/v2/game/ranking/detail")
    Call<ResultResMainBean<PaiWeiDataBean>> l(@Query("uid") String str, @Query("token") String str2, @Query("gameid") String str3, @Query("refresh") String str4, @Query("sign") String str5);

    @GET("/v14/gameworld/welcome_in")
    Call<GameWorldResponse<WelcomeInDataBean>> l0(@Query("gameId") String str, @Query("uid") int i2, @Query("token") String str2, @Query("role_name") String str3);

    @GET("/lobby/lately_game_list/index")
    Call<ResultResMainBean<GameListBean>> m(@Query("uid") int i2, @Query("token") String str, @Query("pn") int i4);

    @GET("/lobby/game_rank")
    Call<ResultResMainBean<PaiWeiDataBean>> n(@Query("uid") String str, @Query("token") String str2, @Query("gameid") String str3, @Query("refresh") String str4);

    @GET("/v14/gameworld/last_worship_message")
    Call<GameWorldResponse<List<GameWorldRealTimeWorshipBean>>> o(@Query("gameId") long j4);

    @GET("/v15/netbattle/get_match_available_server")
    Call<GameWorldResponse<NetBattleGetMatchAvailableServerBean>> p(@Query("uid") int i2, @Query("token") String str, @Query("gameId") String str2);

    @FormUrlEncoded
    @POST("/v14/message/info")
    Call<GameWorldResponse<Message>> q(@FieldMap Map<String, String> map);

    @GET("/netbattle/lobby_game_info")
    Call<GameWorldResponse<List<ArenaGameInfo>>> r(@Query("game_ids") String str);

    @GET("/v2/game/ranking/generatePlayCode")
    Call<ResultResMainBean<GetPaiWeiPlayCodeBean>> s(@Query("uid") String str, @Query("gameid") String str2, @Query("token") String str3, @Query("sign") String str4);

    @GET("/v14/gameworld/worship_user")
    Call<GameWorldResponse<GameWorldWorship>> t(@Query("gameId") long j4, @Query("uid") int i2, @Query("to_uid") int i4, @Query("token") String str);

    @GET("/lobby/home_page/home")
    Call<ResultResMainBean<GameListBannerBean>> u(@Query("uid") String str);

    @GET("/netbattle/psp_battle_server")
    Call<GameWorldResponse<List<PspBattleServer>>> v();

    @GET("/lobby/game_list/index")
    Call<ResultResMainBean<NewArenaGameListBean>> w(@Query("rom_type") int i2, @Query("game_type") int i4, @Query("pn") int i5);

    @GET("/netbattle/Invite_create")
    Call<GameWorldResponse<NetBattleInviteBean>> x(@Query("uid") int i2, @Query("token") String str, @Query("gameId") String str2);

    @GET("/v14/gameworld/user_info")
    Call<GameWorldResponse<GameWorldUserInfoWrap>> y(@Query("gameId") long j4, @Query("uid") int i2, @Query("s_uid") int i4);

    @GET("/v16/backup/record_list")
    Call<GameWorldResponse<CloudList>> z(@Query("uid") int i2, @Query("token") String str);
}
