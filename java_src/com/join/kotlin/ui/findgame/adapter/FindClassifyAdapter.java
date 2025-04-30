package com.join.kotlin.ui.findgame.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.drawable.r;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.databinding.b6;
import com.join.android.app.mgsim.wufun.databinding.i6;
import com.join.android.app.mgsim.wufun.databinding.o6;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData;
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
import org.jetbrains.annotations.NotNull;
/* compiled from: FindClassifyAdapter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001f !\"B\u001d\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u0005H\u0016R(\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/ViewGroup;", "viewGroup", "", "type", "onCreateViewHolder", "position", "getItemViewType", "viewHolderx", "", "onBindViewHolder", "getItemCount", "", "Lcom/psk/kotlin/util/CommonListMainData;", "showdatas", "Ljava/util/List;", "getShowdatas", "()Ljava/util/List;", "setShowdatas", "(Ljava/util/List;)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "ChoiceAdHolder", "ChoiceTitleHolder", "ClassifyGameItemViewHolder", "FindClassifyType", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class FindClassifyAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    @NotNull
    private Context context;
    @NotNull
    private List<CommonListMainData> showdatas;

    /* compiled from: FindClassifyAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceAdHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/o6;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/o6;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/o6;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/o6;)V", "bindingi", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ChoiceAdHolder extends RecyclerView.ViewHolder {
        @NotNull
        private o6 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChoiceAdHolder(@NotNull o6 bindingi) {
            super(bindingi.getRoot());
            Intrinsics.checkNotNullParameter(bindingi, "bindingi");
            this.binding = bindingi;
        }

        @NotNull
        public final o6 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull o6 o6Var) {
            Intrinsics.checkNotNullParameter(o6Var, "<set-?>");
            this.binding = o6Var;
        }
    }

    /* compiled from: FindClassifyAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ChoiceTitleHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/b6;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/b6;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/b6;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/b6;)V", "bindingi", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
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

    /* compiled from: FindClassifyAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$ClassifyGameItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/i6;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/i6;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/i6;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/i6;)V", "itemView", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ClassifyGameItemViewHolder extends RecyclerView.ViewHolder {
        @NotNull
        private i6 binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ClassifyGameItemViewHolder(@NotNull i6 itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.binding = itemView;
        }

        @NotNull
        public final i6 getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull i6 i6Var) {
            Intrinsics.checkNotNullParameter(i6Var, "<set-?>");
            this.binding = i6Var;
        }
    }

    /* compiled from: FindClassifyAdapter.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$FindClassifyType;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class FindClassifyType {
        public static final int AD = 3;
        @NotNull
        public static final Companion Companion = new Companion(null);
        public static final int GAMEICONLIST = 5;
        public static final int GAMETEXTTYPE = 7;
        public static final int GAMETYPE = 6;

        /* compiled from: FindClassifyAdapter.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter$FindClassifyType$Companion;", "", "", "AD", "I", "GAMEICONLIST", "GAMETEXTTYPE", "GAMETYPE", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }
    }

    public FindClassifyAdapter(@NotNull Context context, @NotNull List<CommonListMainData> showdatas) {
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
    /* JADX WARN: Type inference failed for: r7v28, types: [T, com.join.mgps.dto.CollectionBeanSub] */
    /* JADX WARN: Type inference failed for: r7v5, types: [T, com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NotNull RecyclerView.ViewHolder viewHolderx, int i2) {
        String str;
        Intrinsics.checkNotNullParameter(viewHolderx, "viewHolderx");
        int itemViewType = getItemViewType(i2);
        if (itemViewType == 1) {
            ChoiceTitleHolder choiceTitleHolder = (ChoiceTitleHolder) viewHolderx;
            if (this.showdatas.get(i2).getAny() instanceof String) {
                Object any = this.showdatas.get(i2).getAny();
                Objects.requireNonNull(any, "null cannot be cast to non-null type kotlin.String");
                str = (String) any;
                TextView textView = choiceTitleHolder.getBinding().f18394b;
                Intrinsics.checkNotNullExpressionValue(textView, "viewHolder.binding.more");
                textView.setVisibility(8);
            } else if (this.showdatas.get(i2).getAny() instanceof FindChoiceColloctionListData) {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Object any2 = this.showdatas.get(i2).getAny();
                Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData");
                ?? r7 = (FindChoiceColloctionListData) any2;
                objectRef.element = r7;
                str = ((FindChoiceColloctionListData) r7).getTitle();
                Intrinsics.checkNotNullExpressionValue(str, "da.title");
                TextView textView2 = choiceTitleHolder.getBinding().f18394b;
                Intrinsics.checkNotNullExpressionValue(textView2, "viewHolder.binding.more");
                CommonExtKt.onClick(textView2, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.adapter.FindClassifyAdapter$onBindViewHolder$3
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
                        IntentUtil.getInstance().goColloctionList(FindClassifyAdapter.this.getContext(), ((FindChoiceColloctionListData) objectRef.element).getTpl_type(), ((FindChoiceColloctionListData) objectRef.element).getCollection_id());
                    }
                });
            } else {
                str = "";
            }
            TextView textView3 = choiceTitleHolder.getBinding().f18395c;
            Intrinsics.checkNotNullExpressionValue(textView3, "viewHolder.binding.titleName");
            textView3.setText(str);
        } else if (itemViewType != 3) {
            if (itemViewType != 5) {
                return;
            }
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            Object any3 = this.showdatas.get(i2).getAny();
            Objects.requireNonNull(any3, "null cannot be cast to non-null type com.join.mgps.dto.CollectionBeanSub");
            objectRef2.element = (CollectionBeanSub) any3;
            ClassifyGameItemViewHolder classifyGameItemViewHolder = (ClassifyGameItemViewHolder) viewHolderx;
            MyImageLoader.h(classifyGameItemViewHolder.getBinding().f21070b, ((CollectionBeanSub) objectRef2.element).getIco_remote());
            TextView textView4 = classifyGameItemViewHolder.getBinding().f21071c;
            Intrinsics.checkNotNullExpressionValue(textView4, "viewHolder.binding.recomGameTv");
            textView4.setText(((CollectionBeanSub) objectRef2.element).getGame_name());
            LinearLayout root = classifyGameItemViewHolder.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "viewHolder.binding.root");
            CommonExtKt.onClick(root, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.adapter.FindClassifyAdapter$onBindViewHolder$2
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
                    IntentUtil.getInstance().goGameDetialActivity(FindClassifyAdapter.this.getContext(), ((CollectionBeanSub) objectRef2.element).getGame_id(), ((CollectionBeanSub) objectRef2.element).get_from_type());
                }
            });
        } else {
            Object any4 = this.showdatas.get(i2).getAny();
            Objects.requireNonNull(any4, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData");
            FindChoiceBannerData findChoiceBannerData = (FindChoiceBannerData) any4;
            ChoiceAdHolder choiceAdHolder = (ChoiceAdHolder) viewHolderx;
            final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            ?? game_info = findChoiceBannerData.getGame_info();
            Intrinsics.checkNotNullExpressionValue(game_info, "showData.game_info");
            objectRef3.element = game_info;
            choiceAdHolder.getBinding().f23144c.a(((CollectionBeanSubBusiness) objectRef3.element).getDownloadTask(), (CollectionBeanSubBusiness) objectRef3.element);
            MyImageLoader.p(choiceAdHolder.getBinding().f23143b, findChoiceBannerData.getPic(), r.c.f12144g);
            MyImageLoader.h(choiceAdHolder.getBinding().f23145d, ((CollectionBeanSubBusiness) objectRef3.element).getIco_remote());
            TextView textView5 = choiceAdHolder.getBinding().f23146e;
            Intrinsics.checkNotNullExpressionValue(textView5, "viewHolder.binding.gameInfo");
            textView5.setText(((CollectionBeanSubBusiness) objectRef3.element).getInfo());
            TextView textView6 = choiceAdHolder.getBinding().f23147f;
            Intrinsics.checkNotNullExpressionValue(textView6, "viewHolder.binding.gameName");
            textView6.setText(((CollectionBeanSubBusiness) objectRef3.element).getGame_name());
            RelativeLayout root2 = choiceAdHolder.getBinding().getRoot();
            Intrinsics.checkNotNullExpressionValue(root2, "viewHolder.binding.root");
            CommonExtKt.onClick(root2, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.adapter.FindClassifyAdapter$onBindViewHolder$1
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
                    IntentUtil.getInstance().goGameDetialActivity(FindClassifyAdapter.this.getContext(), ((CollectionBeanSubBusiness) objectRef3.element).getGame_id(), ((CollectionBeanSubBusiness) objectRef3.element).get_from_type());
                }
            });
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
            o6 d5 = o6.d(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(d5, "ClassifyMainadLayoutBind…ntext), viewGroup, false)");
            return new ChoiceAdHolder(d5);
        } else if (i2 != 5) {
            b6 d6 = b6.d(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(d6, "ChoiceTitleLayoutBinding…ntext), viewGroup, false)");
            return new ChoiceTitleHolder(d6);
        } else {
            i6 d7 = i6.d(LayoutInflater.from(this.context), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(d7, "ClassifyGameiconItemBind…ntext), viewGroup, false)");
            return new ClassifyGameItemViewHolder(d7);
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
