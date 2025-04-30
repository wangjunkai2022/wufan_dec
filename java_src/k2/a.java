package k2;

import com.join.mgps.Util.d2;
import com.join.mgps.dto.AccountBean;
import com.umeng.analytics.pro.ai;
import com.wufan.user.service.protobuf.h;
import com.wufan.user.service.protobuf.l0;
import org.json.JSONObject;
/* compiled from: BeanUtil.java */
/* loaded from: classes2.dex */
public class a {
    public static l0 a(AccountBean accountBean) {
        l0.b c5 = l0.c5();
        c5.n4(accountBean.getUid());
        c5.D3(accountBean.getAccount());
        c5.c4(c5.M1());
        c5.g4(accountBean.getRegisterTime());
        c5.I3(accountBean.getAvatarSrc());
        if (d2.i(accountBean.getExp())) {
            c5.K3(Integer.parseInt(accountBean.getExp()));
        }
        c5.T3(accountBean.getLevel());
        if (d2.i(accountBean.getSurplusExp())) {
            c5.k4(Integer.parseInt(accountBean.getSurplusExp()));
        }
        c5.a4(accountBean.getNickname());
        c5.Y3(accountBean.getMobile());
        c5.d4(accountBean.getPay_top_tip());
        c5.N3(accountBean.getGender());
        c5.l4(accountBean.getToken());
        c5.f4(accountBean.getPwd_set_up());
        c5.F3(accountBean.getAccount_type());
        c5.q4(accountBean.getVip_level());
        c5.q4(accountBean.getSvip_level());
        c5.o4(accountBean.getVip_exp_time());
        c5.U3(accountBean.getLive_total_charm());
        c5.O3(accountBean.getIs_anchor());
        if (accountBean.getMember_title() != null) {
            h.b d32 = h.d3();
            d32.V2(accountBean.getMember_title().getBattleTitle());
            d32.Z2(accountBean.getLevel());
            d32.X2(accountBean.getMember_title().getBattleTitleColor());
            c5.W3(d32);
        }
        c5.S3(accountBean.getIs_real_name());
        if (d2.i(accountBean.getSecretKey())) {
            c5.i4(accountBean.getSecretKey());
        } else {
            c5.i4(b(accountBean.getUid(), accountBean.getToken(), accountBean.getVip_level()));
        }
        c5.V3(accountBean.getMember_time());
        return c5.build();
    }

    private static String b(int i2, String str, int i4) {
        try {
            JSONObject jSONObject = new JSONObject();
            String e4 = com.join.mgps.Util.a.e(System.currentTimeMillis() + "|" + i4);
            jSONObject.put("uid", i2);
            jSONObject.put("token", str);
            jSONObject.put(ai.aF, e4);
            return com.join.mgps.Util.a.e(jSONObject.toString());
        } catch (Exception e5) {
            e5.printStackTrace();
            return "";
        }
    }
}
