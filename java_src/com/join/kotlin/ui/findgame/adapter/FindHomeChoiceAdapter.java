package com.join.kotlin.ui.findgame.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.drawable.r;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.a6;
import com.join.android.app.mgsim.wufun.databinding.b6;
import com.join.android.app.mgsim.wufun.databinding.nl;
import com.join.android.app.mgsim.wufun.databinding.t5;
import com.join.android.app.mgsim.wufun.databinding.y5;
import com.join.android.app.mgsim.wufun.databinding.z5;
import com.join.kotlin.ui.findgame.CategoryDetailListActivity;
import com.join.kotlin.ui.findgame.adapter.FindHomeChoiceAdapter;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData;
import com.join.kotlin.ui.findgame.data.TagData;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.CollectionBeanSub;
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
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FindHomeChoiceAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0007\u001f !\"#$%B\u001d\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u0005H\u0016R(\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006&"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/ViewGroup;", "viewGroup", "", "type", "onCreateViewHolder", "viewHolder", "position", "", "onBindViewHolder", "getItemViewType", "getItemCount", "", "Lcom/psk/kotlin/util/CommonListMainData;", "showdatas", "Ljava/util/List;", "getShowdatas", "()Ljava/util/List;", "setShowdatas", "(Ljava/util/List;)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "ChoiceAdHolder", "ChoiceGameItemViewHolder", "ChoiceGameListAdapter", "ChoiceGamelistHolder", "ChoiceTagHolder", "ChoiceTitleHolder", "FindChoiceType", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class FindHomeChoiceAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    @NotNull
    private Context context;
    @NotNull
    private List<CommonListMainData> showdatas;

    /* compiled from: FindHomeChoiceAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/y5;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/y5;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/y5;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/y5;)V", "bindingi", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ChoiceAdHolder extends RecyclerView.ViewHolder {
        @NotNull
        private y5 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceAdHolder(@NotNull y5 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final y5 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull y5 y5Var) {
            Intrinsics.checkNotNullParameter(y5Var, "<set-?>");
            this.binding = y5Var;
        }
    }

    /* compiled from: FindHomeChoiceAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/nl;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/nl;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/nl;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/nl;)V", "itemView", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ChoiceGameItemViewHolder extends RecyclerView.ViewHolder {
        @NotNull
        private nl binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceGameItemViewHolder(@NotNull nl itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final nl getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull nl nlVar) {
            Intrinsics.checkNotNullParameter(nlVar, "<set-?>");
            this.binding = nlVar;
        }
    }

    /* compiled from: FindHomeChoiceAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\u000b\u001a\u00020\u0005H\u0016R(\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGameItemViewHolder;", "Landroid/view/ViewGroup;", "p0", "", "type", "onCreateViewHolder", "p1", "", "onBindViewHolder", "getItemCount", "", "Lcom/join/mgps/dto/CollectionBeanSub;", "tagList", "Ljava/util/List;", "getTagList", "()Ljava/util/List;", "setTagList", "(Ljava/util/List;)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ChoiceGameListAdapter extends RecyclerView.Adapter<ChoiceGameItemViewHolder> {
        @NotNull
        private Context context;
        @NotNull
        private List<CollectionBeanSub> tagList;

        public ChoiceGameListAdapter(@NotNull Context context, @NotNull List<CollectionBeanSub> tagList) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(tagList, "tagList");
            this.context = context;
            this.tagList = tagList;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.tagList.size();
        }

        @NotNull
        public final List<CollectionBeanSub> getTagList() {
            return this.tagList;
        }

        public final void setContext(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "<set-?>");
            this.context = context;
        }

        public final void setTagList(@NotNull List<CollectionBeanSub> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.tagList = list;
        }

        /* JADX WARN: Type inference failed for: r4v2, types: [T, com.join.mgps.dto.CollectionBeanSub] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull ChoiceGameItemViewHolder p02, int i2) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = this.tagList.get(i2);
            MyImageLoader.h(p02.getBinding().f22920b, ((CollectionBeanSub) objectRef.element).getIco_remote());
            TextView textView = p02.getBinding().f22921c;
            Intrinsics.checkNotNullExpressionValue(textView, "p0.binding.recomGameTv");
            textView.setText(((CollectionBeanSub) objectRef.element).getGame_name());
            LinearLayout root = p02.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "p0.binding.root");
            CommonExtKt.onClick(root, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.adapter.FindHomeChoiceAdapter$ChoiceGameListAdapter$onBindViewHolder$1
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
                    IntentUtil.getInstance().goGameDetialActivity(FindHomeChoiceAdapter.ChoiceGameListAdapter.this.getContext(), ((CollectionBeanSub) objectRef.element).getGame_id(), ((CollectionBeanSub) objectRef.element).get_from_type());
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public ChoiceGameItemViewHolder onCreateViewHolder(@NotNull ViewGroup p02, int i2) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            nl d4 = nl.d(LayoutInflater.from(this.context), p02, false);
            Intrinsics.checkNotNullExpressionValue(d4, "GamedetailRecomItemBindi…from(context), p0, false)");
            return new ChoiceGameItemViewHolder(d4);
        }
    }

    /* compiled from: FindHomeChoiceAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceGamelistHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/t5;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/t5;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/t5;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/t5;)V", "bindingi", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ChoiceGamelistHolder extends RecyclerView.ViewHolder {
        @NotNull
        private t5 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceGamelistHolder(@NotNull t5 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final t5 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull t5 t5Var) {
            Intrinsics.checkNotNullParameter(t5Var, "<set-?>");
            this.binding = t5Var;
        }
    }

    /* compiled from: FindHomeChoiceAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTagHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/a6;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/a6;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/a6;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/a6;)V", "bindingi", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ChoiceTagHolder extends RecyclerView.ViewHolder {
        @NotNull
        private a6 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceTagHolder(@NotNull a6 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final a6 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull a6 a6Var) {
            Intrinsics.checkNotNullParameter(a6Var, "<set-?>");
            this.binding = a6Var;
        }
    }

    /* compiled from: FindHomeChoiceAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceTitleHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/b6;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/b6;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/b6;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/b6;)V", "bindingi", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ChoiceTitleHolder extends RecyclerView.ViewHolder {
        @NotNull
        private b6 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceTitleHolder(@NotNull b6 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final b6 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull b6 b6Var) {
            Intrinsics.checkNotNullParameter(b6Var, "<set-?>");
            this.binding = b6Var;
        }
    }

    /* compiled from: FindHomeChoiceAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$FindChoiceType;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class FindChoiceType {
        public static final int AD = 3;
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int GAMEICONLIST = 5;
        public static final int TAG = 4;

        /* compiled from: FindHomeChoiceAdapter.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$FindChoiceType$Companion;", "", "", "AD", "I", "GAMEICONLIST", "TAG", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }

    public FindHomeChoiceAdapter(@NotNull Context context, @NotNull List<CommonListMainData> showdatas) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(showdatas, "showdatas");
        this.context = context;
        this.showdatas = showdatas;
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
    public final List<CommonListMainData> getShowdatas() {
        return this.showdatas;
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [com.join.mgps.business.CollectionBeanSubBusiness, T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v5, types: [T, com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder viewHolder, int i2) {
        String str;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int itemViewType = getItemViewType(i2);
        if (itemViewType == 1) {
            ChoiceTitleHolder choiceTitleHolder = (ChoiceTitleHolder) viewHolder;
            if (this.showdatas.get(i2).getAny() instanceof String) {
                Object any = this.showdatas.get(i2).getAny();
                Objects.requireNonNull(any, "null cannot be cast to non-null type kotlin.String");
                str = (String) any;
                TextView textView = choiceTitleHolder.getBinding().f18394b;
                Intrinsics.checkNotNullExpressionValue(textView, "viewHolder.binding.more");
                textView.setVisibility(8);
            } else if (this.showdatas.get(i2).getAny() instanceof FindChoiceColloctionListData) {
                TextView textView2 = choiceTitleHolder.getBinding().f18394b;
                Intrinsics.checkNotNullExpressionValue(textView2, "viewHolder.binding.more");
                textView2.setVisibility(0);
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Object any2 = this.showdatas.get(i2).getAny();
                Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData");
                ?? r6 = (FindChoiceColloctionListData) any2;
                objectRef.element = r6;
                str = ((FindChoiceColloctionListData) r6).getTitle();
                Intrinsics.checkNotNullExpressionValue(str, "da.title");
                TextView textView3 = choiceTitleHolder.getBinding().f18394b;
                Intrinsics.checkNotNullExpressionValue(textView3, "viewHolder.binding.more");
                CommonExtKt.onClick(textView3, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.adapter.FindHomeChoiceAdapter$onBindViewHolder$3
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
                        IntentUtil.getInstance().goColloctionList(FindHomeChoiceAdapter.this.getContext(), ((FindChoiceColloctionListData) objectRef.element).getTpl_type(), ((FindChoiceColloctionListData) objectRef.element).getCollection_id());
                    }
                });
            } else {
                str = "";
            }
            TextView textView4 = choiceTitleHolder.getBinding().f18395c;
            Intrinsics.checkNotNullExpressionValue(textView4, "viewHolder.binding.titleName");
            textView4.setText(str);
        } else if (itemViewType == 3) {
            Object any3 = this.showdatas.get(i2).getAny();
            Objects.requireNonNull(any3, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData");
            FindChoiceBannerData findChoiceBannerData = (FindChoiceBannerData) any3;
            ChoiceAdHolder choiceAdHolder = (ChoiceAdHolder) viewHolder;
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            ?? game_info = findChoiceBannerData.getGame_info();
            Intrinsics.checkNotNullExpressionValue(game_info, "showData.game_info");
            objectRef2.element = game_info;
            choiceAdHolder.getBinding().f26794c.a(((CollectionBeanSubBusiness) objectRef2.element).getDownloadTask(), (CollectionBeanSubBusiness) objectRef2.element);
            MyImageLoader.q(choiceAdHolder.getBinding().f26793b, findChoiceBannerData.getPic(), r.c.f12144g, R.drawable.banner_normal_icon);
            MyImageLoader.h(choiceAdHolder.getBinding().f26795d, ((CollectionBeanSubBusiness) objectRef2.element).getIco_remote());
            TextView textView5 = choiceAdHolder.getBinding().f26796e;
            Intrinsics.checkNotNullExpressionValue(textView5, "viewHolder.binding.gameInfo");
            textView5.setText(((CollectionBeanSubBusiness) objectRef2.element).getInfo());
            TextView textView6 = choiceAdHolder.getBinding().f26797f;
            Intrinsics.checkNotNullExpressionValue(textView6, "viewHolder.binding.gameName");
            textView6.setText(((CollectionBeanSubBusiness) objectRef2.element).getGame_name());
            RelativeLayout root = choiceAdHolder.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "viewHolder.binding.root");
            CommonExtKt.onClick(root, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.adapter.FindHomeChoiceAdapter$onBindViewHolder$1
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
                    IntentUtil.getInstance().goGameDetialActivity(FindHomeChoiceAdapter.this.getContext(), ((CollectionBeanSubBusiness) objectRef2.element).getGame_id(), ((CollectionBeanSubBusiness) objectRef2.element).get_from_type());
                }
            });
        } else if (itemViewType != 4) {
            if (itemViewType != 5) {
                return;
            }
            Object any4 = this.showdatas.get(i2).getAny();
            Objects.requireNonNull(any4, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.mgps.dto.CollectionBeanSub>");
            List asMutableList = TypeIntrinsics.asMutableList(any4);
            RecyclerView recyclerView = ((ChoiceGamelistHolder) viewHolder).getBinding().f25094b;
            Intrinsics.checkNotNullExpressionValue(recyclerView, "viewHolder.binding.recycleView");
            recyclerView.setLayoutManager(new LinearLayoutManager(this.context, 0, false));
            recyclerView.setAdapter(new ChoiceGameListAdapter(this.context, asMutableList));
        } else {
            Object any5 = this.showdatas.get(i2).getAny();
            Objects.requireNonNull(any5, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.findgame.data.TagData>");
            List<TagData> asMutableList2 = TypeIntrinsics.asMutableList(any5);
            ChoiceTagHolder choiceTagHolder = (ChoiceTagHolder) viewHolder;
            choiceTagHolder.getBinding().f18025b.removeAllViews();
            for (final TagData tagData : asMutableList2) {
                z5 c4 = z5.c(LayoutInflater.from(this.context));
                Intrinsics.checkNotNullExpressionValue(c4, "ChoiceTagItemLayoutBindi…utInflater.from(context))");
                choiceTagHolder.getBinding().f18025b.addView(c4.getRoot());
                LinearLayout root2 = c4.getRoot();
                Intrinsics.checkNotNullExpressionValue(root2, "v.root");
                CommonExtKt.onClick(root2, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.adapter.FindHomeChoiceAdapter$onBindViewHolder$2
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
                        Intent intent = new Intent(FindHomeChoiceAdapter.this.getContext(), CategoryDetailListActivity.class);
                        intent.putExtra("typeId", tagData.getType());
                        intent.putExtra("tagId", tagData.getId());
                        intent.putExtra("tagName", tagData.getTitle());
                        Context context = FindHomeChoiceAdapter.this.getContext();
                        if (context != null) {
                            context.startActivity(intent);
                        }
                    }
                });
                TextView textView7 = c4.f27122b;
                Intrinsics.checkNotNullExpressionValue(textView7, "v.tagX");
                textView7.setText(tagData.getTitle());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NotNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup viewGroup, int i2) {
        Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
        if (i2 == 1) {
            b6 d4 = b6.d(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(d4, "ChoiceTitleLayoutBinding…ntext), viewGroup, false)");
            return new ChoiceTitleHolder(d4);
        } else if (i2 == 3) {
            y5 d5 = y5.d(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(d5, "ChoiceMainadLayoutBindin…ntext), viewGroup, false)");
            return new ChoiceAdHolder(d5);
        } else if (i2 == 4) {
            a6 d6 = a6.d(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(d6, "ChoiceTagLayoutBinding.i…ntext), viewGroup, false)");
            return new ChoiceTagHolder(d6);
        } else if (i2 != 5) {
            y5 d7 = y5.d(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(d7, "ChoiceMainadLayoutBindin…ntext), viewGroup, false)");
            return new ChoiceAdHolder(d7);
        } else {
            t5 d8 = t5.d(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(d8, "ChoiceGamelistLayoutBind…ntext), viewGroup, false)");
            return new ChoiceGamelistHolder(d8);
        }
    }

    public final void setContext(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        this.context = context;
    }

    public final void setShowdatas(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.showdatas = list;
    }
}
