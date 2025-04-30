package com.join.kotlin.ui.findgame.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.databinding.f6;
import com.join.android.app.mgsim.wufun.databinding.g6;
import com.join.kotlin.ui.findgame.data.GameSubTypeData;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
/* compiled from: FindTypeListAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004./01B-\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b,\u0010-J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0003H\u0016J\u0018\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0003H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\"\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R(\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\u001f\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010&\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u00062"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "typeIdx", "", "updateDatas", "Landroid/view/ViewGroup;", "viewgroup", "type", "onCreateViewHolder", "viewHolder", "position", "onBindViewHolder", "getItemViewType", "getItemCount", "typeId", "I", "getTypeId", "()I", "setTypeId", "(I)V", "", "Lcom/psk/kotlin/util/CommonListMainData;", "showdatas", "Ljava/util/List;", "getShowdatas", "()Ljava/util/List;", "setShowdatas", "(Ljava/util/List;)V", "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;", "listener", "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;", "getListener", "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;", "setListener", "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "<init>", "(Landroid/content/Context;ILjava/util/List;Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;)V", "FindClassifyType", "OnItenSelected", "ViewTypeImage", "ViewTypeText", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class FindTypeListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    @NotNull
    private Context context;
    @NotNull
    private OnItenSelected listener;
    @NotNull
    private List<CommonListMainData> showdatas;
    private int typeId;

    /* compiled from: FindTypeListAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$FindClassifyType;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class FindClassifyType {
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int GAMETEXTTYPE = 7;
        public static final int TYPEIMAGE = 3;

        /* compiled from: FindTypeListAdapter.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$FindClassifyType$Companion;", "", "", "GAMETEXTTYPE", "I", "TYPEIMAGE", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }

    /* compiled from: FindTypeListAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$OnItenSelected;", "", "Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;", "type", "", "onItemselected", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public interface OnItenSelected {
        void onItemselected(@NotNull GameSubTypeData gameSubTypeData);
    }

    /* compiled from: FindTypeListAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeImage;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/f6;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/f6;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/f6;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/f6;)V", "itemView", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ViewTypeImage extends RecyclerView.ViewHolder {
        @NotNull
        private f6 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewTypeImage(@NotNull f6 itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final f6 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull f6 f6Var) {
            Intrinsics.checkNotNullParameter(f6Var, "<set-?>");
            this.binding = f6Var;
        }
    }

    /* compiled from: FindTypeListAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter$ViewTypeText;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/g6;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/g6;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/g6;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/g6;)V", "itemView", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ViewTypeText extends RecyclerView.ViewHolder {
        @NotNull
        private g6 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewTypeText(@NotNull g6 itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final g6 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull g6 g6Var) {
            Intrinsics.checkNotNullParameter(g6Var, "<set-?>");
            this.binding = g6Var;
        }
    }

    public FindTypeListAdapter(@NotNull Context context, int i2, @NotNull List<CommonListMainData> showdatas, @NotNull OnItenSelected listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(showdatas, "showdatas");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.context = context;
        this.typeId = i2;
        this.showdatas = showdatas;
        this.listener = listener;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.showdatas.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return this.showdatas.get(i2).getType();
    }

    @NotNull
    public final OnItenSelected getListener() {
        return this.listener;
    }

    @NotNull
    public final List<CommonListMainData> getShowdatas() {
        return this.showdatas;
    }

    public final int getTypeId() {
        return this.typeId;
    }

    /* JADX WARN: Type inference failed for: r7v17, types: [T, com.join.kotlin.ui.findgame.data.GameSubTypeData] */
    /* JADX WARN: Type inference failed for: r7v4, types: [T, com.join.kotlin.ui.findgame.data.GameSubTypeData] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder viewHolder, int i2) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int itemViewType = getItemViewType(i2);
        if (itemViewType == 3) {
            ViewTypeImage viewTypeImage = (ViewTypeImage) viewHolder;
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Object any = this.showdatas.get(i2).getAny();
            Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.GameSubTypeData");
            objectRef.element = (GameSubTypeData) any;
            LinearLayout root = viewTypeImage.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "holder.binding.root");
            root.setSelected(((GameSubTypeData) objectRef.element).isSelected());
            TextView textView = viewTypeImage.getBinding().f20038c;
            Intrinsics.checkNotNullExpressionValue(textView, "holder.binding.name");
            textView.setSelected(((GameSubTypeData) objectRef.element).isSelected());
            MyImageLoader.h(viewTypeImage.getBinding().f20037b, ((GameSubTypeData) objectRef.element).getPic());
            TextView textView2 = viewTypeImage.getBinding().f20038c;
            Intrinsics.checkNotNullExpressionValue(textView2, "holder.binding.name");
            textView2.setText(((GameSubTypeData) objectRef.element).getTitle());
            LinearLayout root2 = viewTypeImage.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root2, "holder.binding.root");
            CommonExtKt.onClick(root2, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.adapter.FindTypeListAdapter$onBindViewHolder$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    FindTypeListAdapter.this.getListener().onItemselected((GameSubTypeData) objectRef.element);
                }
            });
        } else if (itemViewType != 7) {
        } else {
            ViewTypeText viewTypeText = (ViewTypeText) viewHolder;
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            Object any2 = this.showdatas.get(i2).getAny();
            Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.GameSubTypeData");
            objectRef2.element = (GameSubTypeData) any2;
            TextView textView3 = viewTypeText.getBinding().f20331b;
            Intrinsics.checkNotNullExpressionValue(textView3, "holder.binding.name");
            textView3.setText(((GameSubTypeData) objectRef2.element).getTitle());
            LinearLayout root3 = viewTypeText.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root3, "holder.binding.root");
            root3.setSelected(((GameSubTypeData) objectRef2.element).isSelected());
            TextView textView4 = viewTypeText.getBinding().f20331b;
            Intrinsics.checkNotNullExpressionValue(textView4, "holder.binding.name");
            textView4.setSelected(((GameSubTypeData) objectRef2.element).isSelected());
            LinearLayout root4 = viewTypeText.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root4, "holder.binding.root");
            CommonExtKt.onClick(root4, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.adapter.FindTypeListAdapter$onBindViewHolder$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    FindTypeListAdapter.this.getListener().onItemselected((GameSubTypeData) objectRef2.element);
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup viewgroup, int i2) {
        Intrinsics.checkNotNullParameter(viewgroup, "viewgroup");
        if (i2 == 3) {
            f6 d4 = f6.d(LayoutInflater.from(this.context), viewgroup, false);
            Intrinsics.checkNotNullExpressionValue(d4, "ClassfyTypeImageLayoutBi…ntext), viewgroup, false)");
            return new ViewTypeImage(d4);
        } else if (i2 != 7) {
            g6 d5 = g6.d(LayoutInflater.from(this.context), viewgroup, false);
            Intrinsics.checkNotNullExpressionValue(d5, "ClassfyTypeTextLayoutBin…ntext), viewgroup, false)");
            return new ViewTypeText(d5);
        } else {
            g6 d6 = g6.d(LayoutInflater.from(this.context), viewgroup, false);
            Intrinsics.checkNotNullExpressionValue(d6, "ClassfyTypeTextLayoutBin…ntext), viewgroup, false)");
            return new ViewTypeText(d6);
        }
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setListener(@NotNull OnItenSelected onItenSelected) {
        Intrinsics.checkNotNullParameter(onItenSelected, "<set-?>");
        this.listener = onItenSelected;
    }

    public final void setShowdatas(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showdatas = list;
    }

    public final void setTypeId(int i2) {
        this.typeId = i2;
    }

    public final void updateDatas(int i2) {
        this.typeId = i2;
        notifyDataSetChanged();
    }
}
