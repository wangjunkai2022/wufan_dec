package com.ss.android.download.api.model;

import android.text.TextUtils;
import com.join.mgps.activity.TagGameListActivity_;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.downloadlib.addownload.j;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: DownloadEventModel.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f56946a;

    /* renamed from: b  reason: collision with root package name */
    private final String f56947b;

    /* renamed from: c  reason: collision with root package name */
    private final String f56948c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f56949d;

    /* renamed from: e  reason: collision with root package name */
    private final long f56950e;

    /* renamed from: f  reason: collision with root package name */
    private final String f56951f;

    /* renamed from: g  reason: collision with root package name */
    private final long f56952g;

    /* renamed from: h  reason: collision with root package name */
    private final JSONObject f56953h;

    /* renamed from: i  reason: collision with root package name */
    private final JSONObject f56954i;

    /* renamed from: j  reason: collision with root package name */
    private final List<String> f56955j;

    /* renamed from: k  reason: collision with root package name */
    private final int f56956k;

    /* renamed from: l  reason: collision with root package name */
    private final Object f56957l;

    /* renamed from: m  reason: collision with root package name */
    private final String f56958m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f56959n;

    /* renamed from: o  reason: collision with root package name */
    private final String f56960o;

    /* renamed from: p  reason: collision with root package name */
    private final JSONObject f56961p;

    /* compiled from: DownloadEventModel.java */
    /* loaded from: classes4.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f56962a;

        /* renamed from: b  reason: collision with root package name */
        private String f56963b;

        /* renamed from: c  reason: collision with root package name */
        private String f56964c;

        /* renamed from: e  reason: collision with root package name */
        private long f56966e;

        /* renamed from: f  reason: collision with root package name */
        private String f56967f;

        /* renamed from: g  reason: collision with root package name */
        private long f56968g;

        /* renamed from: h  reason: collision with root package name */
        private JSONObject f56969h;

        /* renamed from: i  reason: collision with root package name */
        private JSONObject f56970i;

        /* renamed from: j  reason: collision with root package name */
        private Map<String, Object> f56971j;

        /* renamed from: k  reason: collision with root package name */
        private List<String> f56972k;

        /* renamed from: l  reason: collision with root package name */
        private int f56973l;

        /* renamed from: m  reason: collision with root package name */
        private Object f56974m;

        /* renamed from: n  reason: collision with root package name */
        private String f56975n;

        /* renamed from: p  reason: collision with root package name */
        private String f56977p;

        /* renamed from: q  reason: collision with root package name */
        private JSONObject f56978q;

        /* renamed from: d  reason: collision with root package name */
        private boolean f56965d = false;

        /* renamed from: o  reason: collision with root package name */
        private boolean f56976o = false;

        public a a(boolean z3) {
            this.f56976o = z3;
            return this;
        }

        public a b(String str) {
            this.f56964c = str;
            return this;
        }

        public a c(String str) {
            this.f56967f = str;
            return this;
        }

        public a d(String str) {
            this.f56975n = str;
            return this;
        }

        public a a(String str) {
            this.f56963b = str;
            return this;
        }

        public a b(long j4) {
            this.f56968g = j4;
            return this;
        }

        public a a(long j4) {
            this.f56966e = j4;
            return this;
        }

        public a b(boolean z3) {
            this.f56965d = z3;
            return this;
        }

        public a a(JSONObject jSONObject) {
            this.f56969h = jSONObject;
            return this;
        }

        public a b(JSONObject jSONObject) {
            this.f56970i = jSONObject;
            return this;
        }

        public a a(List<String> list) {
            this.f56972k = list;
            return this;
        }

        public a a(int i2) {
            this.f56973l = i2;
            return this;
        }

        public a a(Object obj) {
            this.f56974m = obj;
            return this;
        }

        public c a() {
            if (TextUtils.isEmpty(this.f56962a)) {
                this.f56962a = BaseConstants.CATEGORY_UMENG;
            }
            JSONObject jSONObject = new JSONObject();
            if (this.f56969h == null) {
                this.f56969h = new JSONObject();
            }
            try {
                Map<String, Object> map = this.f56971j;
                if (map != null && !map.isEmpty()) {
                    for (Map.Entry<String, Object> entry : this.f56971j.entrySet()) {
                        if (!this.f56969h.has(entry.getKey())) {
                            this.f56969h.putOpt(entry.getKey(), entry.getValue());
                        }
                    }
                }
                if (this.f56976o) {
                    this.f56977p = this.f56964c;
                    JSONObject jSONObject2 = new JSONObject();
                    this.f56978q = jSONObject2;
                    if (this.f56965d) {
                        jSONObject2.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, this.f56969h.toString());
                    } else {
                        Iterator<String> keys = this.f56969h.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            this.f56978q.put(next, this.f56969h.get(next));
                        }
                    }
                    this.f56978q.put("category", this.f56962a);
                    this.f56978q.put(TagGameListActivity_.f35885q0, this.f56963b);
                    this.f56978q.put("value", this.f56966e);
                    this.f56978q.put("ext_value", this.f56968g);
                    if (!TextUtils.isEmpty(this.f56975n)) {
                        this.f56978q.put("refer", this.f56975n);
                    }
                    JSONObject jSONObject3 = this.f56970i;
                    if (jSONObject3 != null) {
                        this.f56978q = com.ss.android.download.api.c.b.a(jSONObject3, this.f56978q);
                    }
                    if (this.f56965d) {
                        if (!this.f56978q.has(BaseConstants.EVENT_LABEL_LOG_EXTRA) && !TextUtils.isEmpty(this.f56967f)) {
                            this.f56978q.put(BaseConstants.EVENT_LABEL_LOG_EXTRA, this.f56967f);
                        }
                        this.f56978q.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
                    }
                }
                if (this.f56965d) {
                    jSONObject.put(BaseConstants.EVENT_LABEL_AD_EXTRA_DATA, this.f56969h.toString());
                    if (!jSONObject.has(BaseConstants.EVENT_LABEL_LOG_EXTRA) && !TextUtils.isEmpty(this.f56967f)) {
                        jSONObject.put(BaseConstants.EVENT_LABEL_LOG_EXTRA, this.f56967f);
                    }
                    jSONObject.put(BaseConstants.EVENT_LABEL_IS_AD_EVENT, "1");
                } else {
                    jSONObject.put(BaseConstants.EVENT_LABEL_EXTRA, this.f56969h);
                }
                if (!TextUtils.isEmpty(this.f56975n)) {
                    jSONObject.putOpt("refer", this.f56975n);
                }
                JSONObject jSONObject4 = this.f56970i;
                if (jSONObject4 != null) {
                    jSONObject = com.ss.android.download.api.c.b.a(jSONObject4, jSONObject);
                }
                this.f56969h = jSONObject;
            } catch (Exception e4) {
                j.s().a(e4, "DownloadEventModel build");
            }
            return new c(this);
        }
    }

    c(a aVar) {
        this.f56946a = aVar.f56962a;
        this.f56947b = aVar.f56963b;
        this.f56948c = aVar.f56964c;
        this.f56949d = aVar.f56965d;
        this.f56950e = aVar.f56966e;
        this.f56951f = aVar.f56967f;
        this.f56952g = aVar.f56968g;
        this.f56953h = aVar.f56969h;
        this.f56954i = aVar.f56970i;
        this.f56955j = aVar.f56972k;
        this.f56956k = aVar.f56973l;
        this.f56957l = aVar.f56974m;
        this.f56959n = aVar.f56976o;
        this.f56960o = aVar.f56977p;
        this.f56961p = aVar.f56978q;
        this.f56958m = aVar.f56975n;
    }

    public String a() {
        return this.f56946a;
    }

    public String b() {
        return this.f56947b;
    }

    public String c() {
        return this.f56948c;
    }

    public boolean d() {
        return this.f56949d;
    }

    public long e() {
        return this.f56950e;
    }

    public String f() {
        return this.f56951f;
    }

    public long g() {
        return this.f56952g;
    }

    public JSONObject h() {
        return this.f56953h;
    }

    public JSONObject i() {
        return this.f56954i;
    }

    public List<String> j() {
        return this.f56955j;
    }

    public int k() {
        return this.f56956k;
    }

    public Object l() {
        return this.f56957l;
    }

    public boolean m() {
        return this.f56959n;
    }

    public String n() {
        return this.f56960o;
    }

    public JSONObject o() {
        return this.f56961p;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("category: ");
        sb.append(this.f56946a);
        sb.append("\ttag: ");
        sb.append(this.f56947b);
        sb.append("\tlabel: ");
        sb.append(this.f56948c);
        sb.append("\nisAd: ");
        sb.append(this.f56949d);
        sb.append("\tadId: ");
        sb.append(this.f56950e);
        sb.append("\tlogExtra: ");
        sb.append(this.f56951f);
        sb.append("\textValue: ");
        sb.append(this.f56952g);
        sb.append("\nextJson: ");
        sb.append(this.f56953h);
        sb.append("\nparamsJson: ");
        sb.append(this.f56954i);
        sb.append("\nclickTrackUrl: ");
        List<String> list = this.f56955j;
        sb.append(list != null ? list.toString() : "");
        sb.append("\teventSource: ");
        sb.append(this.f56956k);
        sb.append("\textraObject: ");
        Object obj = this.f56957l;
        sb.append(obj != null ? obj.toString() : "");
        sb.append("\nisV3: ");
        sb.append(this.f56959n);
        sb.append("\tV3EventName: ");
        sb.append(this.f56960o);
        sb.append("\tV3EventParams: ");
        JSONObject jSONObject = this.f56961p;
        sb.append(jSONObject != null ? jSONObject.toString() : "");
        return sb.toString();
    }
}
