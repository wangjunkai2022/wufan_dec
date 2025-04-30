package com.join.kotlin;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.a;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.common.utils.f;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.cs;
import com.join.android.app.mgsim.wufun.databinding.me;
import com.join.android.app.mgsim.wufun.databinding.ne;
import com.join.kotlin.EverdayNewFragment;
import com.join.kotlin.ui.findgame.data.EverdayNewListItem;
import com.join.kotlin.ui.findgame.data.EverdayNewResultData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.x;
import com.join.mgps.activity.LocalGameActivity;
import com.join.mgps.activity.vipzone.bean.LuckHistoryrequest;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.DownloadViewStroke;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.event.l;
import com.join.mgps.rpc.impl.h;
import com.psk.kotlin.ext.CommonExtKt;
import com.psk.kotlin.util.BasDownLoadActivityPresenter;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import net.lingala.zip4j.util.e;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* compiled from: EverdayNewFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001:\u0003YZ[B\u0007¢\u0006\u0004\bW\u0010XJ&\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u001a\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u000e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rJ\u001c\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\b\u0010\u0014\u001a\u00020\u000bH\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0015H\u0007J\u0006\u0010\u0018\u001a\u00020\u000bJ\u0006\u0010\u0019\u001a\u00020\u000bJ\u000e\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001aR\"\u0010\u001d\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010#\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001e\u001a\u0004\b$\u0010 \"\u0004\b%\u0010\"R\"\u0010&\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010,\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010\u001e\u001a\u0004\b-\u0010 \"\u0004\b.\u0010\"R\"\u00100\u001a\u00020/8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u00106\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\u001e\u001a\u0004\b7\u0010 \"\u0004\b8\u0010\"R\"\u0010:\u001a\u0002098\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\"\u0010A\u001a\u00020@8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR2\u0010J\u001a\u0012\u0012\u0004\u0012\u00020H0Gj\b\u0012\u0004\u0012\u00020H`I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\"\u0010Q\u001a\u00020P8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010V¨\u0006\\"}, d2 = {"Lcom/join/kotlin/EverdayNewFragment;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "", "onViewCreated", "", "page", "loadData", "", "Lcom/join/kotlin/ui/findgame/data/EverdayNewListItem;", "datas", "loadFinish", "onDestroyView", "Lcom/join/mgps/event/l;", "downloadTaskEvent", "onEventMainThread", "showLoding", "hidLoading", "", "message", "onError", "pageCount", "I", "getPageCount", "()I", "setPageCount", "(I)V", "lastVisibleIndex", "getLastVisibleIndex", "setLastVisibleIndex", "lastTimeDay", "Ljava/lang/String;", "getLastTimeDay", "()Ljava/lang/String;", "setLastTimeDay", "(Ljava/lang/String;)V", "type", "getType", "setType", "Lcom/join/android/app/mgsim/wufun/databinding/me;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/me;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/me;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/me;)V", "firstVisiblePosition", "getFirstVisiblePosition", "setFirstVisiblePosition", "Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;", "adapter", "Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;", "getAdapter", "()Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;", "setAdapter", "(Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;)V", "Landroidx/recyclerview/widget/LinearLayoutManager;", "manager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "Ljava/util/ArrayList;", "Lcom/psk/kotlin/util/CommonListMainData;", "Lkotlin/collections/ArrayList;", "showDataList", "Ljava/util/ArrayList;", "getShowDataList", "()Ljava/util/ArrayList;", "setShowDataList", "(Ljava/util/ArrayList;)V", "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "presenter", "Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "getPresenter", "()Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "setPresenter", "(Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;)V", "<init>", "()V", "EverdayNewAdapter", "ViewHolderGame", "ViewHolderTitle", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class EverdayNewFragment extends Fragment {
    public EverdayNewAdapter adapter;
    public me binding;
    private int firstVisiblePosition;
    private int lastVisibleIndex;
    public LinearLayoutManager manager;
    public BasDownLoadActivityPresenter presenter;
    @NotNull
    private ArrayList<CommonListMainData> showDataList = new ArrayList<>();
    private int pageCount = 1;
    private int type = 1;
    @NotNull
    private String lastTimeDay = "0";

    /* compiled from: EverdayNewFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010S\u001a\u00020R¢\u0006\u0004\bT\u0010UR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\u001e\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u000b\u001a\u0004\b\u001f\u0010\r\"\u0004\b \u0010\u000fR\"\u0010!\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u000b\u001a\u0004\b\"\u0010\r\"\u0004\b#\u0010\u000fR\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010+\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010\u000b\u001a\u0004\b,\u0010\r\"\u0004\b-\u0010\u000fR\"\u0010.\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u000b\u001a\u0004\b/\u0010\r\"\u0004\b0\u0010\u000fR\"\u00101\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\u000b\u001a\u0004\b2\u0010\r\"\u0004\b3\u0010\u000fR\"\u00104\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010&\u001a\u0004\b5\u0010(\"\u0004\b6\u0010*R\"\u00108\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010F\u001a\u00020E8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\"\u0010L\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010\u0012\u001a\u0004\bM\u0010\u0014\"\u0004\bN\u0010\u0016R\"\u0010O\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010\u0012\u001a\u0004\bP\u0010\u0014\"\u0004\bQ\u0010\u0016¨\u0006V"}, d2 = {"Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/join/mgps/customview/DownloadViewStroke;", "downloadViewStroke", "Lcom/join/mgps/customview/DownloadViewStroke;", "getDownloadViewStroke", "()Lcom/join/mgps/customview/DownloadViewStroke;", "setDownloadViewStroke", "(Lcom/join/mgps/customview/DownloadViewStroke;)V", "Landroid/widget/TextView;", "describe", "Landroid/widget/TextView;", "getDescribe", "()Landroid/widget/TextView;", "setDescribe", "(Landroid/widget/TextView;)V", "Landroid/widget/LinearLayout;", "tipsLayout", "Landroid/widget/LinearLayout;", "getTipsLayout", "()Landroid/widget/LinearLayout;", "setTipsLayout", "(Landroid/widget/LinearLayout;)V", "Landroid/view/View;", "line", "Landroid/view/View;", "getLine", "()Landroid/view/View;", "setLine", "(Landroid/view/View;)V", "testTime", "getTestTime", "setTestTime", "testType", "getTestType", "setTestType", "Landroid/widget/ProgressBar;", "progressBar", "Landroid/widget/ProgressBar;", "getProgressBar", "()Landroid/widget/ProgressBar;", "setProgressBar", "(Landroid/widget/ProgressBar;)V", "name", "getName", "setName", "appSize", "getAppSize", "setAppSize", "lodingInfo", "getLodingInfo", "setLodingInfo", "progressBarZip", "getProgressBarZip", "setProgressBarZip", "Landroid/widget/ImageView;", "giftPackageSwich", "Landroid/widget/ImageView;", "getGiftPackageSwich", "()Landroid/widget/ImageView;", "setGiftPackageSwich", "(Landroid/widget/ImageView;)V", "Lcom/facebook/drawee/view/SimpleDraweeView;", "icon", "Lcom/facebook/drawee/view/SimpleDraweeView;", "getIcon", "()Lcom/facebook/drawee/view/SimpleDraweeView;", "setIcon", "(Lcom/facebook/drawee/view/SimpleDraweeView;)V", "Landroid/widget/RelativeLayout;", "relateLayoutApp", "Landroid/widget/RelativeLayout;", "getRelateLayoutApp", "()Landroid/widget/RelativeLayout;", "setRelateLayoutApp", "(Landroid/widget/RelativeLayout;)V", "openTest", "getOpenTest", "setOpenTest", "linearLayout2", "getLinearLayout2", "setLinearLayout2", "Lcom/join/android/app/mgsim/wufun/databinding/cs;", "convertView", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/cs;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ViewHolderGame extends RecyclerView.ViewHolder {
        @NotNull
        private TextView appSize;
        @NotNull
        private TextView describe;
        @NotNull
        private DownloadViewStroke downloadViewStroke;
        @NotNull
        private ImageView giftPackageSwich;
        @NotNull
        private SimpleDraweeView icon;
        @NotNull
        private View line;
        @NotNull
        private LinearLayout linearLayout2;
        @NotNull
        private TextView lodingInfo;
        @NotNull
        private TextView name;
        @NotNull
        private LinearLayout openTest;
        @NotNull
        private ProgressBar progressBar;
        @NotNull
        private ProgressBar progressBarZip;
        @NotNull
        private RelativeLayout relateLayoutApp;
        @NotNull
        private TextView testTime;
        @NotNull
        private TextView testType;
        @NotNull
        private LinearLayout tipsLayout;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolderGame(@NotNull cs convertView) {
            super(convertView.getRoot());
            Intrinsics.checkNotNullParameter(convertView, "convertView");
            SimpleDraweeView simpleDraweeView = convertView.f19053k;
            Intrinsics.checkNotNullExpressionValue(simpleDraweeView, "convertView.mgListviewItemIcon");
            this.icon = simpleDraweeView;
            ImageView imageView = convertView.f19046d;
            Intrinsics.checkNotNullExpressionValue(imageView, "convertView.giftPackageSwich");
            this.giftPackageSwich = imageView;
            TextView textView = convertView.f19051i;
            Intrinsics.checkNotNullExpressionValue(textView, "convertView.mgListviewItemAppname");
            this.name = textView;
            DownloadViewStroke downloadViewStroke = convertView.f19045c;
            Intrinsics.checkNotNullExpressionValue(downloadViewStroke, "convertView.downloadView");
            this.downloadViewStroke = downloadViewStroke;
            RelativeLayout relativeLayout = convertView.f19057o;
            Intrinsics.checkNotNullExpressionValue(relativeLayout, "convertView.relateLayoutApp");
            this.relateLayoutApp = relativeLayout;
            SimpleDraweeView simpleDraweeView2 = convertView.f19053k;
            Intrinsics.checkNotNullExpressionValue(simpleDraweeView2, "convertView.mgListviewItemIcon");
            this.line = simpleDraweeView2;
            TextView textView2 = convertView.f19052j;
            Intrinsics.checkNotNullExpressionValue(textView2, "convertView.mgListviewItemDescribe");
            this.describe = textView2;
            LinearLayout linearLayout = convertView.f19049g;
            Intrinsics.checkNotNullExpressionValue(linearLayout, "convertView.linearLayout2");
            this.linearLayout2 = linearLayout;
            LinearLayout linearLayout2 = convertView.f19060r;
            Intrinsics.checkNotNullExpressionValue(linearLayout2, "convertView.tipsLayout");
            this.tipsLayout = linearLayout2;
            TextView textView3 = convertView.f19044b;
            Intrinsics.checkNotNullExpressionValue(textView3, "convertView.appSize");
            this.appSize = textView3;
            TextView textView4 = convertView.f19050h;
            Intrinsics.checkNotNullExpressionValue(textView4, "convertView.lodingInfo");
            this.lodingInfo = textView4;
            ProgressBar progressBar = convertView.f19055m;
            Intrinsics.checkNotNullExpressionValue(progressBar, "convertView.progressBar");
            this.progressBar = progressBar;
            ProgressBar progressBar2 = convertView.f19056n;
            Intrinsics.checkNotNullExpressionValue(progressBar2, "convertView.progressBarZip");
            this.progressBarZip = progressBar2;
            LinearLayout linearLayout3 = convertView.f19054l;
            Intrinsics.checkNotNullExpressionValue(linearLayout3, "convertView.openTest");
            this.openTest = linearLayout3;
            TextView textView5 = convertView.f19058p;
            Intrinsics.checkNotNullExpressionValue(textView5, "convertView.testTime");
            this.testTime = textView5;
            TextView textView6 = convertView.f19059q;
            Intrinsics.checkNotNullExpressionValue(textView6, "convertView.testType");
            this.testType = textView6;
        }

        @NotNull
        public final TextView getAppSize() {
            return this.appSize;
        }

        @NotNull
        public final TextView getDescribe() {
            return this.describe;
        }

        @NotNull
        public final DownloadViewStroke getDownloadViewStroke() {
            return this.downloadViewStroke;
        }

        @NotNull
        public final ImageView getGiftPackageSwich() {
            return this.giftPackageSwich;
        }

        @NotNull
        public final SimpleDraweeView getIcon() {
            return this.icon;
        }

        @NotNull
        public final View getLine() {
            return this.line;
        }

        @NotNull
        public final LinearLayout getLinearLayout2() {
            return this.linearLayout2;
        }

        @NotNull
        public final TextView getLodingInfo() {
            return this.lodingInfo;
        }

        @NotNull
        public final TextView getName() {
            return this.name;
        }

        @NotNull
        public final LinearLayout getOpenTest() {
            return this.openTest;
        }

        @NotNull
        public final ProgressBar getProgressBar() {
            return this.progressBar;
        }

        @NotNull
        public final ProgressBar getProgressBarZip() {
            return this.progressBarZip;
        }

        @NotNull
        public final RelativeLayout getRelateLayoutApp() {
            return this.relateLayoutApp;
        }

        @NotNull
        public final TextView getTestTime() {
            return this.testTime;
        }

        @NotNull
        public final TextView getTestType() {
            return this.testType;
        }

        @NotNull
        public final LinearLayout getTipsLayout() {
            return this.tipsLayout;
        }

        public final void setAppSize(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.appSize = textView;
        }

        public final void setDescribe(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.describe = textView;
        }

        public final void setDownloadViewStroke(@NotNull DownloadViewStroke downloadViewStroke) {
            Intrinsics.checkNotNullParameter(downloadViewStroke, "<set-?>");
            this.downloadViewStroke = downloadViewStroke;
        }

        public final void setGiftPackageSwich(@NotNull ImageView imageView) {
            Intrinsics.checkNotNullParameter(imageView, "<set-?>");
            this.giftPackageSwich = imageView;
        }

        public final void setIcon(@NotNull SimpleDraweeView simpleDraweeView) {
            Intrinsics.checkNotNullParameter(simpleDraweeView, "<set-?>");
            this.icon = simpleDraweeView;
        }

        public final void setLine(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "<set-?>");
            this.line = view;
        }

        public final void setLinearLayout2(@NotNull LinearLayout linearLayout) {
            Intrinsics.checkNotNullParameter(linearLayout, "<set-?>");
            this.linearLayout2 = linearLayout;
        }

        public final void setLodingInfo(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.lodingInfo = textView;
        }

        public final void setName(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.name = textView;
        }

        public final void setOpenTest(@NotNull LinearLayout linearLayout) {
            Intrinsics.checkNotNullParameter(linearLayout, "<set-?>");
            this.openTest = linearLayout;
        }

        public final void setProgressBar(@NotNull ProgressBar progressBar) {
            Intrinsics.checkNotNullParameter(progressBar, "<set-?>");
            this.progressBar = progressBar;
        }

        public final void setProgressBarZip(@NotNull ProgressBar progressBar) {
            Intrinsics.checkNotNullParameter(progressBar, "<set-?>");
            this.progressBarZip = progressBar;
        }

        public final void setRelateLayoutApp(@NotNull RelativeLayout relativeLayout) {
            Intrinsics.checkNotNullParameter(relativeLayout, "<set-?>");
            this.relateLayoutApp = relativeLayout;
        }

        public final void setTestTime(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.testTime = textView;
        }

        public final void setTestType(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.testType = textView;
        }

        public final void setTipsLayout(@NotNull LinearLayout linearLayout) {
            Intrinsics.checkNotNullParameter(linearLayout, "<set-?>");
            this.tipsLayout = linearLayout;
        }
    }

    /* compiled from: EverdayNewFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/join/kotlin/EverdayNewFragment$ViewHolderTitle;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/TextView;", "title", "Landroid/widget/TextView;", "getTitle", "()Landroid/widget/TextView;", "setTitle", "(Landroid/widget/TextView;)V", "Lcom/join/android/app/mgsim/wufun/databinding/ne;", "itemView", "<init>", "(Lcom/join/android/app/mgsim/wufun/databinding/ne;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class ViewHolderTitle extends RecyclerView.ViewHolder {
        @NotNull
        private TextView title;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolderTitle(@NotNull ne itemView) {
            super(itemView.getRoot());
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            TextView textView = itemView.f22886b;
            Intrinsics.checkNotNullExpressionValue(textView, "itemView.title");
            this.title = textView;
        }

        @NotNull
        public final TextView getTitle() {
            return this.title;
        }

        public final void setTitle(@NotNull TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.title = textView;
        }
    }

    @NotNull
    public final EverdayNewAdapter getAdapter() {
        EverdayNewAdapter everdayNewAdapter = this.adapter;
        if (everdayNewAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return everdayNewAdapter;
    }

    @NotNull
    public final me getBinding() {
        me meVar = this.binding;
        if (meVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return meVar;
    }

    public final int getFirstVisiblePosition() {
        return this.firstVisiblePosition;
    }

    @NotNull
    public final String getLastTimeDay() {
        return this.lastTimeDay;
    }

    public final int getLastVisibleIndex() {
        return this.lastVisibleIndex;
    }

    @NotNull
    public final LinearLayoutManager getManager() {
        LinearLayoutManager linearLayoutManager = this.manager;
        if (linearLayoutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("manager");
        }
        return linearLayoutManager;
    }

    public final int getPageCount() {
        return this.pageCount;
    }

    @NotNull
    public final BasDownLoadActivityPresenter getPresenter() {
        BasDownLoadActivityPresenter basDownLoadActivityPresenter = this.presenter;
        if (basDownLoadActivityPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        return basDownLoadActivityPresenter;
    }

    @NotNull
    public final ArrayList<CommonListMainData> getShowDataList() {
        return this.showDataList;
    }

    public final int getType() {
        return this.type;
    }

    public final void hidLoading() {
        me meVar = this.binding;
        if (meVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = meVar.f22509c.f27058c;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.loadingLayoutMain.lodingLayout");
        linearLayout.setVisibility(8);
        me meVar2 = this.binding;
        if (meVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout2 = meVar2.f22508b.f24367d;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.failedLayoutMain.lodingFaile");
        linearLayout2.setVisibility(8);
        me meVar3 = this.binding;
        if (meVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView = meVar3.f22510d;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.recycleView");
        xRecyclerView.setVisibility(0);
    }

    public final void loadData(final int i2) {
        if (f.j(getContext())) {
            try {
                RequestModel requestModel = new RequestModel(getContext());
                LuckHistoryrequest luckHistoryrequest = new LuckHistoryrequest();
                luckHistoryrequest.setPage(i2);
                AccountUtil_ instance_ = AccountUtil_.getInstance_(getContext());
                Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
                AccountBean accountData = instance_.getAccountData();
                Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
                luckHistoryrequest.setUid(accountData.getUid());
                luckHistoryrequest.setType(this.type);
                requestModel.setArgs(luckHistoryrequest);
                h L = h.L();
                Intrinsics.checkNotNullExpressionValue(L, "RpcGameClientImpl.newInstance()");
                L.J().B0(requestModel.makeSign()).enqueue(new Callback<ResponseModel<EverdayNewResultData>>() { // from class: com.join.kotlin.EverdayNewFragment$loadData$1
                    @Override // retrofit2.Callback
                    public void onFailure(@NotNull Call<ResponseModel<EverdayNewResultData>> call, @NotNull Throwable t3) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(t3, "t");
                        t3.printStackTrace();
                    }

                    @Override // retrofit2.Callback
                    public void onResponse(@NotNull Call<ResponseModel<EverdayNewResultData>> call, @NotNull Response<ResponseModel<EverdayNewResultData>> responsex) {
                        Intrinsics.checkNotNullParameter(call, "call");
                        Intrinsics.checkNotNullParameter(responsex, "responsex");
                        ResponseModel<EverdayNewResultData> body = responsex.body();
                        Intrinsics.checkNotNull(body);
                        ResponseModel<EverdayNewResultData> responseModel = body;
                        if (responseModel.getCode() == 200) {
                            EverdayNewResultData data = responseModel.getData();
                            EverdayNewFragment.this.hidLoading();
                            if (data != null && data.getGame_list().size() > 0) {
                                EverdayNewFragment everdayNewFragment = EverdayNewFragment.this;
                                int i4 = i2;
                                List<EverdayNewListItem> game_list = data.getGame_list();
                                Intrinsics.checkNotNullExpressionValue(game_list, "data.game_list");
                                everdayNewFragment.loadFinish(i4, game_list);
                                EverdayNewFragment.this.getBinding().f22510d.q1();
                                return;
                            }
                            EverdayNewFragment.this.getBinding().f22510d.setNoMore();
                            return;
                        }
                        EverdayNewFragment.this.getBinding().f22510d.q1();
                        EverdayNewFragment.this.hidLoading();
                    }
                });
                return;
            } catch (Exception e4) {
                e4.printStackTrace();
                onError("");
                return;
            }
        }
        String string = getString(R.string.net_connect_failed);
        Intrinsics.checkNotNullExpressionValue(string, "getString(R.string.net_connect_failed)");
        onError(string);
    }

    public final void loadFinish(int i2, @NotNull List<? extends EverdayNewListItem> datas) {
        Intrinsics.checkNotNullParameter(datas, "datas");
        if (i2 == this.pageCount && (!datas.isEmpty())) {
            this.pageCount++;
        }
        for (EverdayNewListItem everdayNewListItem : datas) {
            long j4 = 1000;
            if (!Intrinsics.areEqual(this.lastTimeDay, x.y(everdayNewListItem.getTime() * j4))) {
                ArrayList<CommonListMainData> arrayList = this.showDataList;
                String C = x.C(everdayNewListItem.getTime() * j4);
                Intrinsics.checkNotNullExpressionValue(C, "DateUtils.longToStrTimeYMD(data.time * 1000)");
                arrayList.add(new CommonListMainData(1, C, null, null, 12, null));
                String y3 = x.y(everdayNewListItem.getTime() * j4);
                Intrinsics.checkNotNullExpressionValue(y3, "DateUtils.longToStrTimeDD(data.time * 1000)");
                this.lastTimeDay = y3;
            }
            CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(everdayNewListItem.getList());
            collectionBeanSubBusiness.set_from_type(129);
            collectionBeanSubBusiness.set_from(129);
            BasDownLoadActivityPresenter basDownLoadActivityPresenter = this.presenter;
            if (basDownLoadActivityPresenter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("presenter");
            }
            basDownLoadActivityPresenter.updateDowState(collectionBeanSubBusiness);
            this.showDataList.add(new CommonListMainData(2, collectionBeanSubBusiness, null, null, 12, null));
        }
        EverdayNewAdapter everdayNewAdapter = this.adapter;
        if (everdayNewAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        everdayNewAdapter.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        me d4 = me.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "EverdayNewFragmentBindin…flater, container, false)");
        this.binding = d4;
        c0.a().d(this);
        me meVar = this.binding;
        if (meVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return meVar.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        c0.a().e(this);
    }

    public final void onError(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Context context = getContext();
        if (context != null) {
            CommonExtKt.toast(context, message);
        }
        ArrayList<CommonListMainData> arrayList = this.showDataList;
        if ((arrayList == null || arrayList.isEmpty()) || this.showDataList.size() <= 0) {
            me meVar = this.binding;
            if (meVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            LinearLayout linearLayout = meVar.f22509c.f27058c;
            Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.loadingLayoutMain.lodingLayout");
            linearLayout.setVisibility(8);
            me meVar2 = this.binding;
            if (meVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            LinearLayout linearLayout2 = meVar2.f22508b.f24367d;
            Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.failedLayoutMain.lodingFaile");
            linearLayout2.setVisibility(0);
            me meVar3 = this.binding;
            if (meVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            XRecyclerView xRecyclerView = meVar3.f22510d;
            Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.recycleView");
            xRecyclerView.setVisibility(8);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onEventMainThread(@NotNull l downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        BasDownLoadActivityPresenter basDownLoadActivityPresenter = this.presenter;
        if (basDownLoadActivityPresenter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("presenter");
        }
        basDownLoadActivityPresenter.onEventMainThread(downloadTaskEvent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        this.manager = new LinearLayoutManager(getContext());
        me meVar = this.binding;
        if (meVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView = meVar.f22510d;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.recycleView");
        LinearLayoutManager linearLayoutManager = this.manager;
        if (linearLayoutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("manager");
        }
        xRecyclerView.setLayoutManager(linearLayoutManager);
        Context context = getContext();
        Intrinsics.checkNotNull(context);
        Intrinsics.checkNotNullExpressionValue(context, "context!!");
        this.adapter = new EverdayNewAdapter(context, this.showDataList);
        me meVar2 = this.binding;
        if (meVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView2 = meVar2.f22510d;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView2, "binding.recycleView");
        EverdayNewAdapter everdayNewAdapter = this.adapter;
        if (everdayNewAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        xRecyclerView2.setAdapter(everdayNewAdapter);
        me meVar3 = this.binding;
        if (meVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = meVar3.f22508b.f24368e;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.failedLayoutMain.relodingimag");
        CommonExtKt.onClick(imageView, new Function0<Unit>() { // from class: com.join.kotlin.EverdayNewFragment$onViewCreated$1
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
                EverdayNewFragment everdayNewFragment = EverdayNewFragment.this;
                everdayNewFragment.loadData(everdayNewFragment.getPageCount());
            }
        });
        me meVar4 = this.binding;
        if (meVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        meVar4.f22510d.setPullRefreshEnabled(true);
        me meVar5 = this.binding;
        if (meVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        meVar5.f22510d.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.EverdayNewFragment$onViewCreated$2
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                EverdayNewFragment everdayNewFragment = EverdayNewFragment.this;
                everdayNewFragment.loadData(everdayNewFragment.getPageCount());
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
            }
        });
        this.pageCount = 1;
        LinearLayoutManager linearLayoutManager2 = this.manager;
        if (linearLayoutManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("manager");
        }
        me meVar6 = this.binding;
        if (meVar6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView3 = meVar6.f22510d;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView3, "binding.recycleView");
        BasDownLoadActivityPresenter basDownLoadActivityPresenter = new BasDownLoadActivityPresenter(linearLayoutManager2, xRecyclerView3, this.showDataList);
        this.presenter = basDownLoadActivityPresenter;
        EverdayNewAdapter everdayNewAdapter2 = this.adapter;
        if (everdayNewAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        basDownLoadActivityPresenter.initData(everdayNewAdapter2);
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("title") : null;
        if (string != null) {
            switch (string.hashCode()) {
                case 683136:
                    if (string.equals(LocalGameActivity.f32927r)) {
                        this.type = 1;
                        break;
                    }
                    break;
                case 687749:
                    if (string.equals("单机")) {
                        this.type = 3;
                        break;
                    }
                    break;
                case 1038599:
                    if (string.equals("网游")) {
                        this.type = 2;
                        break;
                    }
                    break;
                case 26916170:
                    if (string.equals("模拟器")) {
                        this.type = 5;
                        break;
                    }
                    break;
            }
        }
        loadData(this.pageCount);
    }

    public final void setAdapter(@NotNull EverdayNewAdapter everdayNewAdapter) {
        Intrinsics.checkNotNullParameter(everdayNewAdapter, "<set-?>");
        this.adapter = everdayNewAdapter;
    }

    public final void setBinding(@NotNull me meVar) {
        Intrinsics.checkNotNullParameter(meVar, "<set-?>");
        this.binding = meVar;
    }

    public final void setFirstVisiblePosition(int i2) {
        this.firstVisiblePosition = i2;
    }

    public final void setLastTimeDay(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.lastTimeDay = str;
    }

    public final void setLastVisibleIndex(int i2) {
        this.lastVisibleIndex = i2;
    }

    public final void setManager(@NotNull LinearLayoutManager linearLayoutManager) {
        Intrinsics.checkNotNullParameter(linearLayoutManager, "<set-?>");
        this.manager = linearLayoutManager;
    }

    public final void setPageCount(int i2) {
        this.pageCount = i2;
    }

    public final void setPresenter(@NotNull BasDownLoadActivityPresenter basDownLoadActivityPresenter) {
        Intrinsics.checkNotNullParameter(basDownLoadActivityPresenter, "<set-?>");
        this.presenter = basDownLoadActivityPresenter;
    }

    public final void setShowDataList(@NotNull ArrayList<CommonListMainData> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.showDataList = arrayList;
    }

    public final void setType(int i2) {
        this.type = i2;
    }

    public final void showLoding() {
        me meVar = this.binding;
        if (meVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout = meVar.f22509c.f27058c;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.loadingLayoutMain.lodingLayout");
        linearLayout.setVisibility(0);
        me meVar2 = this.binding;
        if (meVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        LinearLayout linearLayout2 = meVar2.f22508b.f24367d;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.failedLayoutMain.lodingFaile");
        linearLayout2.setVisibility(8);
        me meVar3 = this.binding;
        if (meVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        XRecyclerView xRecyclerView = meVar3.f22510d;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "binding.recycleView");
        xRecyclerView.setVisibility(8);
    }

    /* compiled from: EverdayNewFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\n¢\u0006\u0004\b)\u0010*J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J&\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0016\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012J\u001e\u0010\u0018\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\u001a\u001a\u00020\u0005H\u0016R\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R(\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u0006+"}, d2 = {"Lcom/join/kotlin/EverdayNewFragment$EverdayNewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/ViewGroup;", "viewGroup", "", "type", "onCreateViewHolder", "holder", "position", "", "", "payloads", "", "onBindViewHolder", "p0", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTaski", "Lcom/join/kotlin/EverdayNewFragment$ViewHolderGame;", "viewHolderGame", "updateProgress", "", "isNormal", "isZip", "updateUi", "getItemViewType", "getItemCount", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "Lcom/psk/kotlin/util/CommonListMainData;", "showDataList", "Ljava/util/List;", "getShowDataList", "()Ljava/util/List;", "setShowDataList", "(Ljava/util/List;)V", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public static final class EverdayNewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        @NotNull
        private Context context;
        @NotNull
        private List<CommonListMainData> showDataList;

        public EverdayNewAdapter(@NotNull Context context, @NotNull List<CommonListMainData> showDataList) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(showDataList, "showDataList");
            this.context = context;
            this.showDataList = showDataList;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.showDataList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            return this.showDataList.get(i2).getType();
        }

        @NotNull
        public final List<CommonListMainData> getShowDataList() {
            return this.showDataList;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i2, @NotNull List<Object> payloads) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            if (payloads.isEmpty()) {
                super.onBindViewHolder(holder, i2, payloads);
                return;
            }
            Object any = this.showDataList.get(i2).getAny();
            Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness");
            ViewHolderGame viewHolderGame = (ViewHolderGame) holder;
            DownloadTask downloadTask = ((CollectionBeanSubBusiness) any).getDownloadTask();
            if (downloadTask != null) {
                int status = downloadTask.getStatus();
                if (status == 2 || status == 12) {
                    updateProgress(downloadTask, viewHolderGame);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup viewGroup, int i2) {
            Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
            if (i2 == 1) {
                ne d4 = ne.d(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                Intrinsics.checkNotNullExpressionValue(d4, "EverdayTitleLayoutBindin…ntext), viewGroup, false)");
                return new ViewHolderTitle(d4);
            } else if (i2 != 2) {
                ne d5 = ne.d(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                Intrinsics.checkNotNullExpressionValue(d5, "EverdayTitleLayoutBindin…ntext), viewGroup, false)");
                return new ViewHolderTitle(d5);
            } else {
                cs d6 = cs.d(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                Intrinsics.checkNotNullExpressionValue(d6, "ItemSimulatorDownloadVie…ntext), viewGroup, false)");
                return new ViewHolderGame(d6);
            }
        }

        public final void setContext(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "<set-?>");
            this.context = context;
        }

        public final void setShowDataList(@NotNull List<CommonListMainData> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.showDataList = list;
        }

        public final void updateProgress(@NotNull DownloadTask downloadTaski, @NotNull ViewHolderGame viewHolderGame) {
            DownloadTask f4;
            Intrinsics.checkNotNullParameter(downloadTaski, "downloadTaski");
            Intrinsics.checkNotNullParameter(viewHolderGame, "viewHolderGame");
            if ((downloadTaski.getStatus() == 2 || downloadTaski.getStatus() == 12) && (f4 = a.e().f(downloadTaski.getCrc_link_type_val())) != null) {
                String showSize = f4.getShowSize();
                Intrinsics.checkNotNullExpressionValue(showSize, "downloadTask.showSize");
                double parseDouble = Double.parseDouble(showSize);
                double d4 = 1024;
                Double.isNaN(d4);
                Double.isNaN(d4);
                viewHolderGame.getAppSize().setText(UtilsMy.a(f4.getCurrentSize()) + '/' + UtilsMy.a((long) (parseDouble * d4 * d4)));
                if (f4.getStatus() == 12) {
                    viewHolderGame.getProgressBarZip().setProgress((int) f4.getProgress());
                } else {
                    viewHolderGame.getProgressBar().setProgress((int) f4.getProgress());
                }
                if (f4.getStatus() == 2) {
                    viewHolderGame.getLodingInfo().setText(f4.getSpeed() + "/S");
                }
            }
        }

        public final void updateUi(@NotNull ViewHolderGame holder, boolean z3, boolean z4) {
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (z3) {
                holder.getLinearLayout2().setVisibility(8);
                holder.getProgressBar().setVisibility(8);
                holder.getProgressBarZip().setVisibility(8);
                holder.getTipsLayout().setVisibility(0);
                holder.getDescribe().setVisibility(0);
                return;
            }
            holder.getLinearLayout2().setVisibility(0);
            if (z4) {
                holder.getProgressBar().setVisibility(8);
                holder.getProgressBarZip().setVisibility(0);
            } else {
                holder.getProgressBarZip().setVisibility(8);
                holder.getProgressBar().setVisibility(0);
            }
            holder.getTipsLayout().setVisibility(8);
            holder.getDescribe().setVisibility(8);
        }

        /* JADX WARN: Type inference failed for: r14v8, types: [com.join.mgps.business.CollectionBeanSubBusiness, T] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder p02, int i2) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            int itemViewType = getItemViewType(i2);
            if (itemViewType == 1) {
                Object any = this.showDataList.get(i2).getAny();
                Objects.requireNonNull(any, "null cannot be cast to non-null type kotlin.String");
                ((ViewHolderTitle) p02).getTitle().setText((String) any);
            } else if (itemViewType != 2) {
            } else {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Object any2 = this.showDataList.get(i2).getAny();
                Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness");
                ?? r14 = (CollectionBeanSubBusiness) any2;
                objectRef.element = r14;
                ViewHolderGame viewHolderGame = (ViewHolderGame) p02;
                DownloadTask downloadTask = ((CollectionBeanSubBusiness) r14).getDownloadTask();
                MyImageLoader.d(viewHolderGame.getIcon(), R.drawable.main_normal_icon, ((CollectionBeanSubBusiness) objectRef.element).getIco_remote());
                viewHolderGame.getOpenTest().setVisibility(8);
                viewHolderGame.getTestTime().setText("");
                viewHolderGame.getTestType().setText("");
                viewHolderGame.getDownloadViewStroke().a(((CollectionBeanSubBusiness) objectRef.element).getDownloadTask(), (CollectionBeanSubBusiness) objectRef.element);
                UtilsMy.C(((CollectionBeanSubBusiness) objectRef.element).getScore(), ((CollectionBeanSubBusiness) objectRef.element).getDown_count(), ((CollectionBeanSubBusiness) objectRef.element).getSize(), ((CollectionBeanSubBusiness) objectRef.element).getSp_tag_info(), ((CollectionBeanSubBusiness) objectRef.element).getTag_info(), viewHolderGame.getTipsLayout(), this.context);
                viewHolderGame.getName().setText(((CollectionBeanSubBusiness) objectRef.element).getGame_name());
                viewHolderGame.getDescribe().setText(((CollectionBeanSubBusiness) objectRef.element).getInfo());
                CommonExtKt.onClick(viewHolderGame.getRelateLayoutApp(), new Function0<Unit>() { // from class: com.join.kotlin.EverdayNewFragment$EverdayNewAdapter$onBindViewHolder$1
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
                        IntentUtil.getInstance().goGameDetialActivity(EverdayNewFragment.EverdayNewAdapter.this.getContext(), ((CollectionBeanSubBusiness) objectRef.element).getGame_id(), ((CollectionBeanSubBusiness) objectRef.element).getGame_info_tpl_type(), 0, ((CollectionBeanSubBusiness) objectRef.element).get_from_type());
                    }
                });
                if (((CollectionBeanSubBusiness) objectRef.element).getGift_package_switch() == 1) {
                    viewHolderGame.getGiftPackageSwich().setVisibility(0);
                } else {
                    viewHolderGame.getGiftPackageSwich().setVisibility(8);
                }
                if (Intrinsics.areEqual(((CollectionBeanSubBusiness) objectRef.element).getPlugin_num(), String.valueOf(ConstantIntEnum.H5.value()))) {
                    viewHolderGame.getTipsLayout().setVisibility(8);
                    viewHolderGame.getGiftPackageSwich().setVisibility(8);
                } else if (downloadTask == null) {
                    updateUi(viewHolderGame, true, false);
                } else {
                    String size = ((CollectionBeanSubBusiness) objectRef.element).getSize();
                    Intrinsics.checkNotNullExpressionValue(size, "gameData.getSize()");
                    double parseDouble = Double.parseDouble(size);
                    double d4 = 1024;
                    Double.isNaN(d4);
                    Double.isNaN(d4);
                    long j4 = (long) (parseDouble * d4 * d4);
                    int status = downloadTask.getStatus();
                    if (status != 0) {
                        if (status != 42) {
                            if (status != 48) {
                                if (status != 2) {
                                    if (status != 3) {
                                        if (status != 5) {
                                            if (status != 6) {
                                                if (status != 7) {
                                                    switch (status) {
                                                        case 9:
                                                        case 11:
                                                            break;
                                                        case 10:
                                                            updateUi(viewHolderGame, false, false);
                                                            viewHolderGame.getAppSize().setText(UtilsMy.a(downloadTask.getCurrentSize()) + '/' + UtilsMy.a(j4));
                                                            viewHolderGame.getProgressBar().setProgress((int) downloadTask.getProgress());
                                                            viewHolderGame.getLodingInfo().setText("等待中");
                                                            return;
                                                        case 12:
                                                            updateUi(viewHolderGame, false, true);
                                                            viewHolderGame.getAppSize().setText(UtilsMy.a(j4) + '/' + UtilsMy.a(j4));
                                                            viewHolderGame.getProgressBarZip().setProgress((int) downloadTask.getProgress());
                                                            viewHolderGame.getLodingInfo().setText("解压中");
                                                            return;
                                                        case 13:
                                                            updateUi(viewHolderGame, false, true);
                                                            viewHolderGame.getAppSize().setText(UtilsMy.a(j4) + '/' + UtilsMy.a(j4));
                                                            viewHolderGame.getProgressBarZip().setProgress((int) downloadTask.getProgress());
                                                            viewHolderGame.getLodingInfo().setText("点击重新解压");
                                                            return;
                                                        default:
                                                            return;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    updateUi(viewHolderGame, false, false);
                                    try {
                                        if (downloadTask.getSize() == 0) {
                                            viewHolderGame.getAppSize().setText(UtilsMy.a(downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(j4));
                                        } else {
                                            viewHolderGame.getAppSize().setText(UtilsMy.a(downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(j4));
                                        }
                                        viewHolderGame.getProgressBar().setProgress((int) downloadTask.getProgress());
                                    } catch (Exception e4) {
                                        e4.printStackTrace();
                                    }
                                    viewHolderGame.getLodingInfo().setText("暂停中");
                                    return;
                                }
                                updateUi(viewHolderGame, false, false);
                                viewHolderGame.getAppSize().setText(UtilsMy.a(downloadTask.getCurrentSize()) + '/' + UtilsMy.a(j4));
                                viewHolderGame.getProgressBar().setProgress((int) downloadTask.getProgress());
                                viewHolderGame.getLodingInfo().setText(downloadTask.getSpeed() + "/S");
                                return;
                            }
                        }
                        updateUi(viewHolderGame, true, true);
                        return;
                    }
                    updateUi(viewHolderGame, true, false);
                }
            }
        }
    }
}
