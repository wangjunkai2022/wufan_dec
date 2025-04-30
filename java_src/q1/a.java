package q1;

import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountResultBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountVoucher;
import com.join.mgps.dto.AccountVoucherGame;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.BluetoothHandleBlackListData;
import com.join.mgps.dto.CloudBackupsListBean;
import com.join.mgps.dto.CloudBackupsRecoverListBean;
import com.join.mgps.dto.ConfigMain;
import com.join.mgps.dto.CreateVipData;
import com.join.mgps.dto.FavoritesCenterData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.ForumResponseGame;
import com.join.mgps.dto.GameFromBooleanBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GameFromPopoWinBeanV2;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.JPushJoinDeviceResult;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.UploadResultMainBean;
import com.join.mgps.dto.UserHeadPortrait;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;
/* compiled from: IRpcAccountClient.java */
/* loaded from: classes4.dex */
public interface a {
    @FormUrlEncoded
    @POST("/user/v2/game_favorites/details/indexv2")
    Call<ForumResponseGame> A(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/v2/Check/regCodeState")
    Call<AccountResultMainBean<AccountLoginresultData>> B(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/send/send_mobile_code")
    Call<AccountResultMainBean<AccountLoginresultData>> C(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/upfile/upload_user_head_portrait")
    Call<AccountResultMainBean<AccountTokenSuccess>> D(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/dissubscribe/index")
    Call<GameFromBooleanBean> E(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/check_bind_mobile")
    Call<AccountResultMainBean<AccountTokenSuccess>> F(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/modify/first_modify_user_info")
    Call<AccountResultMainBean<AccountLoginresultData>> G(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/anonymous/first_modify_user_info")
    Call<AccountResultMainBean<AccountLoginresultData>> H(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/jpush/getPushStatus")
    Call<AccountResultMainBean<JPushJoinDeviceResult>> I(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/asclist/indexv2")
    Call<GameFromPopoWinBeanV2> J(@FieldMap Map<String, Object> map);

    @GET("/v16/backup/recover_recordparams")
    Call<AccountResultMainBean<CloudBackupsRecoverListBean>> K(@Query("uid") String str, @Query("token") String str2, @Query("rid") String str3);

    @FormUrlEncoded
    @POST("/user/tourist/prefect_info/indexv2")
    Call<AccountResultMainBean<AccountTokenSuccess>> L(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/bind_mobile")
    Call<AccountResultMainBean<AccountTokenSuccess>> M(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/register/third_way_register")
    Call<AccountResultMainBean<AccountLoginresultData<AccountBean>>> N(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/statelist/index")
    Call<GameFromPopoWinBean> O(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/subscribe/index")
    Call<GameFromBooleanBean> P(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/addto/index")
    Call<GameFromBooleanBean> Q(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/jpush/joinDevice")
    Call<AccountResultMainBean<JPushJoinDeviceResult>> R(@FieldMap Map<String, String> map);

    @GET("/v16/backup/record_listparams")
    Call<AccountResultMainBean<CloudBackupsListBean>> S(@Query("uid") String str, @Query("token") String str2);

    @FormUrlEncoded
    @POST("/user/send/send_mobile_codev2")
    Call<AccountResultMainBean<AccountTokenSuccess>> T(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/register/mobile_register")
    Call<AccountResultMainBean<AccountLoginresultData<AccountBean>>> U(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/del/index")
    Call<GameFromBooleanBean> V(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/configure/bluetooth_handle_black_list")
    Call<AccountResultMainBean<BluetoothHandleBlackListData>> W(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/usercenter/index")
    Call<ForumResponse<FavoritesCenterData>> X(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/modify/find_mobile_pass")
    Call<AccountResultMainBean<AccountTokenSuccess>> Y(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/modify/first_third_way_modify_user_info")
    Call<AccountResultMainBean<AccountLoginresultData>> Z(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/register")
    Call<AccountResultBean<AccountLoginresultData<AccountBean>>> a(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/modifyto/index")
    Call<GameFromBooleanBean> a0(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/logout")
    Call<AccountResultMainBean<AccountTokenSuccess>> b(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/modify/modify_user_infov3")
    Call<AccountResultMainBean<AccountTokenSuccess>> c(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/info/user_info")
    Call<AccountResultMainBean<AccountBean>> d(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/login/third_way_login")
    Call<AccountResultBean<AccountLoginresultData<AccountBean>>> e(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/wallet/coupon_game_info")
    Call<ResultMainBean<List<AccountVoucherGame>>> f(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/send/chk_mobile_code")
    Call<AccountResultMainBean<AccountTokenSuccess>> g(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/token/check_token")
    Call<AccountResultMainBean<AccountTokenSuccess>> h(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/send/send_mobile_code")
    Call<AccountResultMainBean<AccountTokenSuccess>> i(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/login/chk_token_expired")
    Call<GameWorldResponse<AccountResultMainBean>> j(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/login/mobile_login")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> k(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/wallet/coupon_info")
    Call<ResultMainBean<List<AccountVoucher>>> l(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/jpush/setPushStatus")
    Call<AccountResultMainBean<JPushJoinDeviceResult>> m(@FieldMap Map<String, String> map);

    @GET("/config/global_setting/index")
    Call<ForumResponse<ConfigMain>> n();

    @FormUrlEncoded
    @POST("/user/v2/anonymous/first_thrid_way_modify_user_info")
    Call<AccountResultMainBean<AccountLoginresultData>> o(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/create/index")
    Call<GameFromBooleanBean> p(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/rebind_mobile")
    Call<UploadResultMainBean<AccountTokenSuccess>> q(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/selflists/index")
    Call<GameFromPopoWinBean> r(@FieldMap Map<String, Object> map);

    @FormUrlEncoded
    @POST("/user/tourist/login")
    Call<AccountResultMainBean<AccountTokenSuccess>> s(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/info/get_user_head_portrait")
    Call<AccountResultMainBean<UserHeadPortrait>> t(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/modify/modify_set_pass")
    Call<AccountResultMainBean<AccountTokenSuccess>> u(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/modify/modify_pass")
    Call<AccountResultMainBean<AccountTokenSuccess>> v(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/gen_vip_order/create")
    Call<AccountResultMainBean<CreateVipData>> w(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/bind_open_id/third_way_id")
    Call<AccountResultMainBean<AccountLoginresultData>> x(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/rebind_mobile/chkcode")
    Call<AccountResultMainBean<AccountTokenSuccess>> y(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/user/v2/game_favorites/cancel/index")
    Call<GameFromBooleanBean> z(@FieldMap Map<String, Object> map);
}
