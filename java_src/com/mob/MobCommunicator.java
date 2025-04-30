package com.mob;

import com.mob.tools.network.NetCommunicator;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;
@Deprecated
/* loaded from: classes4.dex */
public final class MobCommunicator implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private NetCommunicator f52697a;

    /* loaded from: classes4.dex */
    public static class Callback<T> implements PublicMemberKeeper {
        public void onResultError(Throwable th) {
        }

        public void onResultOk(T t3) {
        }
    }

    /* loaded from: classes4.dex */
    public static class NetworkError extends Exception implements PublicMemberKeeper {
        private static final long serialVersionUID = -8447657431687664787L;

        public NetworkError(String str) {
            super(str);
        }
    }

    public MobCommunicator(int i2, String str, String str2) {
        this.f52697a = new NetCommunicator(i2, str, str2);
    }

    public static HashMap<String, String> getCommonDefaultHeaders() throws Throwable {
        return NetCommunicator.getCommonDefaultHeaders();
    }

    public <T> void request(HashMap<String, Object> hashMap, String str, boolean z3, Callback<T> callback) {
        request(true, null, hashMap, str, z3, callback);
    }

    public <T> T requestSynchronized(HashMap<String, Object> hashMap, String str, boolean z3) throws Throwable {
        return (T) requestSynchronized((HashMap<String, String>) null, hashMap, str, z3);
    }

    public void setThreadPool(ThreadPoolExecutor threadPoolExecutor) {
        this.f52697a.setThreadPool(threadPoolExecutor);
    }

    public <T> void request(HashMap<String, String> hashMap, HashMap<String, Object> hashMap2, String str, boolean z3, Callback<T> callback) {
        request(true, hashMap, hashMap2, str, z3, callback);
    }

    public <T> T requestSynchronized(HashMap<String, String> hashMap, HashMap<String, Object> hashMap2, String str, boolean z3) throws Throwable {
        return (T) requestSynchronized(true, hashMap, hashMap2, str, z3);
    }

    public <T> void request(boolean z3, HashMap<String, String> hashMap, HashMap<String, Object> hashMap2, String str, boolean z4, final Callback<T> callback) {
        if (callback == null) {
            this.f52697a.request(z3, hashMap, hashMap2, str, z4, null);
        } else {
            this.f52697a.request(z3, hashMap, hashMap2, str, z4, new NetCommunicator.Callback<T>() { // from class: com.mob.MobCommunicator.1
                @Override // com.mob.tools.network.NetCommunicator.Callback
                public void onResultError(Throwable th) {
                    callback.onResultError(th);
                }

                @Override // com.mob.tools.network.NetCommunicator.Callback
                public void onResultOk(T t3) {
                    callback.onResultOk(t3);
                }
            });
        }
    }

    public <T> T requestSynchronized(String str, String str2, boolean z3) throws Throwable {
        return (T) requestSynchronized((HashMap<String, String>) null, str, str2, z3);
    }

    public <T> T requestSynchronized(HashMap<String, String> hashMap, String str, String str2, boolean z3) throws Throwable {
        return (T) requestSynchronized(true, hashMap, str, str2, z3);
    }

    public <T> T requestSynchronized(boolean z3, HashMap<String, String> hashMap, HashMap<String, Object> hashMap2, String str, boolean z4) throws Throwable {
        return (T) this.f52697a.requestSynchronized(z3, hashMap, hashMap2, str, z4);
    }

    public <T> T requestSynchronized(boolean z3, HashMap<String, String> hashMap, String str, String str2, boolean z4) throws Throwable {
        return (T) this.f52697a.requestSynchronized(z3, hashMap, str, str2, z4);
    }
}
