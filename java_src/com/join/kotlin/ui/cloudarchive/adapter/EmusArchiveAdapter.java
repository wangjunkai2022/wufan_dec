package com.join.kotlin.ui.cloudarchive.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.Display;
import android.view.WindowManager;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.je;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.mgps.dto.CloudListDataBean;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EmusArchiveAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b-\u0010.J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\"\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\"\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014R\u0019\u0010\u000e\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R!\u0010\u0014\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\"\u0010\u0019\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0019\u0010&\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b&\u0010\u000f\u001a\u0004\b'\u0010\u0011R\u0019\u0010)\u001a\u00020(8\u0006@\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,¨\u0006/"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/join/mgps/dto/CloudListDataBean;", "Landroidx/databinding/ViewDataBinding;", "", "viewType", "getLayoutResId", "binding", "item", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "onBindItem", "onBindItemPayloads", "width", "I", "getWidth", "()I", "Landroid/view/Display;", "kotlin.jvm.PlatformType", "defaultDisplay", "Landroid/view/Display;", "getDefaultDisplay", "()Landroid/view/Display;", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;", "listener", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V", "height", "getHeight", "", "ratio", "F", "getRatio", "()F", "<init>", "(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class EmusArchiveAdapter extends BaseDataBindingAdapter<CloudListDataBean, ViewDataBinding> {
    @NotNull
    private Context context;
    private final Display defaultDisplay;
    private final int height;
    @NotNull
    private OnEmusClickArchiveListener listener;
    private final float ratio;
    private final int width;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmusArchiveAdapter(@NotNull Context context, @NotNull OnEmusClickArchiveListener listener) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.context = context;
        this.listener = listener;
        Objects.requireNonNull(context, "null cannot be cast to non-null type android.app.Activity");
        WindowManager windowManager = ((Activity) context).getWindowManager();
        Intrinsics.checkNotNullExpressionValue(windowManager, "(context as Activity).windowManager");
        Display defaultDisplay = windowManager.getDefaultDisplay();
        this.defaultDisplay = defaultDisplay;
        Intrinsics.checkNotNullExpressionValue(defaultDisplay, "defaultDisplay");
        int width = defaultDisplay.getWidth();
        this.width = width;
        Intrinsics.checkNotNullExpressionValue(defaultDisplay, "defaultDisplay");
        int height = defaultDisplay.getHeight();
        this.height = height;
        this.ratio = width > height ? width / height : height / width;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    public final Display getDefaultDisplay() {
        return this.defaultDisplay;
    }

    public final int getHeight() {
        return this.height;
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int i2) {
        return R.layout.emus_archive_game_detail_list_item;
    }

    @NotNull
    public final OnEmusClickArchiveListener getListener() {
        return this.listener;
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setListener(@NotNull OnEmusClickArchiveListener onEmusClickArchiveListener) {
        Intrinsics.checkNotNullParameter(onEmusClickArchiveListener, "<set-?>");
        this.listener = onEmusClickArchiveListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull ViewDataBinding binding, @NotNull CloudListDataBean item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof je) {
            je jeVar = (je) binding;
            jeVar.i1(item);
            jeVar.h1(this.listener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull ViewDataBinding binding, @NotNull CloudListDataBean item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof je) {
            je jeVar = (je) binding;
            jeVar.i1(item);
            jeVar.h1(this.listener);
        }
    }
}
