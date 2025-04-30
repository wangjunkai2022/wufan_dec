package com.join.kotlin.ui.cloudarchive.dialog;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.mgps.service.CommonService_;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageDialogViewmodle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fR(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\u0005\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;", "Landroidx/lifecycle/ViewModel;", "Landroidx/lifecycle/MutableLiveData;", "", "orientation", "Landroidx/lifecycle/MutableLiveData;", "getOrientation", "()Landroidx/lifecycle/MutableLiveData;", "setOrientation", "(Landroidx/lifecycle/MutableLiveData;)V", "", CommonService_.b0.f51756b, "getImagePath", "setImagePath", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ImageDialogViewmodle extends ViewModel {
    @NotNull
    private MutableLiveData<String> imagePath = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> orientation = new MutableLiveData<>();

    @NotNull
    public final MutableLiveData<String> getImagePath() {
        return this.imagePath;
    }

    @NotNull
    public final MutableLiveData<Integer> getOrientation() {
        return this.orientation;
    }

    public final void setImagePath(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.imagePath = mutableLiveData;
    }

    public final void setOrientation(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.orientation = mutableLiveData;
    }
}
