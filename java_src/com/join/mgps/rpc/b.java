package com.join.mgps.rpc;

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
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
/* compiled from: RpcAccountClient.java */
/* loaded from: classes4.dex */
public interface b {
    @POST("/user/v2/game_favorites/details/indexv2")
    ForumResponseGame A(@Body Map<String, Object> map);

    @POST("/user/v2/Check/regCodeState")
    AccountResultMainBean<AccountLoginresultData> B(@Body Map<String, String> map);

    @POST("/user/v2/send/send_mobile_code")
    AccountResultMainBean<AccountLoginresultData> C(@Body Map<String, String> map);

    @POST("/user/upfile/upload_user_head_portrait")
    AccountResultMainBean<AccountTokenSuccess> D(@Body Map<String, String> map);

    @POST("/user/v2/game_favorites/dissubscribe/index")
    GameFromBooleanBean E(@Body Map<String, Object> map);

    @POST("/user/check_bind_mobile")
    AccountResultMainBean<AccountTokenSuccess> F(@Body Map<String, String> map);

    @POST("/user/v2/modify/first_modify_user_info")
    AccountResultMainBean<AccountLoginresultData> G(@Body Map<String, String> map);

    @POST("/user/v2/anonymous/first_modify_user_info")
    AccountResultMainBean<AccountLoginresultData> H(@Body Map<String, String> map);

    @POST("/user/jpush/getPushStatus")
    AccountResultMainBean<JPushJoinDeviceResult> I(@Body Map<String, String> map);

    @POST("/user/v2/game_favorites/asclist/indexv2")
    GameFromPopoWinBeanV2 J(@Body Map<String, Object> map);

    @GET("/v16/backup/recover_record?uid={uid}&token={token}&rid={rid}")
    AccountResultMainBean<CloudBackupsRecoverListBean> K(@Path("uid") String str, @Path("token") String str2, @Path("rid") String str3);

    @POST("/user/tourist/prefect_info/indexv2")
    AccountResultMainBean<AccountTokenSuccess> L(@Body Map<String, String> map);

    @POST("/user/bind_mobile")
    AccountResultMainBean<AccountTokenSuccess> M(@Body Map<String, String> map);

    @POST("/user/v2/register/third_way_register")
    AccountResultMainBean<AccountLoginresultData<AccountBean>> N(@Body Map<String, String> map);

    @POST("/user/v2/game_favorites/statelist/index")
    GameFromPopoWinBean O(@Body Map<String, Object> map);

    @POST("/user/v2/game_favorites/subscribe/index")
    GameFromBooleanBean P(@Body Map<String, Object> map);

    @POST("/user/v2/game_favorites/addto/index")
    GameFromBooleanBean Q(@Body Map<String, Object> map);

    @POST("/user/jpush/joinDevice")
    AccountResultMainBean<JPushJoinDeviceResult> R(@Body Map<String, String> map);

    @GET("/v16/backup/record_list?uid={uid}&token={token}")
    AccountResultMainBean<CloudBackupsListBean> S(@Path("uid") String str, @Path("token") String str2);

    @POST("/user/send/send_mobile_codev2")
    AccountResultMainBean<AccountTokenSuccess> T(@Body Map<String, String> map);

    @POST("/user/v2/register/mobile_register")
    AccountResultMainBean<AccountLoginresultData<AccountBean>> U(@Body Map<String, String> map);

    @POST("/user/v2/game_favorites/del/index")
    GameFromBooleanBean V(@Body Map<String, Object> map);

    @POST("/user/configure/bluetooth_handle_black_list")
    AccountResultMainBean<BluetoothHandleBlackListData> W(@Body Map<String, String> map);

    @POST("/user/v2/game_favorites/usercenter/index")
    ForumResponse<FavoritesCenterData> X(@Body Map<String, Object> map);

    @POST("/user/modify/find_mobile_pass")
    AccountResultMainBean<AccountTokenSuccess> Y(@Body Map<String, String> map);

    @POST("/user/v2/modify/first_third_way_modify_user_info")
    AccountResultMainBean<AccountLoginresultData> Z(@Body Map<String, String> map);

    @POST("/user/register")
    AccountResultBean<AccountLoginresultData<AccountBean>> a(@Body Map<String, String> map);

    @POST("/user/v2/game_favorites/modifyto/index")
    GameFromBooleanBean a0(@Body Map<String, Object> map);

    @POST("/user/logout")
    AccountResultMainBean<AccountTokenSuccess> b(@Body Map<String, String> map);

    @POST("/user/modify/modify_user_infov3")
    AccountResultMainBean<AccountTokenSuccess> c(@Body Map<String, String> map);

    @POST("/user/v2/info/user_info")
    AccountResultMainBean<AccountBean> d(@Body Map<String, String> map);

    @POST("/user/v2/login/third_way_login")
    AccountResultBean<AccountLoginresultData<AccountBean>> e(@Body Map<String, String> map);

    @POST("/wallet/coupon_game_info")
    ResultMainBean<List<AccountVoucherGame>> f(@Body Map<String, String> map);

    @POST("/user/send/chk_mobile_code")
    AccountResultMainBean<AccountTokenSuccess> g(@Body Map<String, String> map);

    @POST("/user/token/check_token")
    AccountResultMainBean<AccountTokenSuccess> h(@Body Map<String, String> map);

    @POST("/user/send/send_mobile_code")
    AccountResultMainBean<AccountTokenSuccess> i(@Body Map<String, String> map);

    @POST("/user/login/chk_token_expired")
    GameWorldResponse<AccountResultMainBean> j(@Body Map<String, String> map);

    @POST("/user/v2/login/mobile_login")
    AccountResultMainBean<AccountresultData<AccountBean>> k(@Body Map<String, String> map);

    @POST("/wallet/coupon_info")
    ResultMainBean<List<AccountVoucher>> l(@Body Map<String, String> map);

    @POST("/user/jpush/setPushStatus")
    AccountResultMainBean<JPushJoinDeviceResult> m(@Body Map<String, String> map);

    @GET("/config/global_setting/index")
    ForumResponse<ConfigMain> n();

    @POST("/user/v2/anonymous/first_thrid_way_modify_user_info")
    AccountResultMainBean<AccountLoginresultData> o(@Body Map<String, String> map);

    @POST("/user/v2/game_favorites/create/index")
    GameFromBooleanBean p(@Body Map<String, Object> map);

    @POST("/user/rebind_mobile")
    UploadResultMainBean<AccountTokenSuccess> q(@Body Map<String, String> map);

    @POST("/user/v2/game_favorites/selflists/index")
    GameFromPopoWinBean r(@Body Map<String, Object> map);

    @POST("/user/tourist/login")
    AccountResultMainBean<AccountTokenSuccess> s(@Body Map<String, String> map);

    @POST("/user/info/get_user_head_portrait")
    AccountResultMainBean<UserHeadPortrait> t(@Body Map<String, String> map);

    @POST("/user/modify/modify_set_pass")
    AccountResultMainBean<AccountTokenSuccess> u(@Body Map<String, String> map);

    @POST("/user/modify/modify_pass")
    AccountResultMainBean<AccountTokenSuccess> v(@Body Map<String, String> map);

    @POST("/user/gen_vip_order/create")
    AccountResultMainBean<CreateVipData> w(@Body Map<String, String> map);

    @POST("/user/v2/bind_open_id/third_way_id")
    AccountResultMainBean<AccountLoginresultData> x(@Body Map<String, String> map);

    @POST("/user/rebind_mobile/chkcode")
    AccountResultMainBean<AccountTokenSuccess> y(@Body Map<String, String> map);

    @POST("/user/v2/game_favorites/cancel/index")
    GameFromBooleanBean z(@Body Map<String, Object> map);
}
