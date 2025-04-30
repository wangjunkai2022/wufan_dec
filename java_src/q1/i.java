package q1;

import com.join.mgps.activity.login.ChangeNiknameRequest;
import com.join.mgps.activity.login.ChuanglanRequest;
import com.join.mgps.activity.login.LoginResultMain;
import com.join.mgps.activity.login.LoginUserStatuDataBean;
import com.join.mgps.activity.login.LoginUserStatuRequest;
import com.join.mgps.activity.login.LoginjiguangRequest;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.RequestUserCenterArgs;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.UserCenterBean;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: IRpcLoginClient.java */
/* loaded from: classes4.dex */
public interface i {
    @POST("/v4/personal_center/index")
    Call<ResultMainBean<UserCenterBean>> a(@Body CommonRequestBean<RequestUserCenterArgs> commonRequestBean);

    @POST("/user/v4/login/flash")
    Call<LoginResultMain<AccountresultData<AccountBean>>> b(@Body ChuanglanRequest chuanglanRequest);

    @POST("/user/v3/nick_name/perfecting")
    Call<LoginResultMain<AccountresultData>> c(@Body ChangeNiknameRequest changeNiknameRequest);

    @POST("/user/v3/member_state/index")
    Call<LoginResultMain<LoginUserStatuDataBean>> d(@Body LoginUserStatuRequest loginUserStatuRequest);

    @POST("/user/v3/login/jpush")
    Call<LoginResultMain<AccountresultData<AccountBean>>> e(@Body LoginjiguangRequest loginjiguangRequest);
}
