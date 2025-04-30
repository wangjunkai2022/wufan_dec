package com.ss.android.download.api.download;

import org.json.JSONObject;
/* compiled from: SimpleDownloadEventConfig.java */
@Deprecated
/* loaded from: classes4.dex */
public class c implements DownloadEventConfig {

    /* renamed from: a  reason: collision with root package name */
    private String f56882a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f56883b;

    /* renamed from: c  reason: collision with root package name */
    private String f56884c;

    /* renamed from: d  reason: collision with root package name */
    private String f56885d;

    /* renamed from: e  reason: collision with root package name */
    private String f56886e;

    /* renamed from: f  reason: collision with root package name */
    private String f56887f;

    /* renamed from: g  reason: collision with root package name */
    private String f56888g;

    /* renamed from: h  reason: collision with root package name */
    private String f56889h;

    /* renamed from: i  reason: collision with root package name */
    private String f56890i;

    /* renamed from: j  reason: collision with root package name */
    private String f56891j;

    /* renamed from: k  reason: collision with root package name */
    private String f56892k;

    /* renamed from: l  reason: collision with root package name */
    private Object f56893l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f56894m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f56895n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f56896o;

    /* renamed from: p  reason: collision with root package name */
    private String f56897p;

    /* renamed from: q  reason: collision with root package name */
    private String f56898q;

    /* compiled from: SimpleDownloadEventConfig.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private String f56899a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f56900b;

        /* renamed from: c  reason: collision with root package name */
        private String f56901c;

        /* renamed from: d  reason: collision with root package name */
        private String f56902d;

        /* renamed from: e  reason: collision with root package name */
        private String f56903e;

        /* renamed from: f  reason: collision with root package name */
        private String f56904f;

        /* renamed from: g  reason: collision with root package name */
        private String f56905g;

        /* renamed from: h  reason: collision with root package name */
        private String f56906h;

        /* renamed from: i  reason: collision with root package name */
        private String f56907i;

        /* renamed from: j  reason: collision with root package name */
        private String f56908j;

        /* renamed from: k  reason: collision with root package name */
        private String f56909k;

        /* renamed from: l  reason: collision with root package name */
        private Object f56910l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f56911m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f56912n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f56913o;

        /* renamed from: p  reason: collision with root package name */
        private String f56914p;

        /* renamed from: q  reason: collision with root package name */
        private String f56915q;

        public c a() {
            return new c(this);
        }
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickButtonTag() {
        return this.f56882a;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickContinueLabel() {
        return this.f56887f;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickInstallLabel() {
        return this.f56888g;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickItemTag() {
        return null;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickLabel() {
        return this.f56884c;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickPauseLabel() {
        return this.f56886e;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getClickStartLabel() {
        return this.f56885d;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public int getDownloadScene() {
        return 0;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public Object getExtraEventObject() {
        return this.f56893l;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public JSONObject getExtraJson() {
        return null;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public JSONObject getParamsJson() {
        return null;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getRefer() {
        return this.f56898q;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public String getStorageDenyLabel() {
        return this.f56891j;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public boolean isEnableClickEvent() {
        return this.f56883b;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public boolean isEnableV3Event() {
        return this.f56894m;
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public void setDownloadScene(int i2) {
    }

    @Override // com.ss.android.download.api.download.DownloadEventConfig
    public void setRefer(String str) {
    }

    public c() {
    }

    private c(a aVar) {
        this.f56882a = aVar.f56899a;
        this.f56883b = aVar.f56900b;
        this.f56884c = aVar.f56901c;
        this.f56885d = aVar.f56902d;
        this.f56886e = aVar.f56903e;
        this.f56887f = aVar.f56904f;
        this.f56888g = aVar.f56905g;
        this.f56889h = aVar.f56906h;
        this.f56890i = aVar.f56907i;
        this.f56891j = aVar.f56908j;
        this.f56892k = aVar.f56909k;
        this.f56893l = aVar.f56910l;
        this.f56894m = aVar.f56911m;
        this.f56895n = aVar.f56912n;
        this.f56896o = aVar.f56913o;
        this.f56897p = aVar.f56914p;
        this.f56898q = aVar.f56915q;
    }
}
