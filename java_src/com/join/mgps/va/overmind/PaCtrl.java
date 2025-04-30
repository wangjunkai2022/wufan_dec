package com.join.mgps.va.overmind;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PaCtrl.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086 J\u0019\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0086 ¨\u0006\f"}, d2 = {"Lcom/join/mgps/va/overmind/PaCtrl;", "", "", "dir", "", "mountLibGggg", "name", "", "handle", "onSoLoaded", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class PaCtrl {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final PaCtrl f52331a = new PaCtrl();

    static {
        System.loadLibrary("pactrl");
    }

    private PaCtrl() {
    }

    public final native void mountLibGggg(@NotNull String str);

    public final native void onSoLoaded(@NotNull String str, long j4);
}
