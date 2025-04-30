package com.join.kotlin.ui.cloudarchive.adapter;

import android.app.Activity;
import android.content.Context;
import android.text.Html;
import android.text.Layout;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.p30;
import com.join.android.app.mgsim.wufun.databinding.r30;
import com.join.android.app.mgsim.wufun.databinding.t30;
import com.join.android.app.mgsim.wufun.databinding.v30;
import com.join.android.app.mgsim.wufun.databinding.x30;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModArchiveAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00017B\u001f\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b5\u00106J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\"\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014J\"\u0010\u000f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014R\u0019\u0010\u0010\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017\"\u0004\b\u0018\u0010\u0019R!\u0010\u001c\u001a\n \u001b*\u0004\u0018\u00010\u001a0\u001a8\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010 \u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b \u0010\u0011\u001a\u0004\b!\u0010\u0013R\u0019\u0010#\u001a\u00020\"8\u0006@\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\"\u0010(\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104¨\u00068"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;", "Lcom/psk/kotlin/util/CommonListMainData;", "Landroidx/databinding/ViewDataBinding;", "", "viewType", "getLayoutResId", "position", "getItemViewType", "binding", "item", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "holder", "", "onBindItem", "onBindItemPayloads", "width", "I", "getWidth", "()I", "", "isChoice", "Z", "()Z", "setChoice", "(Z)V", "Landroid/view/Display;", "kotlin.jvm.PlatformType", "defaultDisplay", "Landroid/view/Display;", "getDefaultDisplay", "()Landroid/view/Display;", "height", "getHeight", "", "ratio", "F", "getRatio", "()F", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "listener", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "<init>", "(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;Z)V", "ModArchiveType", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ModArchiveAdapter extends BaseDataBindingAdapter<CommonListMainData, ViewDataBinding> {
    @NotNull
    private Context context;
    private final Display defaultDisplay;
    private final int height;
    private boolean isChoice;
    @NotNull
    private OnClickArchiveListener listener;
    private final float ratio;
    private final int width;

    /* compiled from: ModArchiveAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$ModArchiveType;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ModArchiveType {
        public static final int ARCHIVELOCAL = 4;
        public static final int ARCHIVESHOP = 3;
        public static final int ARCHIVE_DETAIL = 5;
        @NotNull
        public static final Companion Companion = new Companion(null);

        /* compiled from: ModArchiveAdapter.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$ModArchiveType$Companion;", "", "", "ARCHIVELOCAL", "I", "ARCHIVESHOP", "ARCHIVE_DETAIL", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModArchiveAdapter(@NotNull Context context, @NotNull OnClickArchiveListener listener, boolean z3) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.context = context;
        this.listener = listener;
        this.isChoice = z3;
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

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        List<CommonListMainData> listDatas = getListDatas();
        Intrinsics.checkNotNull(listDatas);
        return listDatas.get(i2).getType();
    }

    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    protected int getLayoutResId(int i2) {
        return i2 != 3 ? i2 != 4 ? i2 != 5 ? R.layout.modarchive_list_item : R.layout.modarchive_game_detail_list_item : this.ratio >= ((float) 2) ? R.layout.modarchive_list_local_item : R.layout.modarchive_list_local_item2 : this.ratio >= ((float) 2) ? R.layout.modarchive_list_item : R.layout.modarchive_list_item2;
    }

    @NotNull
    public final OnClickArchiveListener getListener() {
        return this.listener;
    }

    public final float getRatio() {
        return this.ratio;
    }

    public final int getWidth() {
        return this.width;
    }

    public final boolean isChoice() {
        return this.isChoice;
    }

    public final void setChoice(boolean z3) {
        this.isChoice = z3;
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setListener(@NotNull OnClickArchiveListener onClickArchiveListener) {
        Intrinsics.checkNotNullParameter(onClickArchiveListener, "<set-?>");
        this.listener = onClickArchiveListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r11v23, types: [com.join.kotlin.ui.cloudarchive.data.ArchiveData, T] */
    /* JADX WARN: Type inference failed for: r11v39, types: [com.join.kotlin.ui.cloudarchive.data.ArchiveData, T] */
    /* JADX WARN: Type inference failed for: r11v48, types: [com.join.kotlin.ui.cloudarchive.data.ArchiveData, T] */
    /* JADX WARN: Type inference failed for: r11v7, types: [com.join.kotlin.ui.cloudarchive.data.ArchiveData, T] */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItem(@NotNull final ViewDataBinding binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof t30) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Object any = item.getAny();
            Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ?? r11 = (ArchiveData) any;
            objectRef.element = r11;
            ((ArchiveData) r11).setAvatar(Html.fromHtml(((ArchiveData) r11).getAvatar()).toString());
            t30 t30Var = (t30) binding;
            t30Var.m1((ArchiveData) objectRef.element);
            t30Var.j1(this.listener);
            if (((ArchiveData) objectRef.element).getShowMoreStatus() != 2 && ((ArchiveData) objectRef.element).getShowMoreStatus() != 3) {
                TextView textView = t30Var.I;
                Intrinsics.checkNotNullExpressionValue(textView, "binding.more");
                textView.setVisibility(8);
            } else {
                TextView textView2 = t30Var.I;
                Intrinsics.checkNotNullExpressionValue(textView2, "binding.more");
                textView2.setText("展开");
                TextView textView3 = t30Var.E;
                Intrinsics.checkNotNullExpressionValue(textView3, "binding.contentsimpble");
                textView3.setMaxLines(1);
                TextView textView4 = t30Var.I;
                Intrinsics.checkNotNullExpressionValue(textView4, "binding.more");
                textView4.setVisibility(0);
            }
            TextView textView5 = t30Var.E;
            if (textView5 != null) {
                textView5.post(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (((ArchiveData) Ref.ObjectRef.this.element).getShowMoreStatus() != 0) {
                            return;
                        }
                        TextView textView6 = ((t30) binding).E;
                        Intrinsics.checkNotNullExpressionValue(textView6, "binding.contentsimpble");
                        Layout layout = textView6.getLayout();
                        if (layout != null) {
                            int lineCount = layout.getLineCount();
                            if (lineCount > 1) {
                                TextView textView7 = ((t30) binding).I;
                                Intrinsics.checkNotNullExpressionValue(textView7, "binding.more");
                                textView7.setVisibility(0);
                                ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(2);
                                return;
                            } else if (lineCount > 0) {
                                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                                    TextView textView8 = ((t30) binding).I;
                                    Intrinsics.checkNotNullExpressionValue(textView8, "binding.more");
                                    textView8.setVisibility(0);
                                    ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(2);
                                    return;
                                }
                                TextView textView9 = ((t30) binding).I;
                                Intrinsics.checkNotNullExpressionValue(textView9, "binding.more");
                                textView9.setVisibility(8);
                                ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(1);
                                return;
                            } else {
                                return;
                            }
                        }
                        TextView textView10 = ((t30) binding).I;
                        Intrinsics.checkNotNullExpressionValue(textView10, "binding.more");
                        textView10.setVisibility(8);
                        ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(1);
                    }
                });
            }
            t30Var.I.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TextView textView6 = ((t30) ViewDataBinding.this).I;
                    Intrinsics.checkNotNullExpressionValue(textView6, "binding.more");
                    if (Intrinsics.areEqual(textView6.getText(), "展开")) {
                        ((ArchiveData) objectRef.element).setShowMoreStatus(3);
                        TextView textView7 = ((t30) ViewDataBinding.this).E;
                        Intrinsics.checkNotNullExpressionValue(textView7, "binding.contentsimpble");
                        textView7.setMaxLines(4);
                        TextView textView8 = ((t30) ViewDataBinding.this).I;
                        Intrinsics.checkNotNullExpressionValue(textView8, "binding.more");
                        textView8.setText("收起");
                        return;
                    }
                    TextView textView9 = ((t30) ViewDataBinding.this).I;
                    Intrinsics.checkNotNullExpressionValue(textView9, "binding.more");
                    textView9.setText("展开");
                    ((ArchiveData) objectRef.element).setShowMoreStatus(2);
                    TextView textView10 = ((t30) ViewDataBinding.this).E;
                    Intrinsics.checkNotNullExpressionValue(textView10, "binding.contentsimpble");
                    textView10.setMaxLines(1);
                }
            });
        } else if (binding instanceof r30) {
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            Object any2 = item.getAny();
            Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ?? r112 = (ArchiveData) any2;
            objectRef2.element = r112;
            ((ArchiveData) r112).setAvatar(Html.fromHtml(((ArchiveData) r112).getAvatar()).toString());
            r30 r30Var = (r30) binding;
            r30Var.k1((ArchiveData) objectRef2.element);
            r30Var.i1(this.listener);
            r30Var.j1(Boolean.valueOf(this.isChoice));
            if (((ArchiveData) objectRef2.element).getShowMoreStatus() != 2 && ((ArchiveData) objectRef2.element).getShowMoreStatus() != 3) {
                TextView textView6 = r30Var.I;
                Intrinsics.checkNotNullExpressionValue(textView6, "binding.more");
                textView6.setVisibility(8);
            } else {
                TextView textView7 = r30Var.I;
                Intrinsics.checkNotNullExpressionValue(textView7, "binding.more");
                textView7.setText("展开");
                TextView textView8 = r30Var.E;
                Intrinsics.checkNotNullExpressionValue(textView8, "binding.contentsimpble");
                textView8.setMaxLines(1);
                TextView textView9 = r30Var.I;
                Intrinsics.checkNotNullExpressionValue(textView9, "binding.more");
                textView9.setVisibility(0);
            }
            TextView textView10 = r30Var.E;
            if (textView10 != null) {
                textView10.post(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$3
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (((ArchiveData) Ref.ObjectRef.this.element).getShowMoreStatus() != 0) {
                            return;
                        }
                        TextView textView11 = ((r30) binding).E;
                        Intrinsics.checkNotNullExpressionValue(textView11, "binding.contentsimpble");
                        Layout layout = textView11.getLayout();
                        if (layout != null) {
                            int lineCount = layout.getLineCount();
                            if (lineCount > 1) {
                                TextView textView12 = ((r30) binding).I;
                                Intrinsics.checkNotNullExpressionValue(textView12, "binding.more");
                                textView12.setVisibility(0);
                                ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(2);
                                return;
                            } else if (lineCount > 0) {
                                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                                    TextView textView13 = ((r30) binding).I;
                                    Intrinsics.checkNotNullExpressionValue(textView13, "binding.more");
                                    textView13.setVisibility(0);
                                    ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(2);
                                    return;
                                }
                                TextView textView14 = ((r30) binding).I;
                                Intrinsics.checkNotNullExpressionValue(textView14, "binding.more");
                                textView14.setVisibility(8);
                                ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(1);
                                return;
                            } else {
                                return;
                            }
                        }
                        TextView textView15 = ((r30) binding).I;
                        Intrinsics.checkNotNullExpressionValue(textView15, "binding.more");
                        textView15.setVisibility(8);
                        ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(1);
                    }
                });
            }
            r30Var.I.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TextView textView11 = ((r30) ViewDataBinding.this).I;
                    Intrinsics.checkNotNullExpressionValue(textView11, "binding.more");
                    if (Intrinsics.areEqual(textView11.getText(), "展开")) {
                        ((ArchiveData) objectRef2.element).setShowMoreStatus(3);
                        TextView textView12 = ((r30) ViewDataBinding.this).E;
                        Intrinsics.checkNotNullExpressionValue(textView12, "binding.contentsimpble");
                        textView12.setMaxLines(4);
                        TextView textView13 = ((r30) ViewDataBinding.this).I;
                        Intrinsics.checkNotNullExpressionValue(textView13, "binding.more");
                        textView13.setText("收起");
                        return;
                    }
                    TextView textView14 = ((r30) ViewDataBinding.this).I;
                    Intrinsics.checkNotNullExpressionValue(textView14, "binding.more");
                    textView14.setText("展开");
                    ((ArchiveData) objectRef2.element).setShowMoreStatus(2);
                    TextView textView15 = ((r30) ViewDataBinding.this).E;
                    Intrinsics.checkNotNullExpressionValue(textView15, "binding.contentsimpble");
                    textView15.setMaxLines(1);
                }
            });
        } else if (binding instanceof x30) {
            final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            Object any3 = item.getAny();
            Objects.requireNonNull(any3, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ?? r113 = (ArchiveData) any3;
            objectRef3.element = r113;
            x30 x30Var = (x30) binding;
            x30Var.i1((ArchiveData) r113);
            x30Var.h1(this.listener);
            if (((ArchiveData) objectRef3.element).getShowMoreStatus() != 2 && ((ArchiveData) objectRef3.element).getShowMoreStatus() != 3) {
                TextView textView11 = x30Var.K;
                Intrinsics.checkNotNullExpressionValue(textView11, "binding.more");
                textView11.setVisibility(8);
            } else {
                TextView textView12 = x30Var.K;
                Intrinsics.checkNotNullExpressionValue(textView12, "binding.more");
                textView12.setText("展开");
                TextView textView13 = x30Var.E;
                Intrinsics.checkNotNullExpressionValue(textView13, "binding.contentsimpble");
                textView13.setMaxLines(1);
                TextView textView14 = x30Var.K;
                Intrinsics.checkNotNullExpressionValue(textView14, "binding.more");
                textView14.setVisibility(0);
            }
            TextView textView15 = x30Var.E;
            if (textView15 != null) {
                textView15.post(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$5
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (((ArchiveData) Ref.ObjectRef.this.element).getShowMoreStatus() != 0) {
                            return;
                        }
                        TextView textView16 = ((x30) binding).E;
                        Intrinsics.checkNotNullExpressionValue(textView16, "binding.contentsimpble");
                        Layout layout = textView16.getLayout();
                        if (layout != null) {
                            int lineCount = layout.getLineCount();
                            if (lineCount > 1) {
                                TextView textView17 = ((x30) binding).K;
                                Intrinsics.checkNotNullExpressionValue(textView17, "binding.more");
                                textView17.setVisibility(0);
                                ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(2);
                                return;
                            } else if (lineCount > 0) {
                                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                                    TextView textView18 = ((x30) binding).K;
                                    Intrinsics.checkNotNullExpressionValue(textView18, "binding.more");
                                    textView18.setVisibility(0);
                                    ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(2);
                                    return;
                                }
                                TextView textView19 = ((x30) binding).K;
                                Intrinsics.checkNotNullExpressionValue(textView19, "binding.more");
                                textView19.setVisibility(8);
                                ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(1);
                                return;
                            } else {
                                return;
                            }
                        }
                        TextView textView20 = ((x30) binding).K;
                        Intrinsics.checkNotNullExpressionValue(textView20, "binding.more");
                        textView20.setVisibility(8);
                        ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(1);
                    }
                });
            }
            x30Var.K.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TextView textView16 = ((x30) ViewDataBinding.this).K;
                    Intrinsics.checkNotNullExpressionValue(textView16, "binding.more");
                    if (Intrinsics.areEqual(textView16.getText(), "展开")) {
                        ((ArchiveData) objectRef3.element).setShowMoreStatus(3);
                        TextView textView17 = ((x30) ViewDataBinding.this).E;
                        Intrinsics.checkNotNullExpressionValue(textView17, "binding.contentsimpble");
                        textView17.setMaxLines(4);
                        TextView textView18 = ((x30) ViewDataBinding.this).K;
                        Intrinsics.checkNotNullExpressionValue(textView18, "binding.more");
                        textView18.setText("收起");
                        return;
                    }
                    TextView textView19 = ((x30) ViewDataBinding.this).K;
                    Intrinsics.checkNotNullExpressionValue(textView19, "binding.more");
                    textView19.setText("展开");
                    ((ArchiveData) objectRef3.element).setShowMoreStatus(2);
                    TextView textView20 = ((x30) ViewDataBinding.this).E;
                    Intrinsics.checkNotNullExpressionValue(textView20, "binding.contentsimpble");
                    textView20.setMaxLines(1);
                }
            });
        } else if (binding instanceof v30) {
            final Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
            Object any4 = item.getAny();
            Objects.requireNonNull(any4, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ?? r114 = (ArchiveData) any4;
            objectRef4.element = r114;
            v30 v30Var = (v30) binding;
            v30Var.i1((ArchiveData) r114);
            v30Var.h1(this.listener);
            if (((ArchiveData) objectRef4.element).getShowMoreStatus() != 2 && ((ArchiveData) objectRef4.element).getShowMoreStatus() != 3) {
                TextView textView16 = v30Var.K;
                Intrinsics.checkNotNullExpressionValue(textView16, "binding.more");
                textView16.setVisibility(8);
            } else {
                TextView textView17 = v30Var.K;
                Intrinsics.checkNotNullExpressionValue(textView17, "binding.more");
                textView17.setText("展开");
                TextView textView18 = v30Var.E;
                Intrinsics.checkNotNullExpressionValue(textView18, "binding.contentsimpble");
                textView18.setMaxLines(1);
                TextView textView19 = v30Var.K;
                Intrinsics.checkNotNullExpressionValue(textView19, "binding.more");
                textView19.setVisibility(0);
            }
            TextView textView20 = v30Var.E;
            if (textView20 != null) {
                textView20.post(new Runnable() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$7
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (((ArchiveData) Ref.ObjectRef.this.element).getShowMoreStatus() != 0) {
                            return;
                        }
                        TextView textView21 = ((v30) binding).E;
                        Intrinsics.checkNotNullExpressionValue(textView21, "binding.contentsimpble");
                        Layout layout = textView21.getLayout();
                        if (layout != null) {
                            int lineCount = layout.getLineCount();
                            if (lineCount > 1) {
                                TextView textView22 = ((v30) binding).K;
                                Intrinsics.checkNotNullExpressionValue(textView22, "binding.more");
                                textView22.setVisibility(0);
                                ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(2);
                                return;
                            } else if (lineCount > 0) {
                                if (layout.getEllipsisCount(lineCount - 1) > 0) {
                                    TextView textView23 = ((v30) binding).K;
                                    Intrinsics.checkNotNullExpressionValue(textView23, "binding.more");
                                    textView23.setVisibility(0);
                                    ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(2);
                                    return;
                                }
                                TextView textView24 = ((v30) binding).K;
                                Intrinsics.checkNotNullExpressionValue(textView24, "binding.more");
                                textView24.setVisibility(8);
                                ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(1);
                                return;
                            } else {
                                return;
                            }
                        }
                        TextView textView25 = ((v30) binding).K;
                        Intrinsics.checkNotNullExpressionValue(textView25, "binding.more");
                        textView25.setVisibility(8);
                        ((ArchiveData) Ref.ObjectRef.this.element).setShowMoreStatus(1);
                    }
                });
            }
            v30Var.K.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter$onBindItem$8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TextView textView21 = ((v30) ViewDataBinding.this).K;
                    Intrinsics.checkNotNullExpressionValue(textView21, "binding.more");
                    if (Intrinsics.areEqual(textView21.getText(), "展开")) {
                        ((ArchiveData) objectRef4.element).setShowMoreStatus(3);
                        TextView textView22 = ((v30) ViewDataBinding.this).E;
                        Intrinsics.checkNotNullExpressionValue(textView22, "binding.contentsimpble");
                        textView22.setMaxLines(4);
                        TextView textView23 = ((v30) ViewDataBinding.this).K;
                        Intrinsics.checkNotNullExpressionValue(textView23, "binding.more");
                        textView23.setText("收起");
                        return;
                    }
                    TextView textView24 = ((v30) ViewDataBinding.this).K;
                    Intrinsics.checkNotNullExpressionValue(textView24, "binding.more");
                    textView24.setText("展开");
                    ((ArchiveData) objectRef4.element).setShowMoreStatus(2);
                    TextView textView25 = ((v30) ViewDataBinding.this).E;
                    Intrinsics.checkNotNullExpressionValue(textView25, "binding.contentsimpble");
                    textView25.setMaxLines(1);
                }
            });
        } else if (binding instanceof p30) {
            Object any5 = item.getAny();
            Objects.requireNonNull(any5, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            ArchiveData archiveData = (ArchiveData) any5;
            archiveData.setAvatar(Html.fromHtml(archiveData.getAvatar()).toString());
            p30 p30Var = (p30) binding;
            p30Var.k1(archiveData);
            p30Var.i1(this.listener);
            p30Var.j1(Boolean.valueOf(this.isChoice));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter
    public void onBindItemPayloads(@NotNull ViewDataBinding binding, @NotNull CommonListMainData item, @Nullable RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(item, "item");
        if (binding instanceof t30) {
            t30 t30Var = (t30) binding;
            Object any = item.getAny();
            Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            t30Var.m1((ArchiveData) any);
            t30Var.j1(this.listener);
        } else if (binding instanceof x30) {
            x30 x30Var = (x30) binding;
            Object any2 = item.getAny();
            Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
            x30Var.i1((ArchiveData) any2);
            x30Var.h1(this.listener);
        }
    }
}
