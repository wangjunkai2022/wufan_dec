package com.bytedance.pangle.transform;

import androidx.annotation.Keep;
import androidx.fragment.app.FragmentActivity;
@Keep
/* loaded from: classes2.dex */
public class HostPartUtils {
    private Class fragmentActivityClazz;

    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final HostPartUtils f10377a;

        static {
            System.out.println("HostPartUtils SingletonHolder");
            f10377a = new HostPartUtils();
        }
    }

    public HostPartUtils() {
        try {
            this.fragmentActivityClazz = FragmentActivity.class;
        } catch (Throwable unused) {
        }
    }

    public static FragmentActivity getFragmentActivity(Object obj, String str) {
        return (FragmentActivity) ZeusTransformUtils._getActivity(obj, str);
    }

    public static final Class getFragmentActivityClass() {
        System.out.println("HostPartUtils getFragmentActivityClass");
        return a.f10377a.fragmentActivityClazz;
    }
}
