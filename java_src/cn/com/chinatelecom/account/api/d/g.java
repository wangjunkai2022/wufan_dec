package cn.com.chinatelecom.account.api.d;

import android.net.Network;
import java.util.Map;
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public Network f8592a;

    /* renamed from: b  reason: collision with root package name */
    public int f8593b;

    /* renamed from: c  reason: collision with root package name */
    public String f8594c;

    /* renamed from: d  reason: collision with root package name */
    public String f8595d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f8596e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f8597f;

    /* renamed from: g  reason: collision with root package name */
    public String f8598g;

    /* renamed from: h  reason: collision with root package name */
    public String f8599h;

    /* renamed from: i  reason: collision with root package name */
    public Map<String, String> f8600i;

    /* renamed from: j  reason: collision with root package name */
    private int f8601j;

    /* renamed from: k  reason: collision with root package name */
    private int f8602k;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private int f8603a;

        /* renamed from: b  reason: collision with root package name */
        private int f8604b;

        /* renamed from: c  reason: collision with root package name */
        private Network f8605c;

        /* renamed from: d  reason: collision with root package name */
        private int f8606d;

        /* renamed from: e  reason: collision with root package name */
        private String f8607e;

        /* renamed from: f  reason: collision with root package name */
        private String f8608f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f8609g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f8610h;

        /* renamed from: i  reason: collision with root package name */
        private String f8611i;

        /* renamed from: j  reason: collision with root package name */
        private String f8612j;

        /* renamed from: k  reason: collision with root package name */
        private Map<String, String> f8613k;

        public a a(int i2) {
            this.f8603a = i2;
            return this;
        }

        public a a(Network network) {
            this.f8605c = network;
            return this;
        }

        public a a(String str) {
            this.f8607e = str;
            return this;
        }

        public a a(Map<String, String> map) {
            this.f8613k = map;
            return this;
        }

        public a a(boolean z3) {
            this.f8609g = z3;
            return this;
        }

        public a a(boolean z3, String str, String str2) {
            this.f8610h = z3;
            this.f8611i = str;
            this.f8612j = str2;
            return this;
        }

        public g a() {
            return new g(this);
        }

        public a b(int i2) {
            this.f8604b = i2;
            return this;
        }

        public a b(String str) {
            this.f8608f = str;
            return this;
        }
    }

    public g(a aVar) {
        this.f8601j = aVar.f8603a;
        this.f8602k = aVar.f8604b;
        this.f8592a = aVar.f8605c;
        this.f8593b = aVar.f8606d;
        this.f8594c = aVar.f8607e;
        this.f8595d = aVar.f8608f;
        this.f8596e = aVar.f8609g;
        this.f8597f = aVar.f8610h;
        this.f8598g = aVar.f8611i;
        this.f8599h = aVar.f8612j;
        this.f8600i = aVar.f8613k;
    }

    public int a() {
        int i2 = this.f8601j;
        if (i2 > 0) {
            return i2;
        }
        return 3000;
    }

    public int b() {
        int i2 = this.f8602k;
        if (i2 > 0) {
            return i2;
        }
        return 3000;
    }
}
