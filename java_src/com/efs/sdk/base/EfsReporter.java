package com.efs.sdk.base;

import android.app.Application;
import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.ValueCallback;
import androidx.annotation.NonNull;
import com.efs.sdk.base.core.b.a;
import com.efs.sdk.base.core.b.e;
import com.efs.sdk.base.core.config.GlobalEnvStruct;
import com.efs.sdk.base.core.config.a.c;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.a;
import com.efs.sdk.base.core.util.d;
import com.efs.sdk.base.http.HttpResponse;
import com.efs.sdk.base.observer.IConfigCallback;
import com.efs.sdk.base.observer.IEfsReporterObserver;
import com.efs.sdk.base.processor.action.ILogEncryptAction;
import com.efs.sdk.base.protocol.ILogProtocol;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class EfsReporter {
    private static ControllerCenter sControllerCenter;

    /* loaded from: classes2.dex */
    public static class Builder {
        private static Map<String, EfsReporter> sInstanceMap = new ConcurrentHashMap();
        private static boolean sUseAppContext = true;
        private final String TAG;
        private GlobalEnvStruct mGlobalEnvStruct;

        /* loaded from: classes2.dex */
        public interface IPublicParams {
            Map<String, String> getRecordHeaders();
        }

        public Builder(@NonNull Application application, @NonNull String str, @NonNull String str2) {
            this(application.getApplicationContext(), str, str2);
        }

        private static Context checkContext(Context context) {
            if (context != null) {
                if (!sUseAppContext || (context instanceof Application) || ((context = context.getApplicationContext()) != null && (context instanceof Application))) {
                    return context;
                }
                d.b("efs.base", "Can not get Application context from given context!", null);
                throw new IllegalArgumentException("Can not get Application context from given context!");
            }
            d.b("efs.base", "context can not be null!", null);
            throw null;
        }

        private void checkParam(String str) {
            GlobalEnvStruct globalEnvStruct = sInstanceMap.get(str).getGlobalEnvStruct();
            if (globalEnvStruct.mAppContext.equals(getGlobalEnvStruct().mAppContext)) {
                if (!TextUtils.isEmpty(globalEnvStruct.getSecret()) && !globalEnvStruct.getSecret().equals(getGlobalEnvStruct().getSecret())) {
                    throw new RuntimeException("efs-core: duplicate init, but secret is different");
                } else if (globalEnvStruct.isIntl() == getGlobalEnvStruct().isIntl()) {
                    if (!TextUtils.isEmpty(getGlobalEnvStruct().getUid()) && !getGlobalEnvStruct().getUid().equals(globalEnvStruct.getUid())) {
                        d.a("efs.reporter.builder", "efs-core: duplicate init, but  uid is different", null);
                    }
                    if (getGlobalEnvStruct().getPublicParamMap() == null || getGlobalEnvStruct().getPublicParamMap().size() <= 0) {
                        return;
                    }
                    globalEnvStruct.addPublicParams(getGlobalEnvStruct().getPublicParamMap());
                    return;
                } else {
                    throw new RuntimeException("efs-core: duplicate init, but intl setting is different");
                }
            }
            throw new RuntimeException("efs-core: duplicate init, but application context is different");
        }

        public Builder addEfsReporterObserver(IEfsReporterObserver iEfsReporterObserver) {
            this.mGlobalEnvStruct.addConfigObserver(iEfsReporterObserver);
            return this;
        }

        public EfsReporter build() {
            String appid = getGlobalEnvStruct().getAppid();
            if (!sInstanceMap.containsKey(appid)) {
                synchronized (EfsReporter.class) {
                    if (!sInstanceMap.containsKey(appid)) {
                        EfsReporter efsReporter = new EfsReporter(this);
                        sInstanceMap.put(appid, efsReporter);
                        return efsReporter;
                    }
                }
            }
            d.a("efs.reporter.builder", "efs-core: duplicate init", null);
            checkParam(appid);
            return sInstanceMap.get(appid);
        }

        public Builder configRefreshAction(@NonNull IConfigRefreshAction iConfigRefreshAction) {
            c.a().f11317b = iConfigRefreshAction;
            return this;
        }

        public Builder configRefreshDelayMills(long j4) {
            this.mGlobalEnvStruct.configRefreshDelayMills = j4;
            return this;
        }

        public Builder debug(boolean z3) {
            this.mGlobalEnvStruct.setDebug(z3);
            return this;
        }

        public Builder efsDirRootName(String str) {
            a.a(str);
            return this;
        }

        public Builder enableSendLog(boolean z3) {
            this.mGlobalEnvStruct.setEnableSendLog(z3);
            return this;
        }

        public Builder enableWaStat(boolean z3) {
            this.mGlobalEnvStruct.setEnableWaStat(z3);
            return this;
        }

        public GlobalEnvStruct getGlobalEnvStruct() {
            return this.mGlobalEnvStruct;
        }

        public Builder intl(boolean z3) {
            this.mGlobalEnvStruct.setIsIntl(z3);
            return this;
        }

        public Builder logEncryptAction(ILogEncryptAction iLogEncryptAction) {
            this.mGlobalEnvStruct.setLogEncryptAction(iLogEncryptAction);
            return this;
        }

        public Builder maxConcurrentUploadCnt(int i2) {
            com.efs.sdk.base.core.c.d.a().f11278a = i2;
            return this;
        }

        public Builder printLogDetail(boolean z3) {
            this.mGlobalEnvStruct.setPrintLogDetail(z3);
            return this;
        }

        public Builder publicParams(@NonNull IPublicParams iPublicParams) {
            if (iPublicParams.getRecordHeaders() != null && iPublicParams.getRecordHeaders().size() > 0) {
                this.mGlobalEnvStruct.addPublicParams(iPublicParams.getRecordHeaders());
            }
            return this;
        }

        public Builder uid(String str) {
            this.mGlobalEnvStruct.setUid(str);
            return this;
        }

        public Builder(@NonNull Context context, @NonNull String str, @NonNull String str2) {
            this.TAG = "efs.reporter.builder";
            Context checkContext = checkContext(context);
            if (!TextUtils.isEmpty(str)) {
                if (!TextUtils.isEmpty(str2)) {
                    GlobalEnvStruct globalEnvStruct = new GlobalEnvStruct();
                    this.mGlobalEnvStruct = globalEnvStruct;
                    globalEnvStruct.mAppContext = checkContext;
                    globalEnvStruct.setAppid(str);
                    this.mGlobalEnvStruct.setSecret(str2);
                    return;
                }
                throw new RuntimeException("EfsReporter init, secret is empty");
            }
            throw new RuntimeException("EfsReporter init, appid is empty");
        }

        public Builder publicParams(@NonNull Map<String, String> map) {
            if (map.size() > 0) {
                this.mGlobalEnvStruct.addPublicParams(map);
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public GlobalEnvStruct getGlobalEnvStruct() {
        return ControllerCenter.getGlobalEnvStruct();
    }

    public void addPublicParams(@NonNull Map<String, String> map) {
        if (map.size() > 0) {
            getGlobalEnvStruct().addPublicParams(map);
        }
    }

    public void flushRecordLogImmediately(String str) {
        e a4 = a.b.a().f11259c.a((byte) 1);
        if (a4 != null) {
            a4.a(str);
        }
    }

    public Map<String, String> getAllConfig() {
        return c.a().c();
    }

    public void getAllSdkConfig(String[] strArr, IConfigCallback iConfigCallback) {
        c a4 = c.a();
        a4.f11320e.put(iConfigCallback, strArr);
        if (a4.f11319d.f11314e.isEmpty()) {
            return;
        }
        a4.d();
    }

    public void refreshConfig(String str) {
        c.a().a(str);
    }

    public void registerCallback(int i2, ValueCallback<Pair<Message, Message>> valueCallback) {
        getGlobalEnvStruct().registerCallback(i2, valueCallback);
    }

    public void send(ILogProtocol iLogProtocol) {
        sControllerCenter.send(iLogProtocol);
    }

    public HttpResponse sendSyncImediatelly(String str, int i2, String str2, File file) {
        return sendSyncImediatelly(str, i2, str2, true, file);
    }

    public void setEnableRefreshConfigFromRemote(boolean z3) {
        c.a().f11318c = z3;
    }

    private EfsReporter(Builder builder) {
        sControllerCenter = new ControllerCenter(builder);
    }

    public HttpResponse sendSyncImediatelly(String str, int i2, String str2, boolean z3, File file) {
        return sControllerCenter.sendSyncImmediately(str, i2, str2, z3, file);
    }

    public Map<String, Object> getAllSdkConfig() {
        return new HashMap(c.a().f11319d.f11314e);
    }
}
