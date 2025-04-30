package com.papa.controller.core;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.view.InputDevice;
import androidx.core.view.InputDeviceCompat;
import com.papa.controller.component.bluetooth.a;
import com.papa.controller.component.inputmanagercompat.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class ControllerManager {

    /* renamed from: i  reason: collision with root package name */
    private static ControllerManager f54722i;

    /* renamed from: a  reason: collision with root package name */
    private final String f54723a = "ControllerManager";

    /* renamed from: b  reason: collision with root package name */
    private Context f54724b;

    /* renamed from: c  reason: collision with root package name */
    private com.papa.controller.component.bluetooth.a f54725c;

    /* renamed from: d  reason: collision with root package name */
    private a.d f54726d;

    /* renamed from: e  reason: collision with root package name */
    private com.papa.controller.component.inputmanagercompat.a f54727e;

    /* renamed from: f  reason: collision with root package name */
    private a.b f54728f;

    /* renamed from: g  reason: collision with root package name */
    private List<c> f54729g;

    /* renamed from: h  reason: collision with root package name */
    private List<d> f54730h;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ControllerManagerException extends Exception {
        public ControllerManagerException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements a.d {
        a() {
        }

        @Override // com.papa.controller.component.bluetooth.a.d
        public void a(BluetoothDevice bluetoothDevice) {
            ControllerManager.this.l();
        }

        @Override // com.papa.controller.component.bluetooth.a.d
        public void b(BluetoothDevice bluetoothDevice) {
            ControllerManager.this.p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b implements a.b {
        b() {
        }

        @Override // com.papa.controller.component.inputmanagercompat.a.b
        public void onInputDeviceAdded(int i2) {
            ControllerManager.this.l();
        }

        @Override // com.papa.controller.component.inputmanagercompat.a.b
        public void onInputDeviceChanged(int i2) {
        }

        @Override // com.papa.controller.component.inputmanagercompat.a.b
        public void onInputDeviceRemoved(int i2) {
            ControllerManager.this.p();
        }
    }

    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private int f54734a;

        /* renamed from: b  reason: collision with root package name */
        private String f54735b;

        /* renamed from: c  reason: collision with root package name */
        private String f54736c;

        /* renamed from: d  reason: collision with root package name */
        private Object f54737d;

        public String a() {
            return this.f54736c;
        }

        public Object b() {
            return this.f54737d;
        }

        public int c() {
            return this.f54734a;
        }

        public String d() {
            return this.f54735b;
        }

        public void e(String str) {
            this.f54736c = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            String str = this.f54735b;
            if (str == null ? cVar.f54735b == null : str.equals(cVar.f54735b)) {
                return this.f54736c.equals(cVar.f54736c);
            }
            return false;
        }

        public void f(Object obj) {
            this.f54737d = obj;
        }

        public void g(int i2) {
            this.f54734a = i2;
        }

        public void h(String str) {
            this.f54735b = str;
        }

        public int hashCode() {
            String str = this.f54735b;
            return ((str != null ? str.hashCode() : 0) * 31) + this.f54736c.hashCode();
        }
    }

    /* loaded from: classes4.dex */
    public interface d {
        void a(c cVar);

        void b(c cVar);
    }

    public ControllerManager(Context context) {
        this.f54724b = context;
        try {
            i();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private Collection<c> g(List<c> list, List<c> list2) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        for (c cVar : list) {
            hashMap.put(cVar.a(), cVar);
        }
        for (c cVar2 : list2) {
            hashMap2.put(cVar2.a(), cVar2);
        }
        Collection<c> values = hashMap.values();
        values.removeAll(hashMap2.values());
        return values;
    }

    public static ControllerManager h(Context context) {
        if (f54722i == null) {
            f54722i = new ControllerManager(context);
        }
        return f54722i;
    }

    private void i() throws Exception {
        if (this.f54724b != null) {
            if (this.f54729g == null) {
                this.f54729g = new ArrayList();
                return;
            }
            return;
        }
        throw new ControllerManagerException("Context is required!");
    }

    public static Object j(Object obj, String str, Class[] clsArr, Object... objArr) {
        try {
            return obj.getClass().getDeclaredMethod(str, clsArr).invoke(obj, objArr);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private boolean k(int i2) {
        return (i2 & InputDeviceCompat.SOURCE_GAMEPAD) == 1025 || (i2 & InputDeviceCompat.SOURCE_JOYSTICK) == 16777232;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l() {
        try {
            for (c cVar : g(d(), this.f54729g)) {
                this.f54729g.add(cVar);
                m(cVar);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private synchronized void m(c cVar) {
        List<d> list = this.f54730h;
        if (list != null && list.size() != 0) {
            for (d dVar : this.f54730h) {
                if (dVar != null) {
                    dVar.a(cVar);
                }
            }
        }
    }

    private synchronized void n(c cVar) {
        List<d> list = this.f54730h;
        if (list != null && list.size() != 0) {
            for (d dVar : this.f54730h) {
                if (dVar != null) {
                    dVar.b(cVar);
                }
            }
        }
    }

    private synchronized void o() {
        List<c> d4 = d();
        try {
            for (c cVar : g(this.f54729g, d4)) {
                this.f54729g.remove(cVar);
                n(cVar);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        try {
            for (c cVar2 : g(d4, this.f54729g)) {
                this.f54729g.add(cVar2);
                m(cVar2);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() {
        try {
            for (c cVar : g(this.f54729g, d())) {
                this.f54729g.remove(cVar);
                n(cVar);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void s() {
        Context context = this.f54724b;
        if (context == null) {
            return;
        }
        com.papa.controller.component.bluetooth.a aVar = new com.papa.controller.component.bluetooth.a(context);
        this.f54725c = aVar;
        try {
            if (aVar.p()) {
                a aVar2 = new a();
                this.f54726d = aVar2;
                this.f54725c.u(aVar2);
                this.f54725c.x();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void t() {
        try {
            if (this.f54727e == null) {
                this.f54727e = a.C0270a.a(this.f54724b);
            }
            if (this.f54727e != null) {
                b bVar = new b();
                this.f54728f = bVar;
                this.f54727e.c(bVar, new Handler());
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void v() {
        com.papa.controller.component.bluetooth.a aVar = this.f54725c;
        if (aVar != null) {
            aVar.y();
        }
    }

    private void w() {
        com.papa.controller.component.inputmanagercompat.a aVar = this.f54727e;
        if (aVar != null) {
            aVar.b(this.f54728f);
        }
    }

    public void c(d dVar) {
        if (this.f54730h == null) {
            this.f54730h = new ArrayList();
        }
        this.f54730h.add(dVar);
    }

    public List<c> d() {
        boolean z3;
        List<BluetoothDevice> k4;
        ArrayList arrayList = new ArrayList();
        if (this.f54729g == null) {
            this.f54729g = new ArrayList();
        }
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap = new HashMap();
        ArrayList<InputDevice> arrayList3 = new ArrayList();
        HashMap hashMap2 = new HashMap();
        com.papa.controller.component.inputmanagercompat.a aVar = this.f54727e;
        int i2 = 16;
        if (aVar != null) {
            int[] e4 = aVar.e();
            int length = e4.length;
            int i4 = 0;
            while (i4 < length) {
                InputDevice d4 = this.f54727e.d(e4[i4]);
                if (d4 != null) {
                    String name = d4.getName();
                    int sources = d4.getSources();
                    try {
                        if (Build.VERSION.SDK_INT >= i2 && !((Boolean) j(d4, "isExternal", null, new Object[0])).booleanValue()) {
                        }
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    if (k(sources)) {
                        arrayList3.add(d4);
                        hashMap2.put(name, d4);
                    }
                }
                i4++;
                i2 = 16;
            }
        }
        try {
            com.papa.controller.component.bluetooth.a aVar2 = this.f54725c;
            if (aVar2 != null && aVar2.p() && (k4 = this.f54725c.k()) != null && k4.size() != 0) {
                for (BluetoothDevice bluetoothDevice : k4) {
                    if (bluetoothDevice.getBluetoothClass().getMajorDeviceClass() == 1280 && (Build.VERSION.SDK_INT < 30 || hashMap2.containsKey(bluetoothDevice.getName()))) {
                        arrayList2.add(bluetoothDevice);
                        hashMap.put(bluetoothDevice.getName(), bluetoothDevice);
                        String name2 = bluetoothDevice.getName();
                        String address = bluetoothDevice.getAddress();
                        c cVar = new c();
                        cVar.f(bluetoothDevice);
                        cVar.h(name2);
                        cVar.e(address);
                        arrayList.add(cVar);
                    }
                }
            }
            if (Build.VERSION.SDK_INT < 16) {
                return arrayList;
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        int size = arrayList3.size();
        int size2 = arrayList2.size();
        Iterator it2 = arrayList2.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (!hashMap2.containsKey(((BluetoothDevice) it2.next()).getName())) {
                    z3 = false;
                    break;
                }
            } else {
                z3 = true;
                break;
            }
        }
        ArrayList arrayList4 = new ArrayList();
        if (size > size2) {
            if (z3 || size2 == 0) {
                for (InputDevice inputDevice : arrayList3) {
                    if (!hashMap.containsKey(inputDevice.getName())) {
                        arrayList4.add(inputDevice);
                        int size3 = arrayList4.size();
                        String name3 = inputDevice.getName();
                        StringBuilder sb = new StringBuilder();
                        sb.append("OTG");
                        sb.append(size3 == 0 ? "" : size3 + "");
                        String sb2 = sb.toString();
                        c cVar2 = new c();
                        cVar2.f(inputDevice);
                        cVar2.h(name3);
                        cVar2.e(sb2);
                        arrayList.add(cVar2);
                    }
                }
            } else {
                int i5 = size - size2;
                for (int i6 = 0; i6 < i5; i6++) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("OTG");
                    sb3.append(i6 == 0 ? "" : i6 + "");
                    String sb4 = sb3.toString();
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("OTG");
                    sb5.append(i6 == 0 ? "" : i6 + "");
                    String sb6 = sb5.toString();
                    c cVar3 = new c();
                    cVar3.h(sb4);
                    cVar3.e(sb6);
                    arrayList.add(cVar3);
                }
            }
        }
        return arrayList;
    }

    public int e() {
        List<c> list = this.f54729g;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<c> f() {
        return this.f54729g;
    }

    public void q() {
        List<d> list = this.f54730h;
        if (list == null) {
            return;
        }
        list.clear();
    }

    public void r(d dVar) {
        List<d> list = this.f54730h;
        if (list == null) {
            return;
        }
        list.remove(dVar);
    }

    public void u() {
        if (this.f54724b == null) {
            return;
        }
        s();
        t();
    }

    public void x() {
        v();
        w();
    }
}
