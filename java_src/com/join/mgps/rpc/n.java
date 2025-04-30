package com.join.mgps.rpc;

import com.join.mgps.dto.AccountGetVoucherResult;
import com.join.mgps.dto.AccountPaBiBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PapayWalletResultMain;
import com.join.mgps.dto.PayActivityConfig;
import com.join.mgps.dto.ResultMyVoucherBean;
import com.join.mgps.dto.ResultMyVoucherGameBean;
import java.util.Map;
import retrofit2.http.Body;
import retrofit2.http.POST;
/* compiled from: RpcPawalletClient.java */
/* loaded from: classes4.dex */
public interface n {
    @POST("/wallet/coupon_get")
    PapayVoucherResultMain<AccountGetVoucherResult> a(@Body Map<String, String> map);

    @POST("/wallet/coupon_recommend")
    PapayVoucherResultMain<ResultMyVoucherBean> b(@Body Map<String, String> map);

    @POST("/wallet/red_envelope_info")
    PapayWalletResultMain c(@Body Map<String, String> map);

    @POST("/wallet/wallet_info")
    PapayWalletResultMain d(@Body Map<String, String> map);

    @POST("/wallet/wallet_welcome")
    PapayVoucherResultMain<AccountPaBiBean> e(@Body Map<String, String> map);

    @POST("/wallet/coupon_game_info")
    PapayVoucherResultMain<ResultMyVoucherGameBean> f(@Body Map<String, String> map);

    @POST("/wallet/pay_rebate_config")
    PapayVoucherResultMain<PayActivityConfig> g(@Body Map<String, String> map);

    @POST("/wallet/coupon_info")
    PapayVoucherResultMain<ResultMyVoucherBean> l(@Body Map<String, String> map);
}
