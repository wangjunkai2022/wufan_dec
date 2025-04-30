package k1;

import com.join.mgps.business.CollectionBeanSubBusiness;
import java.util.List;
/* compiled from: MustPlayNetDataBeanBusiness.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private boolean f70688a;

    /* renamed from: b  reason: collision with root package name */
    private String f70689b;

    /* renamed from: c  reason: collision with root package name */
    private List<CollectionBeanSubBusiness> f70690c;

    public c(boolean z3, String str) {
        this.f70688a = z3;
        this.f70689b = str;
    }

    public List<CollectionBeanSubBusiness> a() {
        return this.f70690c;
    }

    public String b() {
        return this.f70689b;
    }

    public boolean c() {
        return this.f70688a;
    }

    public void d(List<CollectionBeanSubBusiness> list) {
        this.f70690c = list;
    }

    public void e(boolean z3) {
        this.f70688a = z3;
    }

    public void f(String str) {
        this.f70689b = str;
    }

    public c(boolean z3, List<CollectionBeanSubBusiness> list) {
        this.f70688a = z3;
        this.f70690c = list;
    }
}
