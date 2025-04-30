package com.mob.commons.b;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.mob.commons.b.g;
/* loaded from: classes4.dex */
public class i extends g {
    public i(Context context) {
        super(context);
    }

    @Override // com.mob.commons.b.g
    protected Intent a() {
        Intent intent = new Intent();
        intent.setClassName(com.mob.commons.i.a("023NfigePn]gniefefggnMjklRfgfiGkIfg]jJhi]k+fjTl9fgfi4k"), com.mob.commons.i.a("0395figeZn>gniefefggn[jklJfgfiSk]fg-j-hi!k%fjQl2fgfiNkJgnhkLklFfgfiUk4fgXj5gj kCfjJlBfgfiEk"));
        return intent;
    }

    @Override // com.mob.commons.b.g
    protected long d() {
        return 3000L;
    }

    @Override // com.mob.commons.b.g
    public g.c a(IBinder iBinder) {
        String a4 = com.mob.commons.i.a("042^fige7nMgniefefggnTjklSfgfiZkAfg^j)hi)k fj'lDfgfiSkAgngihkSkl7fgfiPk7fg9j4gifm<fk8fjhjfhfiMk");
        g.c cVar = new g.c();
        cVar.f52883b = a(com.mob.commons.i.a("004,gefhfg9j"), iBinder, a4, 1, new String[0]);
        cVar.f52886e = a(com.mob.commons.i.a("004l%fhfgKj"), iBinder, a4, 4, this.f52870b);
        cVar.f52885d = a(com.mob.commons.i.a("004Jfe'jLfgNj"), iBinder, a4, 2, new String[0]);
        cVar.f52884c = a(com.mob.commons.i.a("004+fhfhfgEj"), iBinder, a4, 5, this.f52870b);
        cVar.f52882a = a(com.mob.commons.i.a("009%hifePgg4gefj0fkj"), iBinder, a4, 3) != 0;
        return cVar;
    }
}
