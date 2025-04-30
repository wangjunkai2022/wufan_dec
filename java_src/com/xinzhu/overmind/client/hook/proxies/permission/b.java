package com.xinzhu.overmind.client.hook.proxies.permission;

import android.content.pm.PackageInfo;
import android.content.pm.PermissionInfo;
import android.os.IInterface;
import com.xinzhu.haunted.android.app.i;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.android.permission.a;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.e;
import com.xinzhu.overmind.client.hook.common.c;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
import java.util.Arrays;
/* compiled from: PermissionManagerStub.java */
/* loaded from: classes.dex */
public class b extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64216f = b.class.getSimpleName();

    /* renamed from: g  reason: collision with root package name */
    static final String f64217g = "permissionmgr";

    /* compiled from: PermissionManagerStub.java */
    /* loaded from: classes.dex */
    static class a extends g {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "checkPermission";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            PermissionInfo[] permissionInfoArr;
            String[] strArr;
            String str = (String) args[0];
            PackageInfo l4 = Overmind.getMindPackageManager().l(e.getVPackageName(), 4096, e.getUserId());
            if (l4 != null && (permissionInfoArr = l4.permissions) != null) {
                for (PermissionInfo permissionInfo : permissionInfoArr) {
                    if (str.equals(permissionInfo.name) && (strArr = l4.requestedPermissions) != null && Arrays.asList(strArr).contains(str)) {
                        return 0;
                    }
                }
            }
            args[1] = Overmind.getHostPkg();
            args[2] = Integer.valueOf(Overmind.getHostUserId());
            return method.invoke(who, args);
        }
    }

    /* compiled from: PermissionManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.permission.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0417b extends g {
        C0417b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getPermissionInfo";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            String str = (String) args[0];
            PackageInfo l4 = Overmind.getMindPackageManager().l(e.getVPackageName(), 4096, e.getUserId());
            com.xinzhu.overmind.b.c(b.f64216f, "here getPermissionInfo " + str + " " + l4.permissions);
            PermissionInfo[] permissionInfoArr = l4.permissions;
            if (permissionInfoArr != null) {
                for (PermissionInfo permissionInfo : permissionInfoArr) {
                    if (str.equals(permissionInfo.name) && l4.requestedPermissions != null) {
                        return permissionInfo;
                    }
                }
            }
            args[1] = Overmind.getHostPkg();
            return method.invoke(who, args);
        }
    }

    public b() {
        super(q.h(f64217g));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0383a.a(q.h(f64217g));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64217g);
        if (com.xinzhu.haunted.android.app.g.t()) {
            com.xinzhu.haunted.android.app.g.o0((IInterface) proxyInvocation);
        }
        try {
            i iVar = new i(Overmind.getPackageManager());
            if (iVar.b() != proxyInvocation) {
                iVar.c((IInterface) proxyInvocation);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.xinzhu.overmind.client.hook.c, java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        com.xinzhu.overmind.utils.helpers.a.c(args);
        return super.invoke(proxy, method, args);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new d("getPermissionFlags", d.f64083e, d.f64085g));
        d(new d("updatePermissionFlags", d.f64083e, d.f64085g));
        d(new d("updatePermissionFlagsForAllApps", d.f64083e, d.f64085g));
        d(new a());
        d(new C0417b());
        d(new d("getWhitelistedRestrictedPermissions", d.f64083e, d.f64085g));
        d(new d("addWhitelistedRestrictedPermission", d.f64083e, d.f64085g));
        d(new d("removeWhitelistedRestrictedPermission", d.f64083e, d.f64085g));
        d(new d("grantRuntimePermission", d.f64083e, d.f64085g));
        d(new d("revokeRuntimePermission", d.f64083e, 2));
        d(new d("setDefaultBrowser", d.f64083e, d.f64085g));
        d(new d("getDefaultBrowser", d.f64083e, d.f64085g));
        d(new d("grantDefaultPermissionsToEnabledCarrierApps", d.f64083e, d.f64085g));
        d(new d("grantDefaultPermissionsToEnabledImsServices", d.f64083e, d.f64085g));
        d(new d("grantDefaultPermissionsToEnabledTelephonyDataServices", d.f64083e, d.f64085g));
        d(new d("revokeDefaultPermissionsFromDisabledTelephonyDataServices", d.f64083e, d.f64085g));
        d(new d("grantDefaultPermissionsToActiveLuiApp", d.f64083e, d.f64085g));
        d(new d("revokeDefaultPermissionsFromLuiApps", d.f64083e, d.f64085g));
        d(new d("shouldShowRequestPermissionRationale", d.f64083e, d.f64085g));
        d(new d("isPermissionRevokedByPolicy", d.f64083e, d.f64085g));
        d(new d("startOneTimePermissionSession", d.f64083e, 1));
        d(new d("stopOneTimePermissionSession", d.f64083e, d.f64085g));
        d(new d("getAutoRevokeExemptionRequestedPackages", d.f64083e, d.f64085g));
        d(new d("getAutoRevokeExemptionGrantedPackages", d.f64083e, d.f64085g));
        d(new d("setAutoRevokeWhitelisted", d.f64083e, d.f64085g));
        d(new d("isAutoRevokeWhitelisted", d.f64083e, d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.e("checkUidPermission", d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.e("checkDeviceIdentifierAccess", d.f64085g));
        d(new c("addOnPermissionsChangeListener", 0));
    }
}
