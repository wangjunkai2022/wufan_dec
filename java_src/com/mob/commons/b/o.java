package com.mob.commons.b;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.mob.commons.b.g;
import com.mob.tools.utils.DeviceHelper;
/* loaded from: classes4.dex */
public class o extends g {
    public o(Context context) {
        super(context);
    }

    private void j() {
        try {
            Intent intent = new Intent();
            intent.setClassName(com.mob.commons.o.a("012)dgec;lNelWlh@de1hWel0lZfgdf"), com.mob.commons.o.a("033'dgec?l9el6lh;de*h?elRl*fgdfelfg'i<dhPjBdedg1i$elgifgdfhjedeh>i>dhMjWdedgLi"));
            intent.setAction(com.mob.commons.o.a("032_dgecNl<elfcdcdkelWl1fgdfeldfdgAd@deecdkelfg5d_dfdhPd_elfg%i-dh9jGdedg%i"));
            intent.putExtra(com.mob.commons.o.a("0253dgec,lJelfcdcdkelNlZfgdfel_eAdfdhdf8l[el8e5djffdkdf$li"), this.f52870b);
            intent.putExtra(com.mob.commons.o.a("026EdgecJl,elfcdcdkel[l6fgdfelZe^dfdhdf_l:eldhdcdkdedkfg^id"), true);
            this.f52869a.startService(intent);
        } catch (Throwable th) {
            c.a().a(th);
        }
    }

    private boolean k() {
        try {
            DeviceHelper.getInstance(this.f52869a).getPInfo(com.mob.commons.o.a("012Udgec_lEel5lh)de$hZelQl1fgdf"), 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.mob.commons.b.g
    protected Intent a() {
        j();
        Intent intent = new Intent();
        intent.setClassName(com.mob.commons.o.a("012Odgec]l'el3lhCde%hQel-lZfgdf"), com.mob.commons.o.a("033,dgec lAelNlhYde6hMelYl!fgdfelfg]i+dhFjAdedgKi6elgifgdfeg?h@eh_i)dh-jNdedg5i"));
        intent.setAction(com.mob.commons.o.a("033Ndgec(l=elfcdcdkelBl7fgdfeldfdgPd=deecdkelfcdedkOhd4ecelfgMi,dh+jYdedg7i"));
        intent.putExtra(com.mob.commons.o.a("025YdgecPl'elfcdcdkel4lKfgdfel@eLdfdhdf_l?el,ePdjffdkdf<li"), this.f52870b);
        return intent;
    }

    @Override // com.mob.commons.b.g
    protected g.c a(IBinder iBinder) {
        g.c cVar = new g.c();
        cVar.f52883b = a(com.mob.commons.o.a("004ZecdfdeAh"), iBinder, com.mob.commons.o.a("026$dgecBl:elfcdcdkeleddefcelgifgdfegSh]egdkPdi$dhfhdfdg4i"), 3, new String[0]);
        cVar.f52882a = k();
        return cVar;
    }
}
