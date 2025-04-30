package q1;

import com.join.mgps.dto.AccountGetVoucherResult;
import com.join.mgps.dto.AccountPaBiBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PapayWalletResultMain;
import com.join.mgps.dto.PayActivityConfig;
import com.join.mgps.dto.ResultMyVoucherBean;
import com.join.mgps.dto.ResultMyVoucherGameBean;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;
/* compiled from: IRpcPawalletClient.java */
/* loaded from: classes4.dex */
public interface l {
    @FormUrlEncoded
    @POST("/wallet/coupon_get")
    Call<PapayVoucherResultMain<AccountGetVoucherResult>> a(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/wallet/coupon_recommend")
    Call<PapayVoucherResultMain<ResultMyVoucherBean>> b(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/wallet/red_envelope_info")
    Call<PapayWalletResultMain> c(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/wallet/wallet_info")
    Call<PapayWalletResultMain> d(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/wallet/wallet_welcome")
    Call<PapayVoucherResultMain<AccountPaBiBean>> e(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/wallet/coupon_game_info")
    Call<PapayVoucherResultMain<ResultMyVoucherGameBean>> f(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/wallet/pay_rebate_config")
    Call<PapayVoucherResultMain<PayActivityConfig>> g(@FieldMap Map<String, String> map);

    @FormUrlEncoded
    @POST("/wallet/coupon_info")
    Call<PapayVoucherResultMain<ResultMyVoucherBean>> l(@FieldMap Map<String, String> map);
}
