package com.qq.e.ads.rewardvideo;

import android.app.Activity;
import android.content.Context;
import com.qq.e.ads.LiteAbstractAD;
import com.qq.e.comm.adevent.ADEvent;
import com.qq.e.comm.adevent.ADListener;
import com.qq.e.comm.constants.LoadAdParams;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.pi.NFBI;
import com.qq.e.comm.pi.POFactory;
import com.qq.e.comm.pi.RVADI;
import com.qq.e.comm.util.AdErrorConvertor;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class RewardVideoAD extends LiteAbstractAD<RVADI> implements NFBI {
    public static final int REWARD_TYPE_PAGE = 1;
    public static final int REWARD_TYPE_VIDEO = 0;

    /* renamed from: g  reason: collision with root package name */
    private final RewardVideoADListener f56383g;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f56384h;

    /* renamed from: i  reason: collision with root package name */
    private LoadAdParams f56385i;

    /* renamed from: j  reason: collision with root package name */
    private ServerSideVerificationOptions f56386j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f56387k;

    /* renamed from: l  reason: collision with root package name */
    private final ADListenerAdapter f56388l;

    /* loaded from: classes4.dex */
    public static class ADListenerAdapter implements ADListener {

        /* renamed from: a  reason: collision with root package name */
        private NegativeFeedbackListener f56389a;
        public RewardVideoADListener adListener;

        public ADListenerAdapter(RewardVideoADListener rewardVideoADListener) {
            this.adListener = rewardVideoADListener;
        }

        static void a(ADListenerAdapter aDListenerAdapter, NegativeFeedbackListener negativeFeedbackListener) {
            aDListenerAdapter.f56389a = negativeFeedbackListener;
        }

        @Override // com.qq.e.comm.adevent.ADListener
        public void onADEvent(ADEvent aDEvent) {
            int type = aDEvent.getType();
            if (type == 100) {
                this.adListener.onADLoad();
            } else if (type == 201) {
                this.adListener.onVideoCached();
            } else if (type == 206) {
                this.adListener.onVideoComplete();
            } else if (type == 304) {
                NegativeFeedbackListener negativeFeedbackListener = this.f56389a;
                if (negativeFeedbackListener != null) {
                    negativeFeedbackListener.onComplainSuccess();
                }
            } else {
                switch (type) {
                    case 102:
                        this.adListener.onADShow();
                        return;
                    case 103:
                        this.adListener.onADExpose();
                        return;
                    case 104:
                        String str = (String) aDEvent.getParam(String.class);
                        if (str != null) {
                            HashMap hashMap = new HashMap();
                            hashMap.put(ServerSideVerificationOptions.TRANS_ID, str);
                            this.adListener.onReward(hashMap);
                            return;
                        }
                        return;
                    case 105:
                        this.adListener.onADClick();
                        return;
                    case 106:
                        this.adListener.onADClose();
                        return;
                    case 107:
                        Integer num = (Integer) aDEvent.getParam(Integer.class);
                        if (num != null) {
                            this.adListener.onError(AdErrorConvertor.formatErrorCode(num.intValue()));
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public RewardVideoAD(Context context, String str, RewardVideoADListener rewardVideoADListener) {
        this(context, str, rewardVideoADListener, true);
    }

    public RewardVideoAD(Context context, String str, RewardVideoADListener rewardVideoADListener, boolean z3) {
        this(rewardVideoADListener, z3);
        a(context, str);
    }

    public RewardVideoAD(Context context, String str, RewardVideoADListener rewardVideoADListener, boolean z3, String str2) {
        this(rewardVideoADListener, z3);
        a(context, str, str2);
    }

    private RewardVideoAD(RewardVideoADListener rewardVideoADListener, boolean z3) {
        this.f56385i = null;
        this.f56387k = z3;
        this.f56383g = rewardVideoADListener;
        this.f56388l = new ADListenerAdapter(rewardVideoADListener);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected Object a(Context context, POFactory pOFactory, String str, String str2, String str3) {
        return pOFactory.getRewardVideoADDelegate(context, str, str2, str3, this.f56388l);
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void b(int i2) {
        RewardVideoADListener rewardVideoADListener = this.f56383g;
        if (rewardVideoADListener != null) {
            rewardVideoADListener.onError(AdErrorConvertor.formatErrorCode(i2));
        }
    }

    public String getAdNetWorkName() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((RVADI) t3).getAdNetWorkName();
        }
        a("getAdNetWorkName");
        return null;
    }

    public int getRewardAdType() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((RVADI) t3).getRewardAdType();
        }
        a("getRewardAdType");
        return 0;
    }

    public int getVideoDuration() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((RVADI) t3).getVideoDuration();
        }
        a("getVideoDuration");
        return 0;
    }

    public boolean hasShown() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            return ((RVADI) t3).hasShown();
        }
        a("hasShown");
        return false;
    }

    public void loadAD() {
        if (a()) {
            if (!b()) {
                this.f56384h = true;
                return;
            }
            T t3 = this.f56259a;
            if (t3 != 0) {
                ((RVADI) t3).loadAD();
            } else {
                a("loadAD");
            }
        }
    }

    public void setLoadAdParams(LoadAdParams loadAdParams) {
        this.f56385i = loadAdParams;
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((RVADI) t3).setLoadAdParams(loadAdParams);
        }
    }

    @Override // com.qq.e.comm.pi.NFBI
    public void setNegativeFeedbackListener(NegativeFeedbackListener negativeFeedbackListener) {
        ADListenerAdapter.a(this.f56388l, negativeFeedbackListener);
    }

    public void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        this.f56386j = serverSideVerificationOptions;
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((RVADI) t3).setServerSideVerificationOptions(serverSideVerificationOptions);
        }
    }

    public void showAD() {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((RVADI) t3).showAD();
        } else {
            a("showAD");
        }
    }

    public void showAD(Activity activity) {
        T t3 = this.f56259a;
        if (t3 != 0) {
            ((RVADI) t3).showAD(activity);
        } else {
            a("showAD");
        }
    }

    @Override // com.qq.e.ads.AbstractAD
    protected void a(Object obj) {
        RVADI rvadi = (RVADI) obj;
        rvadi.setVolumeOn(this.f56387k);
        rvadi.setLoadAdParams(this.f56385i);
        rvadi.setServerSideVerificationOptions(this.f56386j);
        if (this.f56384h) {
            loadAD();
        }
    }
}
