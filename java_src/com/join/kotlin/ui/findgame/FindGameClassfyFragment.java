package com.join.kotlin.ui.findgame;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ff;
import com.join.android.app.mgsim.wufun.databinding.gf;
import com.join.kotlin.presenter.FindModlePrensenter;
import com.join.kotlin.presenter.view.FindHomeView;
import com.join.kotlin.ui.findgame.FindGameClassfyFragment;
import com.join.kotlin.ui.findgame.adapter.FindClassifyAdapter;
import com.join.kotlin.ui.findgame.adapter.FindTypeListAdapter;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.kotlin.ui.findgame.data.FindChoiceColloctionListData;
import com.join.kotlin.ui.findgame.data.FindChoiceResultData;
import com.join.kotlin.ui.findgame.data.GameSubTypeData;
import com.join.kotlin.ui.findgame.data.GameTypeData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.event.l;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.BasDownLoadActivityPresenter;
import com.psk.kotlin.util.CommonListMainData;
import com.psk.kotlin.util.GridSpacingItemDecoration;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.androidannotations.api.sharedpreferences.p;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FindGameClassfyFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u00012\u00020\u0002:\u0003ijkB\u0007¢\u0006\u0004\bg\u0010hJ&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0007J\b\u0010\u000f\u001a\u00020\rH\u0016J\u001a\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u000e\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0012J\b\u0010\u0019\u001a\u00020\rH\u0016J\b\u0010\u001a\u001a\u00020\rH\u0016J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016R\"\u0010\u001e\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010,\u001a\u00020+8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\"\u00102\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010\u001f\u001a\u0004\b3\u0010!\"\u0004\b4\u0010#R(\u00107\u001a\b\u0012\u0004\u0012\u000206058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010>\u001a\u00020=8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR(\u0010D\u001a\b\u0012\u0004\u0012\u000206058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u00108\u001a\u0004\bE\u0010:\"\u0004\bF\u0010<R\"\u0010H\u001a\u00020G8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010O\u001a\u00020N8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR(\u0010V\u001a\b\u0012\u0004\u0012\u00020U058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bV\u00108\u001a\u0004\bW\u0010:\"\u0004\bX\u0010<R\"\u0010Z\u001a\u00020Y8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R\"\u0010a\u001a\u00020`8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\bc\u0010d\"\u0004\be\u0010f¨\u0006l"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/presenter/view/FindHomeView;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "Lcom/join/mgps/event/l;", "downloadTaskEvent", "", "onEventMainThread", "onDestroyView", "view", "onViewCreated", "", "pagex", "Lcom/join/kotlin/ui/findgame/data/FindChoiceResultData;", "result", "onLoadDataSuccess", "id", "showTypeList", "showLoding", "hidLoading", "", "message", "onError", "selectedType", "I", "getSelectedType", "()I", "setSelectedType", "(I)V", "Lcom/join/kotlin/presenter/FindModlePrensenter;", "presenter", "Lcom/join/kotlin/presenter/FindModlePrensenter;", "getPresenter", "()Lcom/join/kotlin/presenter/FindModlePrensenter;", "setPresenter", "(Lcom/join/kotlin/presenter/FindModlePrensenter;)V", "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "downloadprensenter", "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "getDownloadprensenter", "()Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "setDownloadprensenter", "(Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;)V", "page", "getPage", "setPage", "", "Lcom/psk/kotlin/util/CommonListMainData;", "datas", "Ljava/util/List;", "getDatas", "()Ljava/util/List;", "setDatas", "(Ljava/util/List;)V", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "leftTypeAdapter", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "getLeftTypeAdapter", "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "setLeftTypeAdapter", "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;)V", "choiceListData", "getChoiceListData", "setChoiceListData", "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "requestArgs", "Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "getRequestArgs", "()Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;", "setRequestArgs", "(Lcom/join/mgps/activity/vipzone/bean/LuckHistoryrequest;)V", "Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;", "findClassifyAdapter", "Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;", "getFindClassifyAdapter", "()Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;", "setFindClassifyAdapter", "(Lcom/join/kotlin/ui/findgame/adapter/FindClassifyAdapter;)V", "Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "gameTypeList", "getGameTypeList", "setGameTypeList", "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "findTypeAdapter", "Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "getFindTypeAdapter", "()Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;", "setFindTypeAdapter", "(Lcom/join/kotlin/ui/findgame/adapter/FindTypeListAdapter;)V", "Lcom/join/android/app/mgsim/wufun/databinding/gf;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/gf;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/gf;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/gf;)V", "<init>", "()V", "OnSelectedTabListener", "TabRecycleAdapter", "TabViewHolder", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class FindGameClassfyFragment extends Fragment implements FindHomeView {
    public gf binding;
    public BasDownLoadActivityPresenter downloadprensenter;
    public FindClassifyAdapter findClassifyAdapter;
    public FindTypeListAdapter findTypeAdapter;
    public List<GameTypeData> gameTypeList;
    public TabRecycleAdapter leftTypeAdapter;
    public FindModlePrensenter presenter;
    public LuckHistoryrequest requestArgs;
    private int selectedType;
    @NotNull
    private List<CommonListMainData> choiceListData = new ArrayList();
    @NotNull
    private List<CommonListMainData> datas = new ArrayList();
    private int page = 1;

    /* compiled from: FindGameClassfyFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0006"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;", "", "", "id", "", "onSelected", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public interface OnSelectedTabListener {
        void onSelected(int i2);
    }

    /* compiled from: FindGameClassfyFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019¢\u0006\u0004\b!\u0010\"J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\u0005H\u0016R\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R(\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabRecycleAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;", "Landroid/view/ViewGroup;", "p0", "", "p1", "onCreateViewHolder", "", "onBindViewHolder", "getItemCount", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;", "listener", "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;", "getListener", "()Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;", "setListener", "(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;)V", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "", "Lcom/join/kotlin/ui/findgame/data/GameTypeData;", "gameTypeList", "Ljava/util/List;", "getGameTypeList", "()Ljava/util/List;", "setGameTypeList", "(Ljava/util/List;)V", "<init>", "(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;Ljava/util/List;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class TabRecycleAdapter extends RecyclerView.Adapter<TabViewHolder> {
        @NotNull
        private Context context;
        @NotNull
        private List<GameTypeData> gameTypeList;
        @NotNull
        private OnSelectedTabListener listener;

        public TabRecycleAdapter(@NotNull Context context, @NotNull OnSelectedTabListener listener, @NotNull List<GameTypeData> gameTypeList) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(listener, "listener");
            Intrinsics.checkNotNullParameter(gameTypeList, "gameTypeList");
            this.context = context;
            this.listener = listener;
            this.gameTypeList = gameTypeList;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @NotNull
        public final List<GameTypeData> getGameTypeList() {
            return this.gameTypeList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.gameTypeList.size();
        }

        @NotNull
        public final OnSelectedTabListener getListener() {
            return this.listener;
        }

        public final void setContext(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "<set-?>");
            this.context = context;
        }

        public final void setGameTypeList(@NotNull List<GameTypeData> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.gameTypeList = list;
        }

        public final void setListener(@NotNull OnSelectedTabListener onSelectedTabListener) {
            Intrinsics.checkNotNullParameter(onSelectedTabListener, "<set-?>");
            this.listener = onSelectedTabListener;
        }

        /* JADX WARN: Type inference failed for: r5v2, types: [com.join.kotlin.ui.findgame.data.GameTypeData, T] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull TabViewHolder p02, int i2) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = this.gameTypeList.get(i2);
            TextView textView = p02.getBinding().f20126b;
            Intrinsics.checkNotNullExpressionValue(textView, "p0.binding.mTopCategoryNameTv");
            textView.setText(((GameTypeData) objectRef.element).getTitle());
            TextView textView2 = p02.getBinding().f20126b;
            Intrinsics.checkNotNullExpressionValue(textView2, "p0.binding.mTopCategoryNameTv");
            textView2.setSelected(((GameTypeData) objectRef.element).isSelected());
            TextView textView3 = p02.getBinding().f20126b;
            Intrinsics.checkNotNullExpressionValue(textView3, "p0.binding.mTopCategoryNameTv");
            CommonExtKt.onClick(textView3, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment$TabRecycleAdapter$onBindViewHolder$1
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
                    for (GameTypeData gameTypeData : FindGameClassfyFragment.TabRecycleAdapter.this.getGameTypeList()) {
                        gameTypeData.setSelected(((GameTypeData) objectRef.element).getType() == gameTypeData.getType());
                    }
                    FindGameClassfyFragment.TabRecycleAdapter.this.notifyDataSetChanged();
                    FindGameClassfyFragment.TabRecycleAdapter.this.getListener().onSelected(((GameTypeData) objectRef.element).getType());
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public TabViewHolder onCreateViewHolder(@NotNull ViewGroup p02, int i2) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ff d4 = ff.d(LayoutInflater.from(this.context), p02, false);
            Intrinsics.checkNotNullExpressionValue(d4, "FindgameClassfyCategoryI…from(context), p0, false)");
            return new TabViewHolder(d4);
        }
    }

    /* compiled from: FindGameClassfyFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$TabViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/android/app/mgsim/wufun/databinding/ff;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/ff;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ff;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ff;)V", "bindingx", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class TabViewHolder extends RecyclerView.ViewHolder {
        @NotNull
        private ff binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TabViewHolder(@NotNull ff bindingx) {
            super(bindingx.getRoot());
            Intrinsics.checkNotNullParameter(bindingx, "bindingx");
            this.binding = bindingx;
        }

        @NotNull
        public final ff getBinding() {
            return this.binding;
        }

        public final void setBinding(@NotNull ff ffVar) {
            Intrinsics.checkNotNullParameter(ffVar, "<set-?>");
            this.binding = ffVar;
        }
    }

    @NotNull
    public final gf getBinding() {
        gf gfVar = this.binding;
        if (gfVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return gfVar;
    }

    @NotNull
    public final List<CommonListMainData> getChoiceListData() {
        return this.choiceListData;
    }

    @NotNull
    public final List<CommonListMainData> getDatas() {
        return this.datas;
    }

    @NotNull
    public final BasDownLoadActivityPresenter getDownloadprensenter() {
        BasDownLoadActivityPresenter basDownLoadActivityPresenter = this.downloadprensenter;
        if (basDownLoadActivityPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadprensenter");
        }
        return basDownLoadActivityPresenter;
    }

    @NotNull
    public final FindClassifyAdapter getFindClassifyAdapter() {
        FindClassifyAdapter findClassifyAdapter = this.findClassifyAdapter;
        if (findClassifyAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findClassifyAdapter");
        }
        return findClassifyAdapter;
    }

    @NotNull
    public final FindTypeListAdapter getFindTypeAdapter() {
        FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
        if (findTypeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
        }
        return findTypeListAdapter;
    }

    @NotNull
    public final List<GameTypeData> getGameTypeList() {
        List<GameTypeData> list = this.gameTypeList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        }
        return list;
    }

    @NotNull
    public final TabRecycleAdapter getLeftTypeAdapter() {
        TabRecycleAdapter tabRecycleAdapter = this.leftTypeAdapter;
        if (tabRecycleAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftTypeAdapter");
        }
        return tabRecycleAdapter;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final FindModlePrensenter getPresenter() {
        FindModlePrensenter findModlePrensenter = this.presenter;
        if (findModlePrensenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        return findModlePrensenter;
    }

    @NotNull
    public final LuckHistoryrequest getRequestArgs() {
        LuckHistoryrequest luckHistoryrequest = this.requestArgs;
        if (luckHistoryrequest == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestArgs");
        }
        return luckHistoryrequest;
    }

    public final int getSelectedType() {
        return this.selectedType;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void hidLoading() {
        gf gfVar = this.binding;
        if (gfVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = gfVar.f20443e.f27058c;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.loadingLayoutMain.lodingLayout");
        linearLayout.setVisibility(8);
        gf gfVar2 = this.binding;
        if (gfVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout2 = gfVar2.f20441c.f24367d;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.failedLayoutMain.lodingFaile");
        linearLayout2.setVisibility(8);
        gf gfVar3 = this.binding;
        if (gfVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = gfVar3.f20442d;
        Intrinsics.checkNotNullExpressionValue(ptrClassicFrameLayout, "binding.llMain");
        ptrClassicFrameLayout.setVisibility(0);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        gf d4 = gf.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "FindgameClassfyFragmentL…flater, container, false)");
        this.binding = d4;
        c0.a().d(this);
        gf gfVar = this.binding;
        if (gfVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RecyclerView recyclerView = gfVar.f20444f;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.tabLayout");
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.gameTypeList = new ArrayList();
        String d5 = new PrefDef_(getContext()).gameTypeList().d();
        if (!(d5 == null || d5.length() == 0)) {
            Object readValue = new ObjectMapper().readValue(d5, JsonMapper.getInstance().createCollectionType(List.class, GameTypeData.class));
            Intrinsics.checkNotNullExpressionValue(readValue, "ObjectMapper().readValue…ameTypeData::class.java))");
            this.gameTypeList = (List) readValue;
        }
        List<GameTypeData> list = this.gameTypeList;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        }
        if (list.size() == 0) {
            List<GameTypeData> list2 = this.gameTypeList;
            if (list2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            list2.add(new GameTypeData(0, "精选", 0, null, true));
            List<GameTypeData> list3 = this.gameTypeList;
            if (list3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            list3.add(new GameTypeData(1, "模拟器", 1, null, false));
            List<GameTypeData> list4 = this.gameTypeList;
            if (list4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            list4.add(new GameTypeData(2, "安卓", 2, null, false));
            List<GameTypeData> list5 = this.gameTypeList;
            if (list5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            list5.add(new GameTypeData(3, "分类", 3, null, false));
            List<GameTypeData> list6 = this.gameTypeList;
            if (list6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            list6.add(new GameTypeData(4, "题材", 4, null, false));
            List<GameTypeData> list7 = this.gameTypeList;
            if (list7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            list7.add(new GameTypeData(5, "玩法", 5, null, false));
            List<GameTypeData> list8 = this.gameTypeList;
            if (list8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
            }
            list8.add(new GameTypeData(6, "特色", 6, null, false));
        }
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        Intrinsics.checkNotNullExpressionValue(activity, "activity!!");
        OnSelectedTabListener onSelectedTabListener = new OnSelectedTabListener() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment$onCreateView$1
            @Override // com.join.kotlin.ui.findgame.FindGameClassfyFragment.OnSelectedTabListener
            public void onSelected(int i2) {
                FindGameClassfyFragment.this.setSelectedType(i2);
                List<CommonListMainData> choiceListData = FindGameClassfyFragment.this.getChoiceListData();
                if (choiceListData == null || choiceListData.isEmpty()) {
                    return;
                }
                FindGameClassfyFragment.this.showTypeList(i2);
            }
        };
        List<GameTypeData> list9 = this.gameTypeList;
        if (list9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
        }
        this.leftTypeAdapter = new TabRecycleAdapter(activity, onSelectedTabListener, list9);
        gf gfVar2 = this.binding;
        if (gfVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        RecyclerView recyclerView2 = gfVar2.f20444f;
        Intrinsics.checkNotNullExpressionValue(recyclerView2, "binding.tabLayout");
        TabRecycleAdapter tabRecycleAdapter = this.leftTypeAdapter;
        if (tabRecycleAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftTypeAdapter");
        }
        recyclerView2.setAdapter(tabRecycleAdapter);
        TabRecycleAdapter tabRecycleAdapter2 = this.leftTypeAdapter;
        if (tabRecycleAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leftTypeAdapter");
        }
        tabRecycleAdapter2.notifyDataSetChanged();
        gf gfVar3 = this.binding;
        if (gfVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        Button button = gfVar3.f20441c.f24369f;
        Intrinsics.checkNotNullExpressionValue(button, "binding.failedLayoutMain.setNetwork");
        CommonExtKt.onClick(button, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment$onCreateView$2
            /* JADX INFO: Access modifiers changed from: package-private */
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
                UtilsMy.I2(FindGameClassfyFragment.this.getContext());
            }
        });
        gf gfVar4 = this.binding;
        if (gfVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = gfVar4.f20441c.f24368e;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.failedLayoutMain.relodingimag");
        CommonExtKt.onClick(imageView, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment$onCreateView$3
            /* JADX INFO: Access modifiers changed from: package-private */
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
                FindModlePrensenter presenter = FindGameClassfyFragment.this.getPresenter();
                FragmentActivity activity2 = FindGameClassfyFragment.this.getActivity();
                Intrinsics.checkNotNull(activity2);
                Intrinsics.checkNotNullExpressionValue(activity2, "activity!!");
                presenter.loadClassfyDatas(activity2, FindGameClassfyFragment.this.getRequestArgs());
            }
        });
        this.presenter = new FindModlePrensenter(this);
        FragmentActivity activity2 = getActivity();
        Intrinsics.checkNotNull(activity2);
        Intrinsics.checkNotNullExpressionValue(activity2, "activity!!");
        this.findClassifyAdapter = new FindClassifyAdapter(activity2, this.choiceListData);
        gf gfVar5 = this.binding;
        if (gfVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView = gfVar5.f20440b;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.dataList");
        FindClassifyAdapter findClassifyAdapter = this.findClassifyAdapter;
        if (findClassifyAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findClassifyAdapter");
        }
        xRecyclerView.setAdapter(findClassifyAdapter);
        gf gfVar6 = this.binding;
        if (gfVar6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        gfVar6.f20445g.setLoadingMoreEnabled(false);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 3);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment$onCreateView$4
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i2) {
                return (i2 >= FindGameClassfyFragment.this.getChoiceListData().size() || FindGameClassfyFragment.this.getChoiceListData().get(i2).getType() == 3 || FindGameClassfyFragment.this.getChoiceListData().get(i2).getType() == 1) ? 3 : 1;
            }
        });
        gf gfVar7 = this.binding;
        if (gfVar7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView2 = gfVar7.f20440b;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView2, "binding.dataList");
        xRecyclerView2.setLayoutManager(gridLayoutManager);
        gf gfVar8 = this.binding;
        if (gfVar8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView3 = gfVar8.f20440b;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView3, "binding.dataList");
        BasDownLoadActivityPresenter basDownLoadActivityPresenter = new BasDownLoadActivityPresenter(gridLayoutManager, xRecyclerView3, this.choiceListData);
        this.downloadprensenter = basDownLoadActivityPresenter;
        FindClassifyAdapter findClassifyAdapter2 = this.findClassifyAdapter;
        if (findClassifyAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findClassifyAdapter");
        }
        basDownLoadActivityPresenter.initData(findClassifyAdapter2);
        FragmentActivity activity3 = getActivity();
        Intrinsics.checkNotNull(activity3);
        Intrinsics.checkNotNullExpressionValue(activity3, "activity!!");
        this.findTypeAdapter = new FindTypeListAdapter(activity3, getId(), this.datas, new FindTypeListAdapter.OnItenSelected() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment$onCreateView$5
            @Override // com.join.kotlin.ui.findgame.adapter.FindTypeListAdapter.OnItenSelected
            public void onItemselected(@NotNull GameSubTypeData type) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intent intent = new Intent(FindGameClassfyFragment.this.getContext(), CategoryDetailListActivity.class);
                intent.putExtra("typeId", FindGameClassfyFragment.this.getSelectedType());
                intent.putExtra("tagId", type.getId());
                intent.putExtra("tagName", type.getTitle());
                Context context = FindGameClassfyFragment.this.getContext();
                if (context != null) {
                    context.startActivity(intent);
                }
            }
        });
        gf gfVar9 = this.binding;
        if (gfVar9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView4 = gfVar9.f20445g;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView4, "binding.typeList");
        FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
        if (findTypeListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
        }
        xRecyclerView4.setAdapter(findTypeListAdapter);
        gf gfVar10 = this.binding;
        if (gfVar10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return gfVar10.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        c0.a().e(this);
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void onError(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            CommonExtKt.toast(activity, message);
        }
        List<CommonListMainData> list = this.choiceListData;
        if ((list == null || list.isEmpty()) || this.choiceListData.size() <= 0) {
            gf gfVar = this.binding;
            if (gfVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            LinearLayout linearLayout = gfVar.f20443e.f27058c;
            Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.loadingLayoutMain.lodingLayout");
            linearLayout.setVisibility(8);
            gf gfVar2 = this.binding;
            if (gfVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            LinearLayout linearLayout2 = gfVar2.f20441c.f24367d;
            Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.failedLayoutMain.lodingFaile");
            linearLayout2.setVisibility(0);
            gf gfVar3 = this.binding;
            if (gfVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            PtrClassicFrameLayout ptrClassicFrameLayout = gfVar3.f20442d;
            Intrinsics.checkNotNullExpressionValue(ptrClassicFrameLayout, "binding.llMain");
            ptrClassicFrameLayout.setVisibility(8);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull l downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        BasDownLoadActivityPresenter basDownLoadActivityPresenter = this.downloadprensenter;
        if (basDownLoadActivityPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadprensenter");
        }
        basDownLoadActivityPresenter.onEventMainThread(downloadTaskEvent);
    }

    @Override // com.join.kotlin.presenter.view.FindHomeView
    public void onLoadDataSuccess(int i2, @NotNull FindChoiceResultData result) {
        List<FindChoiceColloctionListData> collection_list;
        Intrinsics.checkNotNullParameter(result, "result");
        if (i2 == 1 || i2 == this.page) {
            if (i2 == 1) {
                this.page = 1;
                gf gfVar = this.binding;
                if (gfVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                gfVar.f20440b.s1();
                this.choiceListData.clear();
                List<GameTypeData> game_type = result.getGame_type();
                Intrinsics.checkNotNullExpressionValue(game_type, "result.game_type");
                this.gameTypeList = game_type;
                if (game_type == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                }
                game_type.add(0, new GameTypeData(0, "精选", 0, null, true));
                try {
                    p gameTypeList = new PrefDef_(requireContext()).gameTypeList();
                    JsonMapper jsonMapper = JsonMapper.getInstance();
                    List<GameTypeData> list = this.gameTypeList;
                    if (list == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                    }
                    gameTypeList.g(jsonMapper.toJson(list));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                TabRecycleAdapter tabRecycleAdapter = this.leftTypeAdapter;
                if (tabRecycleAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("leftTypeAdapter");
                }
                tabRecycleAdapter.notifyDataSetChanged();
                List<FindChoiceBannerData> banner = result.getBanner();
                if (!(banner == null || banner.isEmpty())) {
                    FindChoiceBannerData choiceBannerData = result.getBanner().get(0);
                    Intrinsics.checkNotNullExpressionValue(choiceBannerData, "choiceBannerData");
                    CollectionBeanSubBusiness game_info = choiceBannerData.getGame_info();
                    Intrinsics.checkNotNullExpressionValue(game_info, "choiceBannerData.game_info");
                    game_info.set_from(143);
                    CollectionBeanSubBusiness game_info2 = choiceBannerData.getGame_info();
                    Intrinsics.checkNotNullExpressionValue(game_info2, "choiceBannerData.game_info");
                    game_info2.set_from_type(143);
                    BasDownLoadActivityPresenter basDownLoadActivityPresenter = this.downloadprensenter;
                    if (basDownLoadActivityPresenter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("downloadprensenter");
                    }
                    CollectionBeanSubBusiness game_info3 = choiceBannerData.getGame_info();
                    Intrinsics.checkNotNullExpressionValue(game_info3, "choiceBannerData.game_info");
                    basDownLoadActivityPresenter.updateDowState(game_info3);
                    List<CommonListMainData> list2 = this.choiceListData;
                    FindChoiceBannerData findChoiceBannerData = result.getBanner().get(0);
                    Intrinsics.checkNotNullExpressionValue(findChoiceBannerData, "result.banner[0]");
                    list2.add(new CommonListMainData(3, findChoiceBannerData, null, null, 12, null));
                }
            }
            Intrinsics.checkNotNullExpressionValue(result.getCollection_list(), "result.collection_list");
            if (!collection_list.isEmpty()) {
                gf gfVar2 = this.binding;
                if (gfVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                gfVar2.f20440b.q1();
                this.page++;
            } else {
                gf gfVar3 = this.binding;
                if (gfVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                gfVar3.f20440b.setNoMore();
            }
            List<FindChoiceColloctionListData> collection_list2 = result.getCollection_list();
            if (collection_list2 != null) {
                for (FindChoiceColloctionListData itx : collection_list2) {
                    List<CommonListMainData> list3 = this.choiceListData;
                    Intrinsics.checkNotNullExpressionValue(itx, "itx");
                    list3.add(new CommonListMainData(1, itx, null, null, 12, null));
                    List<CollectionBeanSub> game_list = itx.getGame_list();
                    Intrinsics.checkNotNullExpressionValue(game_list, "itx.game_list");
                    for (CollectionBeanSub it2 : game_list) {
                        Intrinsics.checkNotNullExpressionValue(it2, "it2");
                        it2.set_from(141);
                        it2.set_from_type(141);
                        this.choiceListData.add(new CommonListMainData(5, it2, null, null, 12, null));
                    }
                }
            }
            FindClassifyAdapter findClassifyAdapter = this.findClassifyAdapter;
            if (findClassifyAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("findClassifyAdapter");
            }
            findClassifyAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
        this.requestArgs = luckHistoryrequest;
        luckHistoryrequest.setPage(1);
        LuckHistoryrequest luckHistoryrequest2 = this.requestArgs;
        if (luckHistoryrequest2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestArgs");
        }
        AccountUtil_ instance_ = AccountUtil_.getInstance_(getActivity());
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(activity)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(activity).accountData");
        luckHistoryrequest2.setUid(accountData.getUid());
        FindModlePrensenter findModlePrensenter = this.presenter;
        if (findModlePrensenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        Intrinsics.checkNotNullExpressionValue(activity, "activity!!");
        LuckHistoryrequest luckHistoryrequest3 = this.requestArgs;
        if (luckHistoryrequest3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requestArgs");
        }
        findModlePrensenter.loadClassfyDatas(activity, luckHistoryrequest3);
        gf gfVar = this.binding;
        if (gfVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        gfVar.f20440b.setPullRefreshEnabled(true);
        gf gfVar2 = this.binding;
        if (gfVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        gfVar2.f20440b.setLoadingMoreEnabled(true);
        gf gfVar3 = this.binding;
        if (gfVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        gfVar3.f20440b.setPreLoadCount(10);
        gf gfVar4 = this.binding;
        if (gfVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        gfVar4.f20440b.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.findgame.FindGameClassfyFragment$onViewCreated$1
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                FindGameClassfyFragment.this.getRequestArgs().setPage(FindGameClassfyFragment.this.getPage());
                FindModlePrensenter presenter = FindGameClassfyFragment.this.getPresenter();
                FragmentActivity activity2 = FindGameClassfyFragment.this.getActivity();
                Intrinsics.checkNotNull(activity2);
                Intrinsics.checkNotNullExpressionValue(activity2, "activity!!");
                presenter.loadClassfyDatas(activity2, FindGameClassfyFragment.this.getRequestArgs());
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                FindGameClassfyFragment.this.getBinding().f20440b.t1();
                FindGameClassfyFragment.this.setPage(1);
                FindGameClassfyFragment.this.getRequestArgs().setPage(FindGameClassfyFragment.this.getPage());
                FindModlePrensenter presenter = FindGameClassfyFragment.this.getPresenter();
                FragmentActivity activity2 = FindGameClassfyFragment.this.getActivity();
                Intrinsics.checkNotNull(activity2);
                Intrinsics.checkNotNullExpressionValue(activity2, "activity!!");
                presenter.loadClassfyDatas(activity2, FindGameClassfyFragment.this.getRequestArgs());
            }
        });
    }

    public final void setBinding(@NotNull gf gfVar) {
        Intrinsics.checkNotNullParameter(gfVar, "<set-?>");
        this.binding = gfVar;
    }

    public final void setChoiceListData(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.choiceListData = list;
    }

    public final void setDatas(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.datas = list;
    }

    public final void setDownloadprensenter(@NotNull BasDownLoadActivityPresenter basDownLoadActivityPresenter) {
        Intrinsics.checkNotNullParameter(basDownLoadActivityPresenter, "<set-?>");
        this.downloadprensenter = basDownLoadActivityPresenter;
    }

    public final void setFindClassifyAdapter(@NotNull FindClassifyAdapter findClassifyAdapter) {
        Intrinsics.checkNotNullParameter(findClassifyAdapter, "<set-?>");
        this.findClassifyAdapter = findClassifyAdapter;
    }

    public final void setFindTypeAdapter(@NotNull FindTypeListAdapter findTypeListAdapter) {
        Intrinsics.checkNotNullParameter(findTypeListAdapter, "<set-?>");
        this.findTypeAdapter = findTypeListAdapter;
    }

    public final void setGameTypeList(@NotNull List<GameTypeData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.gameTypeList = list;
    }

    public final void setLeftTypeAdapter(@NotNull TabRecycleAdapter tabRecycleAdapter) {
        Intrinsics.checkNotNullParameter(tabRecycleAdapter, "<set-?>");
        this.leftTypeAdapter = tabRecycleAdapter;
    }

    public final void setPage(int i2) {
        this.page = i2;
    }

    public final void setPresenter(@NotNull FindModlePrensenter findModlePrensenter) {
        Intrinsics.checkNotNullParameter(findModlePrensenter, "<set-?>");
        this.presenter = findModlePrensenter;
    }

    public final void setRequestArgs(@NotNull LuckHistoryrequest luckHistoryrequest) {
        Intrinsics.checkNotNullParameter(luckHistoryrequest, "<set-?>");
        this.requestArgs = luckHistoryrequest;
    }

    public final void setSelectedType(int i2) {
        this.selectedType = i2;
    }

    @Override // com.psk.kotlin.base.presenter.view.BaseView
    public void showLoding() {
        gf gfVar = this.binding;
        if (gfVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = gfVar.f20443e.f27058c;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.loadingLayoutMain.lodingLayout");
        linearLayout.setVisibility(0);
        gf gfVar2 = this.binding;
        if (gfVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout2 = gfVar2.f20441c.f24367d;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.failedLayoutMain.lodingFaile");
        linearLayout2.setVisibility(8);
        gf gfVar3 = this.binding;
        if (gfVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = gfVar3.f20442d;
        Intrinsics.checkNotNullExpressionValue(ptrClassicFrameLayout, "binding.llMain");
        ptrClassicFrameLayout.setVisibility(8);
    }

    public final void showTypeList(int i2) {
        try {
            if (i2 == 0) {
                gf gfVar = this.binding;
                if (gfVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                PtrClassicFrameLayout ptrClassicFrameLayout = gfVar.f20442d;
                Intrinsics.checkNotNullExpressionValue(ptrClassicFrameLayout, "binding.llMain");
                ptrClassicFrameLayout.setVisibility(0);
                gf gfVar2 = this.binding;
                if (gfVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                XRecyclerView xRecyclerView = gfVar2.f20445g;
                Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.typeList");
                xRecyclerView.setVisibility(8);
                if (this.findClassifyAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("findClassifyAdapter");
                    return;
                }
                return;
            }
            gf gfVar3 = this.binding;
            if (gfVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            PtrClassicFrameLayout ptrClassicFrameLayout2 = gfVar3.f20442d;
            Intrinsics.checkNotNullExpressionValue(ptrClassicFrameLayout2, "binding.llMain");
            ptrClassicFrameLayout2.setVisibility(8);
            gf gfVar4 = this.binding;
            if (gfVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            XRecyclerView xRecyclerView2 = gfVar4.f20445g;
            Intrinsics.checkNotNullExpressionValue(xRecyclerView2, "binding.typeList");
            xRecyclerView2.setVisibility(0);
            this.datas.clear();
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp16);
            if (i2 == 1) {
                gf gfVar5 = this.binding;
                if (gfVar5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                XRecyclerView xRecyclerView3 = gfVar5.f20445g;
                Intrinsics.checkNotNullExpressionValue(xRecyclerView3, "binding.typeList");
                xRecyclerView3.setLayoutManager(new GridLayoutManager(getContext(), 2));
                while (true) {
                    gf gfVar6 = this.binding;
                    if (gfVar6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    }
                    XRecyclerView xRecyclerView4 = gfVar6.f20445g;
                    Intrinsics.checkNotNullExpressionValue(xRecyclerView4, "binding.typeList");
                    if (xRecyclerView4.getItemDecorationCount() <= 0) {
                        break;
                    }
                    gf gfVar7 = this.binding;
                    if (gfVar7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    }
                    gfVar7.f20445g.removeItemDecorationAt(0);
                }
                gf gfVar8 = this.binding;
                if (gfVar8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                gfVar8.f20445g.addItemDecoration(new GridSpacingItemDecoration(2, dimensionPixelOffset, false));
                List<GameTypeData> list = this.gameTypeList;
                if (list == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                }
                ArrayList<GameTypeData> arrayList = new ArrayList();
                for (Object obj : list) {
                    if (((GameTypeData) obj).getType() == i2) {
                        arrayList.add(obj);
                    }
                }
                ArrayList<GameSubTypeData> arrayList2 = new ArrayList();
                for (GameTypeData gameTypeData : arrayList) {
                    List<GameSubTypeData> sub_game_type = gameTypeData.getSub_game_type();
                    Intrinsics.checkNotNull(sub_game_type);
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList2, sub_game_type);
                }
                for (GameSubTypeData e4 : arrayList2) {
                    List<CommonListMainData> list2 = this.datas;
                    Intrinsics.checkNotNullExpressionValue(e4, "e");
                    list2.add(new CommonListMainData(3, e4, null, null, 12, null));
                }
            } else {
                if (i2 != 2 && i2 != 3) {
                    if (i2 == 4 || i2 == 5 || i2 == 6) {
                        gf gfVar9 = this.binding;
                        if (gfVar9 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                        }
                        XRecyclerView xRecyclerView5 = gfVar9.f20445g;
                        Intrinsics.checkNotNullExpressionValue(xRecyclerView5, "binding.typeList");
                        xRecyclerView5.setLayoutManager(new GridLayoutManager(getContext(), 3));
                        while (true) {
                            gf gfVar10 = this.binding;
                            if (gfVar10 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            }
                            XRecyclerView xRecyclerView6 = gfVar10.f20445g;
                            Intrinsics.checkNotNullExpressionValue(xRecyclerView6, "binding.typeList");
                            if (xRecyclerView6.getItemDecorationCount() <= 0) {
                                break;
                            }
                            gf gfVar11 = this.binding;
                            if (gfVar11 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                            }
                            gfVar11.f20445g.removeItemDecorationAt(0);
                        }
                        gf gfVar12 = this.binding;
                        if (gfVar12 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                        }
                        gfVar12.f20445g.addItemDecoration(new GridSpacingItemDecoration(3, dimensionPixelOffset, false));
                        List<GameTypeData> list3 = this.gameTypeList;
                        if (list3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                        }
                        ArrayList<GameTypeData> arrayList3 = new ArrayList();
                        for (Object obj2 : list3) {
                            if (((GameTypeData) obj2).getType() == i2) {
                                arrayList3.add(obj2);
                            }
                        }
                        ArrayList<GameSubTypeData> arrayList4 = new ArrayList();
                        for (GameTypeData gameTypeData2 : arrayList3) {
                            List<GameSubTypeData> sub_game_type2 = gameTypeData2.getSub_game_type();
                            Intrinsics.checkNotNull(sub_game_type2);
                            CollectionsKt__MutableCollectionsKt.addAll(arrayList4, sub_game_type2);
                        }
                        for (GameSubTypeData e5 : arrayList4) {
                            List<CommonListMainData> list4 = this.datas;
                            Intrinsics.checkNotNullExpressionValue(e5, "e");
                            list4.add(new CommonListMainData(7, e5, null, null, 12, null));
                        }
                    }
                }
                gf gfVar13 = this.binding;
                if (gfVar13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                XRecyclerView xRecyclerView7 = gfVar13.f20445g;
                Intrinsics.checkNotNullExpressionValue(xRecyclerView7, "binding.typeList");
                xRecyclerView7.setLayoutManager(new GridLayoutManager(getContext(), 1));
                while (true) {
                    gf gfVar14 = this.binding;
                    if (gfVar14 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    }
                    XRecyclerView xRecyclerView8 = gfVar14.f20445g;
                    Intrinsics.checkNotNullExpressionValue(xRecyclerView8, "binding.typeList");
                    if (xRecyclerView8.getItemDecorationCount() <= 0) {
                        break;
                    }
                    gf gfVar15 = this.binding;
                    if (gfVar15 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    }
                    gfVar15.f20445g.removeItemDecorationAt(0);
                }
                gf gfVar16 = this.binding;
                if (gfVar16 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                gfVar16.f20445g.addItemDecoration(new GridSpacingItemDecoration(1, dimensionPixelOffset, false));
                List<GameTypeData> list5 = this.gameTypeList;
                if (list5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("gameTypeList");
                }
                ArrayList<GameTypeData> arrayList5 = new ArrayList();
                for (Object obj3 : list5) {
                    if (((GameTypeData) obj3).getType() == i2) {
                        arrayList5.add(obj3);
                    }
                }
                ArrayList<GameSubTypeData> arrayList6 = new ArrayList();
                for (GameTypeData gameTypeData3 : arrayList5) {
                    List<GameSubTypeData> sub_game_type3 = gameTypeData3.getSub_game_type();
                    Intrinsics.checkNotNull(sub_game_type3);
                    CollectionsKt__MutableCollectionsKt.addAll(arrayList6, sub_game_type3);
                }
                for (GameSubTypeData e6 : arrayList6) {
                    List<CommonListMainData> list6 = this.datas;
                    Intrinsics.checkNotNullExpressionValue(e6, "e");
                    list6.add(new CommonListMainData(3, e6, null, null, 12, null));
                }
            }
            FindTypeListAdapter findTypeListAdapter = this.findTypeAdapter;
            if (findTypeListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("findTypeAdapter");
            }
            findTypeListAdapter.updateDatas(i2);
        } catch (Exception unused) {
        }
    }
}
