package com.psk.frame.roomlibrary.volcano;

import android.content.Context;
import com.psk.frame.roomlibrary.volcano.dao.VolcanoEventDao;
import com.psk.frame.roomlibrary.volcano.database.VolcanoDataBaseHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: EventVolcanoDataBasFactory.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006R\u0016\u0010\n\u001a\u00020\b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0005\u0010\tR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/psk/frame/roomlibrary/volcano/a;", "", "Landroid/content/Context;", "context", "", "a", "Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;", "b", "Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;", "Lcom/psk/frame/roomlibrary/volcano/database/VolcanoDataBaseHelper;", "database", "Lcom/psk/frame/roomlibrary/volcano/dao/VolcanoEventDao;", "volcanoEventDao", "<init>", "()V", "RoomLibrary_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static VolcanoDataBaseHelper f56253a;

    /* renamed from: b  reason: collision with root package name */
    private static VolcanoEventDao f56254b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f56255c = new a();

    private a() {
    }

    public final void a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        f56253a = new VolcanoDataBaseHelper(context);
    }

    @NotNull
    public final VolcanoEventDao b() {
        if (f56254b == null) {
            VolcanoDataBaseHelper volcanoDataBaseHelper = f56253a;
            if (volcanoDataBaseHelper == null) {
                Intrinsics.throwUninitializedPropertyAccessException("database");
            }
            f56254b = new VolcanoEventDao(volcanoDataBaseHelper);
        }
        VolcanoEventDao volcanoEventDao = f56254b;
        Intrinsics.checkNotNull(volcanoEventDao);
        return volcanoEventDao;
    }
}
