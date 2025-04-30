package com.xinzhu.overmind.server.pm.installer;

import com.xinzhu.overmind.entity.pm.InstallOption;
import com.xinzhu.overmind.server.pm.MindPackageSettings;
import com.xinzhu.overmind.utils.j;
/* compiled from: RemoveUserExecutor.java */
/* loaded from: classes3.dex */
public class f implements d {
    @Override // com.xinzhu.overmind.server.pm.installer.d
    public int a(MindPackageSettings ps, InstallOption option, int userId) {
        String str = ps.f64563a.f64526m;
        j.j(com.xinzhu.overmind.a.r(str, userId));
        j.j(com.xinzhu.overmind.a.x(str, userId));
        return 0;
    }
}
