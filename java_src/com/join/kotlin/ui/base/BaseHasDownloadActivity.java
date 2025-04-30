package com.join.kotlin.ui.base;

import android.os.Bundle;
import com.BaseAppCompatActivity;
import com.join.mgps.Util.c0;
import com.join.mgps.event.l;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseHasDownloadActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¨\u0006\r"}, d2 = {"Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;", "Lcom/BaseAppCompatActivity;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "onDestroy", "Lcom/join/mgps/event/l;", "downloadTaskEvent", "onEventMainThread", "onDownloadStatusEventReceved", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public abstract class BaseHasDownloadActivity extends BaseAppCompatActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        c0.a().d(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        c0.a().e(this);
    }

    public abstract void onDownloadStatusEventReceved(@NotNull l lVar);

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull l downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        onDownloadStatusEventReceved(downloadTaskEvent);
    }
}
