package com.mob.tools.utils;

import android.os.Build;
import android.text.TextUtils;
import com.mob.commons.i;
import com.mob.tools.MobLog;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f53978a;

    /* renamed from: b  reason: collision with root package name */
    private String f53979b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mob.tools.utils.b$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f53980a;

        static {
            int[] iArr = new int[a.values().length];
            f53980a = iArr;
            try {
                iArr[a.MIUI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f53980a[a.EMUI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f53980a[a.AMIGO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f53980a[a.FLYME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f53980a[a.LENOVO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f53980a[a.ONEUI.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f53980a[a.COLOR_OS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f53980a[a.FUNTOUCH_OS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f53980a[a.EUI.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f53980a[a.SENSE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f53980a[a.GOOGLE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f53980a[a.SMARTISAN.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f53980a[a.ONEPLUS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f53980a[a.YUNOS.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f53980a[a.QIHOO.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f53980a[a.NUBIA.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f53980a[a.LGE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum a {
        MIUI(i.a("006$fnfgfhge_n6fg")),
        EMUI(i.a("006e1fefhhfYk;fg")),
        FLYME(i.a("005nk5fgiefe")),
        ONEUI(i.a("007HhifhKn=hifefmhh")),
        COLOR_OS(i.a("004-ge6gg;ge")),
        FUNTOUCH_OS(i.a("004l3fg7l6ge")),
        EUI(i.a("0043gf+kfl")),
        SENSE(i.a("003efJfi")),
        GOOGLE(i.a("0063hhgegehhgf=k")),
        LENOVO(i.a("006QgfEkQfmgeYlRge")),
        SMARTISAN(i.a("006FfiJe8fefgiefg")),
        ONEPLUS(i.a("0074gefm>kg(gffehi")),
        YUNOS(i.a("0059fkfefmgehi")),
        QIHOO(i.a("005m(fg%eTgege")),
        NUBIA(i.a("005Ufmfehefgfh")),
        LGE(i.a("002;gfhh")),
        AMIGO(i.a("005Ajhfgfmgffg")),
        OTHER("");
        

        /* renamed from: s  reason: collision with root package name */
        private String f54000s;

        a(String str) {
            this.f54000s = str;
        }

        public String a() {
            return this.f54000s;
        }
    }

    private b() {
    }

    public static b a() {
        if (f53978a == null) {
            synchronized (b.class) {
                if (f53978a == null) {
                    f53978a = new b();
                }
            }
        }
        return f53978a;
    }

    private a c() {
        a[] values;
        if (TextUtils.isEmpty(a("ro.miui.ui.version.code")) && TextUtils.isEmpty(a(i.a("023[fjgegnLn7fgfefggnfefggn3lk(fjhifggefmgnfmfh3nk"))) && TextUtils.isEmpty(a("ro.miui.internal.storage"))) {
            if (TextUtils.isEmpty(a(i.a("021:fjgegnhefefggf(j*gn(lk,fjhifggefmgn_kn9fefg"))) && TextUtils.isEmpty(a("ro.build.hw_emui_api_level")) && TextUtils.isEmpty(a("ro.confg.hw_systemversion"))) {
                if (TextUtils.isEmpty(a(i.a("026gkTfjhifghiHfBgnhifkhignfehiQk>gnhjgffk$nkLgnfgfigefm"))) && TextUtils.isEmpty(a(i.a("0261fjgegnNnk!fgiefegnhiBkfSfeGgZhffgiefhfjQjZgnhjgffkJnk"))) && TextUtils.isEmpty(a(i.a("0181fjgegnhjgffkJnkRgnGg2fehegffghi:ekj")))) {
                    if (TextUtils.isEmpty(a(i.a("024;figeOnWgnhifh_n%hifefmhhgnhiMgk)hhgn5jOfghifhhegf[k"))) && TextUtils.isEmpty(a("init.svc.health-hal-2-1-samsung"))) {
                        if (!TextUtils.isEmpty(a(i.a("0245fjgegnhefefggfRj7gnOlk+fjhifggefmgnge^gg<gefjge1n")))) {
                            return a.COLOR_OS;
                        }
                        if (TextUtils.isEmpty(a(i.a("027Efjgegn.l_fg:l+gegngehignhefefggfPj;gn;j]fghiWg>gffhfkgnfg2j"))) && TextUtils.isEmpty(a(i.a("018;fjgegn'l%fg+l:gegngehignQlk6fjhifggefm")))) {
                            if (!TextUtils.isEmpty(a(i.a("023Gfjgegngf(kfl'gnfjWkOgfUk;fhhi8k+gn9lkFfjhifggefm")))) {
                                return a.EUI;
                            }
                            if (!TextUtils.isEmpty(a(i.a("022XfjgegnhefefggfHjGgnhi?kTfmhiIk'gn@lkBfjhifggefm")))) {
                                return a.SENSE;
                            }
                            if (i.a("014%fhfm=j*fjgefg>j5jkhhgegehhgfBk").equals(a(i.a("026Sfjgegnfige@n'gnhhgegehhgf;k?gnfigffgEk8fm:f?fgTj0hefhhiUk")))) {
                                return a.GOOGLE;
                            }
                            if (!TextUtils.isEmpty(a(i.a("020!fjgegnhi[nYfhfj%fOfghifhfmgn]lk5fjhifggefm")))) {
                                return a.SMARTISAN;
                            }
                            if (!TextUtils.isEmpty(a(i.a("014$fjgegnfjge7n(gn@lk1fjhifggefm")))) {
                                return a.ONEPLUS;
                            }
                            if (!TextUtils.isEmpty(a(i.a("020AfjgegnfiDf6fhgnfkfefmgehign!lk?fjhifggefm")))) {
                                return a.YUNOS;
                            }
                            if (!TextUtils.isEmpty(a(i.a("0183fjgegnhefefggf:j)gnfefg+lk0fjhifggefm")))) {
                                return a.QIHOO;
                            }
                            if (TextUtils.isEmpty(a(i.a("023Wfjgegnhefefggf%j<gnfmfehefgfhgnfjgeSn+gnfige?jk"))) && TextUtils.isEmpty(a(i.a("015HfjgegnhefefggfOj[gnfjgeJn=gnfgVj")))) {
                                if (!TextUtils.isEmpty(a(i.a("021Phifkhigngfhh%k)gngfhh^njnVffOlk[fjhifggefm")))) {
                                    return a.LGE;
                                }
                                if (!TextUtils.isEmpty(a(i.a("019,fjgegnhefefggf4j$gnXj.fghi_gSgffhfkgnfg@j"))) && a(i.a("0199fjgegnhefefggf0jIgnUjPfghi1gEgffhfkgnfg]j")).matches("amigo([\\d.]+)[a-zA-Z]*")) {
                                    return a.AMIGO;
                                }
                                for (a aVar : a.values()) {
                                    if (aVar.a().equalsIgnoreCase(d())) {
                                        return aVar;
                                    }
                                }
                                return a.OTHER;
                            }
                            return a.NUBIA;
                        }
                        return a.FUNTOUCH_OS;
                    }
                    return a.ONEUI;
                }
                return a.FLYME;
            }
            return a.EMUI;
        }
        return a.MIUI;
    }

    private String d() {
        if (TextUtils.isEmpty(this.f53979b)) {
            this.f53979b = Build.MANUFACTURER;
        }
        return this.f53979b;
    }

    public String b() {
        try {
            return a(c());
        } catch (Throwable th) {
            MobLog.getInstance().e(th);
            return null;
        }
    }

    private String a(a aVar) {
        String a4;
        switch (AnonymousClass1.f53980a[aVar.ordinal()]) {
            case 1:
                a4 = a(i.a("023Nfjgegn4nWfgfefggnfefggn<lk*fjhifggefmgnfmfhYnk"));
                break;
            case 2:
                a4 = a(i.a("021*fjgegnhefefggf5j[gn8lk0fjhifggefmgn!kn'fefg"));
                break;
            case 3:
            case 4:
                a4 = a(i.a("019Wfjgegnhefefggf@j3gn,jUfghiEgNgffhfkgnfg9j"));
                break;
            case 5:
            case 6:
                a4 = a(i.a("028=fjgegnhefefggf.j=gn]lkAfjhifggefmgnfgfmfifj9knk<fm2f?fhgf"));
                break;
            case 7:
                a4 = a(i.a("024;fjgegnhefefggfAj$gn^lkZfjhifggefmgnge?gg@gefjgeNn"));
                break;
            case 8:
                a4 = a(i.a("0278fjgegn%l]fgWl'gegngehignhefefggf'jBgnUjGfghiOg4gffhfkgnfgBj"));
                if (TextUtils.isEmpty(a4)) {
                    a4 = a(i.a("018'fjgegnGl%fgBl2gegngehign=lk$fjhifggefm"));
                    break;
                }
                break;
            case 9:
                a4 = a(i.a("023'fjgegngfOkfl2gnfjMkKgf2kTfhhi4kYgnZlk-fjhifggefm"));
                break;
            case 10:
                a4 = a(i.a("022-fjgegnhefefggfWj)gnhi%k8fmhi<k,gn,lk>fjhifggefm"));
                break;
            case 11:
                a4 = a(i.a("024,fjgegnhefefggf]j.gn1lk)fjhifggefmgnfjPkBgfXk]fhhiNk"));
                break;
            case 12:
                a4 = a(i.a("0209fjgegnhiSnFfhfj0fKfghifhfmgn6lkQfjhifggefm"));
                break;
            case 13:
                a4 = a(i.a("014MfjgegnfjgeTnPgnVlk.fjhifggefm"));
                break;
            case 14:
                a4 = a(i.a("020?fjgegnfi5f_fhgnfkfefmgehign[lk+fjhifggefm"));
                break;
            case 15:
                a4 = a(i.a("018FfjgegnhefefggfFj6gnfefg5lk?fjhifggefm"));
                break;
            case 16:
                a4 = a(i.a("023:fjgegnhefefggfIjGgnfmfehefgfhgnfjge=nGgnfigeAjk"));
                if (TextUtils.isEmpty(a4)) {
                    a4 = a(i.a("015Sfjgegnhefefggf^j9gnfjgeDn]gnfg*j"));
                    break;
                }
                break;
            case 17:
                a4 = a(i.a("0215hifkhigngfhh!kIgngfhh9njnYff]lk1fjhifggefm"));
                break;
            default:
                a4 = a(i.a("019<fjgegnhefefggf(j6gn;jVfghiKg2gffhfkgnfg]j"));
                break;
        }
        return TextUtils.isEmpty(a4) ? a(i.a("019Mfjgegnhefefggf>j-gn?j-fghiQg0gffhfkgnfg+j")) : a4;
    }

    private String a(String str) {
        try {
            Object invokeStaticMethod = ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(i.a("0273fhfmTjJfjgefg%jEgngehigngjfkhi*fkn;ijfjgeRgk)fjIfFfgMk!hi")), i.a("003Ohh>kf"), str);
            return invokeStaticMethod != null ? String.valueOf(invokeStaticMethod) : "";
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return "";
        }
    }
}
