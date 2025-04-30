package com.mob.commons.b;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.mob.commons.b.g;
/* loaded from: classes4.dex */
public class f extends g {
    public f(Context context) {
        super(context);
    }

    @Override // com.mob.commons.b.g
    protected Intent a() {
        Intent intent = new Intent(com.mob.commons.j.a("036GbecaYj$cjbacaPf'bcdecjcaOcg5biGfgh%bcbe?g@cjdjefebcdcedgcfbbcfebecedceeeeb"));
        intent.setPackage(com.mob.commons.j.a("015Mbeca0j'cjRaCbabddbCgZbccj4a[dbbc f"));
        return intent;
    }

    @Override // com.mob.commons.b.g
    public synchronized String b() {
        return i();
    }

    @Override // com.mob.commons.b.g
    public g.c a(IBinder iBinder) {
        String a4 = com.mob.commons.j.a("0530becaLjUcjbacaZfTbcdecjca^cg,biIfgh3bcbe[gOcjbdbc?f3cbcjdjLcgDbidgQghHbcbe(gUceSfg8biDb3bcdfbcDgWbfcfUgVbfJhHbcbeUg");
        g.c cVar = new g.c();
        cVar.f52883b = a(com.mob.commons.j.a("004JcabdbcYf"), iBinder, a4, 1, new String[0]);
        a(com.mob.commons.j.a("024@bcdecibcBj(bcDb!ch7f2cgbfbdbebhbcbiddebbibddacbXgf"), iBinder, a4, 2);
        cVar.f52882a = !TextUtils.isEmpty(cVar.f52883b);
        return cVar;
    }
}
