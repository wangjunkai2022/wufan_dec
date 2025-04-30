package com.efs.sdk.base.core.config;

import android.content.Context;
import android.os.Message;
import android.util.Pair;
import android.webkit.ValueCallback;
import com.efs.sdk.base.observer.IEfsReporterObserver;
import com.efs.sdk.base.processor.action.ILogEncryptAction;
import com.join.mgps.data.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class GlobalEnvStruct {

    /* renamed from: a  reason: collision with root package name */
    private String f11293a;

    /* renamed from: b  reason: collision with root package name */
    private String f11294b;

    /* renamed from: h  reason: collision with root package name */
    private String f11300h;

    /* renamed from: m  reason: collision with root package name */
    private ILogEncryptAction f11305m;
    public Context mAppContext;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11295c = true;

    /* renamed from: d  reason: collision with root package name */
    private boolean f11296d = true;

    /* renamed from: e  reason: collision with root package name */
    private boolean f11297e = false;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f11298f = null;

    /* renamed from: g  reason: collision with root package name */
    private boolean f11299g = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f11301i = false;
    public long configRefreshDelayMills = 5000;

    /* renamed from: j  reason: collision with root package name */
    private long f11302j = c.f47286a;

    /* renamed from: k  reason: collision with root package name */
    private long f11303k = c.f47286a;

    /* renamed from: l  reason: collision with root package name */
    private Map<String, String> f11304l = new HashMap(5);

    /* renamed from: n  reason: collision with root package name */
    private ConcurrentHashMap<Integer, List<ValueCallback<Pair<Message, Message>>>> f11306n = new ConcurrentHashMap<>();

    /* renamed from: o  reason: collision with root package name */
    private List<IEfsReporterObserver> f11307o = new ArrayList(5);

    public void addConfigObserver(IEfsReporterObserver iEfsReporterObserver) {
        if (this.f11307o.contains(iEfsReporterObserver)) {
            return;
        }
        this.f11307o.add(iEfsReporterObserver);
    }

    public void addPublicParams(Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        HashMap hashMap = new HashMap(this.f11304l);
        hashMap.putAll(map);
        this.f11304l = hashMap;
    }

    public String getAppid() {
        return this.f11293a;
    }

    public List<ValueCallback<Pair<Message, Message>>> getCallback(int i2) {
        if (this.f11306n.containsKey(Integer.valueOf(i2)) && this.f11306n.get(Integer.valueOf(i2)) != null) {
            return this.f11306n.get(Integer.valueOf(i2));
        }
        return Collections.emptyList();
    }

    public List<IEfsReporterObserver> getEfsReporterObservers() {
        return this.f11307o;
    }

    public ILogEncryptAction getLogEncryptAction() {
        return this.f11305m;
    }

    public long getLogSendDelayMills() {
        return this.f11302j;
    }

    public long getLogSendIntervalMills() {
        return this.f11303k;
    }

    public Map<String, String> getPublicParamMap() {
        Map<String, String> map = this.f11304l;
        return map == null ? Collections.emptyMap() : map;
    }

    public String getSecret() {
        return this.f11294b;
    }

    public String getUid() {
        return this.f11300h;
    }

    public boolean isDebug() {
        return this.f11297e;
    }

    public boolean isEnableSendLog() {
        return this.f11296d;
    }

    public boolean isEnableWaStat() {
        return this.f11295c;
    }

    public boolean isIntl() {
        return this.f11301i;
    }

    public boolean isPrintLogDetail() {
        return this.f11299g;
    }

    public void registerCallback(int i2, ValueCallback<Pair<Message, Message>> valueCallback) {
        if (valueCallback == null) {
            return;
        }
        List<ValueCallback<Pair<Message, Message>>> list = this.f11306n.get(Integer.valueOf(i2));
        if (list == null) {
            list = new LinkedList<>();
            this.f11306n.putIfAbsent(Integer.valueOf(i2), list);
        }
        list.add(valueCallback);
    }

    public void setAppid(String str) {
        this.f11293a = str;
    }

    public void setDebug(boolean z3) {
        this.f11297e = z3;
    }

    public void setEnableSendLog(boolean z3) {
        this.f11296d = z3;
    }

    public void setEnableWaStat(boolean z3) {
        this.f11295c = z3;
    }

    public void setIsIntl(boolean z3) {
        this.f11301i = z3;
    }

    public void setLogEncryptAction(ILogEncryptAction iLogEncryptAction) {
        this.f11305m = iLogEncryptAction;
    }

    public void setPrintLogDetail(boolean z3) {
        this.f11299g = z3;
    }

    public void setSecret(String str) {
        this.f11294b = str;
    }

    public void setUid(String str) {
        this.f11300h = str;
    }
}
