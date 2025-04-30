package com.mob.commons.cc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes4.dex */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private String f52978a;

    /* renamed from: b  reason: collision with root package name */
    private int f52979b;

    /* renamed from: c  reason: collision with root package name */
    private r f52980c;

    /* renamed from: d  reason: collision with root package name */
    private int f52981d;

    /* renamed from: e  reason: collision with root package name */
    private int f52982e;

    /* renamed from: f  reason: collision with root package name */
    private v f52983f;

    /* loaded from: classes4.dex */
    public static class a implements t<a> {

        /* renamed from: a  reason: collision with root package name */
        public Throwable f52984a;

        /* renamed from: b  reason: collision with root package name */
        public Object f52985b;

        public boolean a() {
            return this.f52984a != null;
        }

        @Override // com.mob.commons.cc.t
        public boolean a(a aVar, Class<a> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
            if ("isError".equals(str) && objArr.length == 0) {
                objArr2[0] = Boolean.valueOf(aVar.a());
                return true;
            } else if ("getError".equals(str) && objArr.length == 0) {
                objArr2[0] = aVar.f52984a;
                return true;
            } else if ("getResult".equals(str) && objArr.length == 0) {
                objArr2[0] = aVar.f52985b;
                return true;
            } else {
                return false;
            }
        }
    }

    public y(String str, int i2, ArrayList<x> arrayList, ArrayList<Object> arrayList2, int i4, int i5, r rVar) {
        this.f52978a = str;
        this.f52979b = i2;
        this.f52983f = new v(arrayList, arrayList2);
        this.f52981d = i4;
        this.f52982e = i5;
        this.f52980c = rVar;
    }

    public y a(r rVar, String str, int i2) {
        if (this.f52979b <= 1) {
            return this;
        }
        ArrayList<x> arrayList = new ArrayList<>();
        a(str, i2, arrayList, 0);
        return new y(null, 1, arrayList, new ArrayList(), 0, arrayList.size(), rVar);
    }

    public LinkedList<Object> b(Object... objArr) throws Throwable {
        r b4 = this.f52980c.b();
        int i2 = this.f52979b;
        if (i2 != 0) {
            if (objArr.length == i2) {
                for (int length = objArr.length - 1; length >= 0; length--) {
                    b4.a(objArr[length]);
                }
            } else if (objArr.length < i2) {
                for (int length2 = objArr.length; length2 < this.f52979b; length2++) {
                    b4.a((Object) null);
                }
                for (int length3 = objArr.length - 1; length3 >= 0; length3--) {
                    b4.a(objArr[length3]);
                }
            } else {
                ArrayList arrayList = new ArrayList(0);
                for (int i4 = this.f52979b - 1; i4 < objArr.length; i4++) {
                    arrayList.add(objArr[i4]);
                }
                b4.a(arrayList);
                for (int i5 = this.f52979b - 2; i5 >= 0; i5--) {
                    b4.a(objArr[i5]);
                }
            }
        }
        LinkedList<Object> linkedList = new LinkedList<>();
        this.f52983f.a(this.f52981d, this.f52982e, b4, linkedList);
        return linkedList;
    }

    private void a(String str, int i2, ArrayList<x> arrayList, int i4) {
        if (i4 != 0) {
            x xVar = new x(29);
            xVar.f52951b = str;
            xVar.f52952c = i2;
            xVar.f52958i = 1;
            arrayList.add(xVar);
        }
        x xVar2 = new x(1);
        xVar2.f52951b = str;
        xVar2.f52952c = i2;
        StringBuilder sb = new StringBuilder();
        sb.append("arg");
        int i5 = i4 + 1;
        sb.append(i5);
        xVar2.f52957h = sb.toString();
        arrayList.add(xVar2);
        int i6 = this.f52979b;
        if (i4 < i6 - 1) {
            a(str, i2, arrayList, i5);
            x xVar3 = new x(28);
            xVar3.f52951b = str;
            xVar3.f52952c = i2;
            arrayList.add(xVar3);
        } else {
            for (int i7 = i6 - 1; i7 >= 0; i7 += -1) {
                x xVar4 = new x(3);
                xVar4.f52951b = str;
                xVar4.f52952c = i2;
                xVar4.f52957h = "arg" + (i7 + 1);
                arrayList.add(xVar4);
            }
            if (this.f52978a == null) {
                x xVar5 = new x(2);
                xVar5.f52951b = str;
                xVar5.f52952c = i2;
                xVar5.f52966q = this;
                arrayList.add(xVar5);
                x xVar6 = new x(32);
                xVar6.f52951b = str;
                xVar6.f52952c = i2;
                xVar6.f52958i = this.f52979b;
                arrayList.add(xVar6);
            } else {
                x xVar7 = new x(31);
                xVar7.f52951b = str;
                xVar7.f52952c = i2;
                xVar7.f52957h = this.f52978a;
                xVar7.f52958i = this.f52979b;
                arrayList.add(xVar7);
            }
            Iterator<x> it2 = this.f52983f.a().iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().f52950a == 28) {
                        x xVar8 = new x(28);
                        xVar8.f52951b = str;
                        xVar8.f52952c = i2;
                        arrayList.add(xVar8);
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (i4 != 0) {
            x xVar9 = new x(30);
            xVar9.f52951b = str;
            xVar9.f52952c = i2;
            arrayList.add(xVar9);
        }
    }

    public a a(Object... objArr) {
        a aVar = new a();
        try {
            LinkedList<Object> b4 = b(objArr);
            if (!b4.isEmpty()) {
                aVar.f52985b = b4.get(0);
            }
        } catch (Throwable th) {
            aVar.f52984a = th;
        }
        return aVar;
    }

    public static y a(String str, int i2, ArrayList<x> arrayList, ArrayList<Object> arrayList2, int i4, int i5, r rVar) {
        return new y(str, i2, arrayList, arrayList2, i4, i5, rVar) { // from class: com.mob.commons.cc.y.1
            @Override // com.mob.commons.cc.y
            public LinkedList<Object> b(Object... objArr) throws Throwable {
                return new LinkedList<>();
            }
        };
    }
}
