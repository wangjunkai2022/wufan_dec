package com.join.kotlin.ui.cloudarchive;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.j;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.s90;
import com.join.kotlin.domain.common.LiveDataExtensionKt;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.CloudShareViewModle;
import com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.DelArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.kotlin.ui.cloudarchive.dialog.DownloadArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.ImageShowDialog;
import com.join.kotlin.ui.cloudarchive.dialog.RedownArchiveDialog;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.u0;
import com.join.mgps.Util.x;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CloudArchiveCfg;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.GoldFingerBean;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.service.CommonService_;
import com.join.mgps.va.overmind.e;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import com.psk.kotlin.util.CommonListMainData;
import g1.f;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import n1.g;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModgameCloudListFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t¢\u0006\u0006\b£\u0001\u0010¤\u0001J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002J\u0018\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002J&\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0015\u001a\u00020\u0005H\u0016J\u0006\u0010\u0016\u001a\u00020\u0005J\u0006\u0010\u0017\u001a\u00020\u0005J\b\u0010\u0018\u001a\u00020\u0005H\u0016J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0018\u0010\u001c\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aJ\b\u0010\u001d\u001a\u00020\u0005H\u0016J\u0006\u0010\u001f\u001a\u00020\u001eJ\u0018\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u00132\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\"\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010#\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0012\u0010&\u001a\u00020\u00052\b\u0010%\u001a\u0004\u0018\u00010$H\u0016J\u0012\u0010(\u001a\u00020\u00052\b\u0010'\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0007J\b\u0010,\u001a\u00020\u0005H\u0016J\b\u0010-\u001a\u00020\u0005H\u0016J\u0006\u0010.\u001a\u00020\u0005R\"\u00100\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b0\u00102\"\u0004\b3\u00104R\u001d\u0010:\u001a\u0002058F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\"\u0010;\u001a\u00020\u00138\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001d\u0010E\u001a\u00020A8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bB\u00107\u001a\u0004\bC\u0010DR\"\u0010F\u001a\u00020\u00138\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bF\u0010<\u001a\u0004\bG\u0010>\"\u0004\bH\u0010@R\"\u0010I\u001a\u00020\u00078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\"\u0010O\u001a\u00020$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\"\u0010V\u001a\u00020U8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R\"\u0010\\\u001a\u00020\u00138\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\\\u0010<\u001a\u0004\b]\u0010>\"\u0004\b^\u0010@R\u001d\u0010c\u001a\u00020_8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b`\u00107\u001a\u0004\ba\u0010bR\u001d\u0010h\u001a\u00020d8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\be\u00107\u001a\u0004\bf\u0010gR\"\u0010j\u001a\u00020i8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bj\u0010k\u001a\u0004\bl\u0010m\"\u0004\bn\u0010oR\u001d\u0010r\u001a\u00020d8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bp\u00107\u001a\u0004\bq\u0010gR\u001d\u0010w\u001a\u00020s8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bt\u00107\u001a\u0004\bu\u0010vR\u001d\u0010{\u001a\u00020\u001e8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bx\u00107\u001a\u0004\by\u0010zR\u001e\u0010\u0080\u0001\u001a\u00020|8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b}\u00107\u001a\u0004\b~\u0010\u007fR,\u0010\u0082\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001\"\u0006\b\u0086\u0001\u0010\u0087\u0001R&\u0010\u0088\u0001\u001a\u00020/8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0088\u0001\u00101\u001a\u0005\b\u0089\u0001\u00102\"\u0005\b\u008a\u0001\u00104R&\u0010\u008b\u0001\u001a\u00020i8\u0006@\u0006X\u0086.¢\u0006\u0015\n\u0005\b\u008b\u0001\u0010k\u001a\u0005\b\u008c\u0001\u0010m\"\u0005\b\u008d\u0001\u0010oR)\u0010\u008e\u0001\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R)\u0010\u0094\u0001\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0094\u0001\u0010\u008f\u0001\u001a\u0006\b\u0095\u0001\u0010\u0091\u0001\"\u0006\b\u0096\u0001\u0010\u0093\u0001R\"\u0010\u009b\u0001\u001a\u00030\u0097\u00018F@\u0006X\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u0098\u0001\u00107\u001a\u0006\b\u0099\u0001\u0010\u009a\u0001R,\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009d\u0001\u0010\u009e\u0001\u001a\u0006\b\u009f\u0001\u0010 \u0001\"\u0006\b¡\u0001\u0010¢\u0001¨\u0006¥\u0001"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "Landroid/view/View$OnClickListener;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "", "updateLocaDataToShow", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archive", "startGame", "", "downloadType", "showDownloadDialog", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "onDestroyView", "initData", "loadData", "onResume", "onClickRun", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "onClickRunGame", "uploadCloud", "Landroid/widget/PopupWindow;", "createPopwindow", "view", "onClickMore", "onPraise", "onClickDislike", "", CommonService_.b0.f51756b, "onClickImage", "v", "onClick", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;", "archiveDownEvent", "onRecivedDownLoadEVent", "onClickReload", "onClickSetNetWork", "scrollToTop", "", "isLogin", "Z", "()Z", "setLogin", "(Z)V", "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "imageDialog$delegate", "Lkotlin/Lazy;", "getImageDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "imageDialog", "trangleBottom", "Landroid/view/View;", "getTrangleBottom", "()Landroid/view/View;", "setTrangleBottom", "(Landroid/view/View;)V", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle$delegate", "getViewModleShareViewModle", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle", "main", "getMain", "setMain", "archiveDataPop", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchiveDataPop", "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "setArchiveDataPop", "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V", "gameId", "Ljava/lang/String;", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "Lcom/join/android/app/mgsim/wufun/databinding/s90;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/s90;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/s90;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/s90;)V", "trangleTop", "getTrangleTop", "setTrangleTop", "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "viewModle$delegate", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "viewModle", "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "delFragment$delegate", "getDelFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "delFragment", "Landroid/widget/TextView;", "reDownload", "Landroid/widget/TextView;", "getReDownload", "()Landroid/widget/TextView;", "setReDownload", "(Landroid/widget/TextView;)V", "checkDownloadTypeDialog$delegate", "getCheckDownloadTypeDialog", "checkDownloadTypeDialog", "Landroid/app/Dialog;", "dialog$delegate", "getDialog", "()Landroid/app/Dialog;", "dialog", "popWindow$delegate", "getPopWindow", "()Landroid/widget/PopupWindow;", "popWindow", "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "adapterx$delegate", "getAdapterx", "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "adapterx", "Lcom/join/mgps/dto/ModGameArchiveTagBean;", "archiveTag", "Lcom/join/mgps/dto/ModGameArchiveTagBean;", "getArchiveTag", "()Lcom/join/mgps/dto/ModGameArchiveTagBean;", "setArchiveTag", "(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V", "isfirst", "getIsfirst", "setIsfirst", "deleteCloud", "getDeleteCloud", "setDeleteCloud", "type", "I", "getType", "()I", "setType", "(I)V", "page", "getPage", "setPage", "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "redownFragment$delegate", "getRedownFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "redownFragment", "Lcom/join/mgps/dto/ModGameDetailBean;", "modgameBean", "Lcom/join/mgps/dto/ModGameDetailBean;", "getModgameBean", "()Lcom/join/mgps/dto/ModGameDetailBean;", "setModgameBean", "(Lcom/join/mgps/dto/ModGameDetailBean;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class ModgameCloudListFragment extends Fragment implements OnClickArchiveListener, View.OnClickListener, LoadBindClickProxy {
    @NotNull
    private final Lazy adapterx$delegate;
    public ArchiveData archiveDataPop;
    @Nullable
    private ModGameArchiveTagBean archiveTag;
    @NotNull
    private final Lazy checkDownloadTypeDialog$delegate;
    public s90 dataBinding;
    @NotNull
    private final Lazy delFragment$delegate;
    public TextView deleteCloud;
    @NotNull
    private final Lazy dialog$delegate;
    @NotNull
    private String gameId;
    @NotNull
    private final Lazy imageDialog$delegate;
    private boolean isLogin;
    private boolean isfirst;
    public View main;
    @Nullable
    private ModGameDetailBean modgameBean;
    private int page;
    @NotNull
    private final Lazy popWindow$delegate;
    public TextView reDownload;
    @NotNull
    private final Lazy redownFragment$delegate;
    public View trangleBottom;
    public View trangleTop;
    private int type;
    @NotNull
    private final Lazy viewModle$delegate;
    @NotNull
    private final Lazy viewModleShareViewModle$delegate;

    public ModgameCloudListFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Lazy lazy9;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ModGameCloudViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ModGameCloudViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(ModgameCloudListFragment.this, new ViewModelProvider.NewInstanceFactory()).get(ModGameCloudViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …oudViewModle::class.java)");
                return (ModGameCloudViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CloudShareViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$viewModleShareViewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CloudShareViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(ModgameCloudListFragment.this.requireActivity(), new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …areViewModle::class.java)");
                return (CloudShareViewModle) viewModel;
            }
        });
        this.viewModleShareViewModle$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ModArchiveAdapter>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$adapterx$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ModArchiveAdapter invoke() {
                boolean z3;
                Context requireContext = ModgameCloudListFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
                ModgameCloudListFragment modgameCloudListFragment = ModgameCloudListFragment.this;
                ModGameArchiveTagBean archiveTag = modgameCloudListFragment.getArchiveTag();
                if (archiveTag == null || archiveTag.getType() != 2) {
                    ModGameArchiveTagBean archiveTag2 = ModgameCloudListFragment.this.getArchiveTag();
                    if (!Intrinsics.areEqual(archiveTag2 != null ? archiveTag2.getName() : null, "精选")) {
                        z3 = false;
                        return new ModArchiveAdapter(requireContext, modgameCloudListFragment, z3);
                    }
                }
                z3 = true;
                return new ModArchiveAdapter(requireContext, modgameCloudListFragment, z3);
            }
        });
        this.adapterx$delegate = lazy3;
        this.page = 1;
        this.type = 1;
        this.gameId = "";
        this.isfirst = true;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<DelArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$checkDownloadTypeDialog$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DelArchiveDialog invoke() {
                return new DelArchiveDialog();
            }
        });
        this.checkDownloadTypeDialog$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<x0>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$dialog$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return a0.c0(ModgameCloudListFragment.this.getContext()).y(ModgameCloudListFragment.this.getContext(), "存档拷贝中");
            }
        });
        this.dialog$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<PopupWindow>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$popWindow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupWindow invoke() {
                return ModgameCloudListFragment.this.createPopwindow();
            }
        });
        this.popWindow$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<ImageShowDialog>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$imageDialog$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ImageShowDialog invoke() {
                return new ImageShowDialog(0);
            }
        });
        this.imageDialog$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<DelArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$delFragment$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DelArchiveDialog invoke() {
                return new DelArchiveDialog();
            }
        });
        this.delFragment$delegate = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new Function0<RedownArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$redownFragment$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RedownArchiveDialog invoke() {
                return new RedownArchiveDialog();
            }
        });
        this.redownFragment$delegate = lazy9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDownloadDialog(ArchiveData archiveData, int i2) {
        DownloadArchiveDialog downloadArchiveDialog = new DownloadArchiveDialog();
        Bundle bundle = new Bundle();
        bundle.putSerializable("archive", archiveData);
        bundle.putInt("downloadType", i2);
        bundle.putBoolean("installInExtPlug", getViewModleShareViewModle().getInstallInExtPlug());
        bundle.putSerializable("cloud_archive_local_path", getViewModle().getCloud_archive_local_path().getValue());
        downloadArchiveDialog.setArguments(bundle);
        if (EXTKt.dialogFragmentCanShow(downloadArchiveDialog)) {
            downloadArchiveDialog.show(getChildFragmentManager(), "dialog");
        }
    }

    private final void startGame(final ArchiveData archiveData) {
        if (archiveData != null) {
            String packageName = archiveData.getPackageName();
            if (packageName == null || packageName.length() == 0) {
                return;
            }
            getViewModleShareViewModle().setLastStartArchive(archiveData);
            try {
                e.a aVar = e.f52358n;
                if (aVar.b().h(archiveData.getPackageName(), archiveData.getUserId())) {
                    if (aVar.b().E(archiveData.getPackageName(), archiveData.getUserId())) {
                        getViewModle().startGameADCheck(getContext(), new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$startGame$1
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
                                GamedetialModleFourBean mod_game_info;
                                GamedetialModleFourBean mod_game_info2;
                                Context context = ModgameCloudListFragment.this.getContext();
                                if (context == null) {
                                    context = MApplication.f9223q;
                                }
                                Context context2 = context;
                                if (context2 == null) {
                                    return;
                                }
                                if (archiveData.getUserId() == 0) {
                                    ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().setValue(0L);
                                } else {
                                    MutableLiveData<Long> runIngArchiveId = ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId();
                                    String id = archiveData.getId();
                                    Intrinsics.checkNotNullExpressionValue(id, "archive.id");
                                    runIngArchiveId.setValue(Long.valueOf(Long.parseLong(id)));
                                }
                                int uid = archiveData.getUid();
                                AccountUtil_ instance_ = AccountUtil_.getInstance_(context2);
                                Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(ctx)");
                                AccountBean accountData = instance_.getAccountData();
                                Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(ctx).accountData");
                                if (uid != accountData.getUid() && archiveData.getUid() != 0) {
                                    i2 a4 = i2.a(context2);
                                    a4.b("当前正在使用 " + archiveData.getNickname() + " 的存档");
                                }
                                List<GoldFingerBean> goldFingerBean = ModgameCloudListFragment.this.getViewModleShareViewModle().getGoldFingerBean();
                                String str = goldFingerBean == null || goldFingerBean.isEmpty() ? "0" : "1";
                                DownloadTask B = f.G().B(archiveData.getGame_id());
                                ModGameDetailBean modgameBean = ModgameCloudListFragment.this.getModgameBean();
                                String valueOf = String.valueOf((modgameBean == null || (mod_game_info2 = modgameBean.getMod_game_info()) == null) ? null : Integer.valueOf(mod_game_info2.getBbs_strategy_switch()));
                                if (ModgameCloudListFragment.this.getModgameBean() != null && B != null) {
                                    ModInfoBean modInfoBean = B.getModInfoBean();
                                    Intrinsics.checkNotNullExpressionValue(modInfoBean, "downloadTask.modInfoBean");
                                    ModGameDetailBean modgameBean2 = ModgameCloudListFragment.this.getModgameBean();
                                    ModInfoBean mod_info = (modgameBean2 == null || (mod_game_info = modgameBean2.getMod_game_info()) == null) ? null : mod_game_info.getMod_info();
                                    if (mod_info != null) {
                                        if (mod_info.getVer() > (modInfoBean != null ? Integer.valueOf(modInfoBean.getVer()) : null).intValue()) {
                                            mod_info.setStatus(9);
                                            B.setMod_info(JsonMapper.toJsonString(mod_info));
                                            f.G().m(B);
                                        }
                                    }
                                }
                                if (B != null) {
                                    APKUtils.f17182b.x(context2, archiveData, str, valueOf, B);
                                }
                            }
                        });
                    } else {
                        aVar.b().A(archiveData.getPackageName(), archiveData.getUserId());
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateLocaDataToShow() {
        int collectionSizeOrDefault;
        List<CommonListMainData> value = getViewModle().getListArchive().getValue();
        if (value != null) {
            value.clear();
        }
        getAdapterx().notifyDataSetChanged();
        if (getViewModle().getLocalAllArchive().getValue() != null) {
            List<ArchiveData> value2 = getViewModle().getLocalAllArchive().getValue();
            Intrinsics.checkNotNull(value2);
            for (ArchiveData archiveData : value2) {
                archiveData.setIsDownloadArchive(1);
                archiveData.setStatus(8);
                archiveData.setShowText("启动");
                archiveData.setShowType(2);
                Long value3 = getViewModleShareViewModle().getRunIngArchiveId().getValue();
                archiveData.setRuningArchiveId(value3 != null ? value3.longValue() : 0L);
                if (archiveData.getUid() == 0) {
                    List<CommonListMainData> value4 = getViewModle().getListArchive().getValue();
                    if (value4 != null) {
                        value4.add(new CommonListMainData(4, archiveData, null, null, 12, null));
                    }
                } else if (archiveData.getUserId() == 0 && (!Intrinsics.areEqual(archiveData.getId(), "0"))) {
                    List<ArchiveData> value5 = getViewModle().getLocalAllArchive().getValue();
                    if (value5 != null) {
                        ArrayList<ArchiveData> arrayList = new ArrayList();
                        for (Object obj : value5) {
                            if (((ArchiveData) obj).getUid() == 0) {
                                arrayList.add(obj);
                            }
                        }
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                        for (ArchiveData archiveData2 : arrayList) {
                            archiveData2.setArchiveDesc("我的默认存档");
                            arrayList2.add(Unit.INSTANCE);
                        }
                    }
                } else {
                    List<CommonListMainData> value6 = getViewModle().getListArchive().getValue();
                    if (value6 != null) {
                        value6.add(new CommonListMainData(3, archiveData, null, null, 12, null));
                    }
                }
            }
        }
        s90 s90Var = this.dataBinding;
        if (s90Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        s90Var.E.setNoMore();
        getAdapterx().notifyDataSetChanged();
        this.page = 1;
        ModDataRequest request = getViewModle().getRequest();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        request.getAllDownloedArchive(requireContext, this.page, this.gameId);
    }

    @NotNull
    public final PopupWindow createPopwindow() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.cloud_archive_more_pop, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(inflate);
        popupWindow.setWidth(-2);
        popupWindow.setHeight(-2);
        View findViewById = inflate.findViewById(R.id.deleteCloud);
        Intrinsics.checkNotNullExpressionValue(findViewById, "contentView.findViewById(R.id.deleteCloud)");
        this.deleteCloud = (TextView) findViewById;
        View findViewById2 = inflate.findViewById(R.id.reDownload);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "contentView.findViewById(R.id.reDownload)");
        this.reDownload = (TextView) findViewById2;
        View findViewById3 = inflate.findViewById(R.id.main);
        Intrinsics.checkNotNullExpressionValue(findViewById3, "contentView.findViewById(R.id.main)");
        this.main = findViewById3;
        View findViewById4 = inflate.findViewById(R.id.trangleTop);
        Intrinsics.checkNotNullExpressionValue(findViewById4, "contentView.findViewById<View>(R.id.trangleTop)");
        this.trangleTop = findViewById4;
        View findViewById5 = inflate.findViewById(R.id.trangleBottom);
        Intrinsics.checkNotNullExpressionValue(findViewById5, "contentView.findViewById<View>(R.id.trangleBottom)");
        this.trangleBottom = findViewById5;
        TextView textView = this.reDownload;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("reDownload");
        }
        textView.setOnClickListener(this);
        TextView textView2 = this.deleteCloud;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteCloud");
        }
        textView2.setOnClickListener(this);
        return popupWindow;
    }

    @NotNull
    public final ModArchiveAdapter getAdapterx() {
        return (ModArchiveAdapter) this.adapterx$delegate.getValue();
    }

    @NotNull
    public final ArchiveData getArchiveDataPop() {
        ArchiveData archiveData = this.archiveDataPop;
        if (archiveData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
        }
        return archiveData;
    }

    @Nullable
    public final ModGameArchiveTagBean getArchiveTag() {
        return this.archiveTag;
    }

    @NotNull
    public final DelArchiveDialog getCheckDownloadTypeDialog() {
        return (DelArchiveDialog) this.checkDownloadTypeDialog$delegate.getValue();
    }

    @NotNull
    public final s90 getDataBinding() {
        s90 s90Var = this.dataBinding;
        if (s90Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return s90Var;
    }

    @NotNull
    public final DelArchiveDialog getDelFragment() {
        return (DelArchiveDialog) this.delFragment$delegate.getValue();
    }

    @NotNull
    public final TextView getDeleteCloud() {
        TextView textView = this.deleteCloud;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteCloud");
        }
        return textView;
    }

    @NotNull
    public final Dialog getDialog() {
        return (Dialog) this.dialog$delegate.getValue();
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final ImageShowDialog getImageDialog() {
        return (ImageShowDialog) this.imageDialog$delegate.getValue();
    }

    public final boolean getIsfirst() {
        return this.isfirst;
    }

    @NotNull
    public final View getMain() {
        View view = this.main;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("main");
        }
        return view;
    }

    @Nullable
    public final ModGameDetailBean getModgameBean() {
        return this.modgameBean;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final PopupWindow getPopWindow() {
        return (PopupWindow) this.popWindow$delegate.getValue();
    }

    @NotNull
    public final TextView getReDownload() {
        TextView textView = this.reDownload;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("reDownload");
        }
        return textView;
    }

    @NotNull
    public final RedownArchiveDialog getRedownFragment() {
        return (RedownArchiveDialog) this.redownFragment$delegate.getValue();
    }

    @NotNull
    public final View getTrangleBottom() {
        View view = this.trangleBottom;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("trangleBottom");
        }
        return view;
    }

    @NotNull
    public final View getTrangleTop() {
        View view = this.trangleTop;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("trangleTop");
        }
        return view;
    }

    public final int getType() {
        return this.type;
    }

    @NotNull
    public final ModGameCloudViewModle getViewModle() {
        return (ModGameCloudViewModle) this.viewModle$delegate.getValue();
    }

    @NotNull
    public final CloudShareViewModle getViewModleShareViewModle() {
        return (CloudShareViewModle) this.viewModleShareViewModle$delegate.getValue();
    }

    public final void initData() {
        boolean z3;
        c0.a().d(this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.type = arguments.getInt("type");
            String string = arguments.getString("gameId", "");
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"gameId\", \"\")");
            this.gameId = string;
            Serializable serializable = arguments.getSerializable("datas");
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.join.mgps.dto.ModGameDetailBean");
            this.modgameBean = (ModGameDetailBean) serializable;
            this.archiveTag = (ModGameArchiveTagBean) arguments.getSerializable(TagGameListActivity_.f35885q0);
            ModGameCloudViewModle viewModle = getViewModle();
            ModGameDetailBean modGameDetailBean = this.modgameBean;
            Intrinsics.checkNotNull(modGameDetailBean);
            GamedetialModleFourBean mod_game_info = modGameDetailBean.getMod_game_info();
            Intrinsics.checkNotNullExpressionValue(mod_game_info, "modgameBean!!.mod_game_info");
            String packageName = mod_game_info.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "modgameBean!!.mod_game_info.packageName");
            viewModle.setPackageName(packageName);
            MutableLiveData<ModGameArchivePathData> cloud_archive_local_path = getViewModle().getCloud_archive_local_path();
            ModGameDetailBean modGameDetailBean2 = this.modgameBean;
            cloud_archive_local_path.setValue(modGameDetailBean2 != null ? modGameDetailBean2.getCloud_archive_local_path() : null);
        }
        ModGameCloudViewModle viewModle2 = getViewModle();
        ModGameDetailBean modGameDetailBean3 = this.modgameBean;
        Intrinsics.checkNotNull(modGameDetailBean3);
        GamedetialModleFourBean mod_game_info2 = modGameDetailBean3.getMod_game_info();
        Intrinsics.checkNotNullExpressionValue(mod_game_info2, "modgameBean!!.mod_game_info");
        String packageName2 = mod_game_info2.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName2, "modgameBean!!.mod_game_info.packageName");
        ModGameDetailBean modGameDetailBean4 = this.modgameBean;
        ModGameArchivePathData cloud_archive_local_path2 = modGameDetailBean4 != null ? modGameDetailBean4.getCloud_archive_local_path() : null;
        Intrinsics.checkNotNull(cloud_archive_local_path2);
        Long value = getViewModleShareViewModle().getRunIngArchiveId().getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "viewModleShareViewModle.runIngArchiveId.value!!");
        viewModle2.loadAllArchives(packageName2, cloud_archive_local_path2, value.longValue(), getViewModleShareViewModle().getLocalArchiveLists().getValue());
        s90 s90Var = this.dataBinding;
        if (s90Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        s90Var.setLifecycleOwner(this);
        s90 s90Var2 = this.dataBinding;
        if (s90Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        s90Var2.setVariable(27, getViewModle());
        s90 s90Var3 = this.dataBinding;
        if (s90Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        s90Var3.setVariable(19, this);
        s90 s90Var4 = this.dataBinding;
        if (s90Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        XRecyclerView xRecyclerView = s90Var4.E;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "dataBinding.recycleView");
        xRecyclerView.setAdapter(getAdapterx());
        s90 s90Var5 = this.dataBinding;
        if (s90Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        XRecyclerView xRecyclerView2 = s90Var5.E;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView2, "dataBinding.recycleView");
        xRecyclerView2.getLayoutManager();
        s90 s90Var6 = this.dataBinding;
        if (s90Var6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        s90Var6.E.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$initData$2
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                ModgameCloudListFragment.this.loadData();
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                ModgameCloudListFragment.this.setPage(1);
                ModgameCloudListFragment.this.loadData();
            }
        });
        getViewModle().getListArchive().observe(getViewLifecycleOwner(), new Observer<List<CommonListMainData>>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$initData$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(List<CommonListMainData> list) {
                ModgameCloudListFragment.this.getAdapterx().notifyDataSetChanged();
            }
        });
        getViewModle().getRequest().getResultData().observe(getViewLifecycleOwner(), new Observer<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$initData$4
            @Override // androidx.lifecycle.Observer
            public /* bridge */ /* synthetic */ void onChanged(ResponseModel<List<? extends ArchiveData>> responseModel) {
                onChanged2((ResponseModel<List<ArchiveData>>) responseModel);
            }

            /* renamed from: onChanged  reason: avoid collision after fix types in other method */
            public final void onChanged2(ResponseModel<List<ArchiveData>> responseModel) {
                if (responseModel != null && responseModel.getCode() == 200) {
                    ModgameCloudListFragment.this.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                    List<ArchiveData> data = responseModel.getData();
                    if (responseModel.getPage() == 1) {
                        List<CommonListMainData> value2 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                        if (value2 != null) {
                            value2.clear();
                        }
                        ModgameCloudListFragment.this.getAdapterx().notifyDataSetChanged();
                    }
                    if (data != null && !data.isEmpty()) {
                        List<ArchiveData> value3 = ModgameCloudListFragment.this.getViewModle().getLocalAllArchive().getValue();
                        ModgameCloudListFragment modgameCloudListFragment = ModgameCloudListFragment.this;
                        modgameCloudListFragment.setPage(modgameCloudListFragment.getPage() + 1);
                        ModgameCloudListFragment.this.getDataBinding().E.q1();
                        for (ArchiveData archiveData : data) {
                            archiveData.setShowType(ModgameCloudListFragment.this.getType());
                            archiveData.setGame_id(ModgameCloudListFragment.this.getGameId());
                            archiveData.setIsDownloadArchive(0);
                            if (value3 != null && (!value3.isEmpty())) {
                                for (ArchiveData archiveData2 : value3) {
                                    if (Intrinsics.areEqual(archiveData2.getId(), archiveData.getId())) {
                                        archiveData.setUserId(archiveData2.getUserId());
                                        archiveData.setArchiveLocalZipPath(archiveData2.getArchiveLocalZipPath());
                                        archiveData.setIsDownloadArchive(1);
                                        archiveData.setPackageName(archiveData2.getPackageName());
                                        archiveData.setIsFirstRun(archiveData2.getIsFirstRun());
                                        archiveData.setMainArchiveLocalPath(archiveData2.getMainArchiveLocalPath());
                                        archiveData.setMainArchiveLocalPath2(archiveData2.getMainArchiveLocalPath2());
                                        archiveData.setArchiveLocalPath(archiveData2.getArchiveLocalPath());
                                        Long value4 = ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                                        archiveData.setRuningArchiveId(value4 != null ? value4.longValue() : 0L);
                                        archiveData.setShowText("启动");
                                        archiveData.setStatus(8);
                                    }
                                }
                            }
                            if (ModgameCloudListFragment.this.getType() != 1 && ModgameCloudListFragment.this.getType() != 2) {
                                List<CommonListMainData> value5 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                                if (value5 != null) {
                                    value5.add(new CommonListMainData(4, archiveData, null, null, 12, null));
                                }
                            } else {
                                List<CommonListMainData> value6 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                                if (value6 != null) {
                                    value6.add(new CommonListMainData(3, archiveData, null, null, 12, null));
                                }
                            }
                        }
                        ModgameCloudListFragment.this.getAdapterx().notifyDataSetChanged();
                        return;
                    }
                    List<CommonListMainData> value7 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                    if (value7 != null && value7.size() == 0) {
                        ModgameCloudListFragment.this.getViewModle().getLoadBindData().setValue(new LoadBindindData(4));
                    }
                    ModgameCloudListFragment.this.getDataBinding().E.setNoMore();
                    return;
                }
                List<CommonListMainData> value8 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                if (value8 != null && value8.size() == 0) {
                    if (responseModel != null && (responseModel.getPage() == 1 || responseModel.getPage() == 0)) {
                        List<CommonListMainData> value9 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                        if (value9 != null) {
                            value9.clear();
                        }
                        ModgameCloudListFragment.this.getAdapterx().notifyDataSetChanged();
                    }
                    List<CommonListMainData> value10 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                    if (value10 == null || value10.size() != 0) {
                        return;
                    }
                    ModgameCloudListFragment.this.getViewModle().getLoadBindData().setValue(new LoadBindindData(3));
                    return;
                }
                ModgameCloudListFragment.this.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
            }
        });
        getViewModle().getRequest().setInstallInExtPlug(getViewModleShareViewModle().getInstallInExtPlug());
        getViewModle().getRequest().getResultAllHasDownloadData().observe(getViewLifecycleOwner(), new Observer<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$initData$5
            @Override // androidx.lifecycle.Observer
            public /* bridge */ /* synthetic */ void onChanged(ResponseModel<List<? extends ArchiveData>> responseModel) {
                onChanged2((ResponseModel<List<ArchiveData>>) responseModel);
            }

            /* renamed from: onChanged  reason: avoid collision after fix types in other method */
            public final void onChanged2(ResponseModel<List<ArchiveData>> responseModel) {
                boolean z4;
                List<CommonListMainData> value2;
                int collectionSizeOrDefault;
                int collectionSizeOrDefault2;
                if (responseModel == null || responseModel.getCode() != 200) {
                    return;
                }
                List<ArchiveData> data = responseModel.getData();
                if (data != null && !data.isEmpty()) {
                    if (responseModel.getPage() == 1) {
                        ModgameCloudListFragment.this.setPage(1);
                        List<CommonListMainData> value3 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                        if (value3 != null) {
                            value3.clear();
                        }
                    }
                    List<ArchiveData> value4 = ModgameCloudListFragment.this.getViewModle().getLocalAllArchive().getValue();
                    ModgameCloudListFragment modgameCloudListFragment = ModgameCloudListFragment.this;
                    modgameCloudListFragment.setPage(modgameCloudListFragment.getPage() + 1);
                    ModgameCloudListFragment.this.getDataBinding().E.q1();
                    List<ArchiveData> value5 = ModgameCloudListFragment.this.getViewModle().getLocalAllArchive().getValue();
                    Intrinsics.checkNotNull(value5);
                    Iterator<ArchiveData> it2 = value5.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        ArchiveData next = it2.next();
                        next.setIsDownloadArchive(1);
                        next.setStatus(8);
                        next.setShowText("启动");
                        next.setShowType(2);
                        Long value6 = ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                        next.setRuningArchiveId(value6 != null ? value6.longValue() : 0L);
                        if (next.getUid() == 0) {
                            next.setShowType(1);
                            List<CommonListMainData> value7 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                            if (value7 != null) {
                                value7.add(new CommonListMainData(4, next, null, null, 12, null));
                            }
                        } else if (next.getUserId() == 0 && (!Intrinsics.areEqual(next.getId(), "0"))) {
                            List<ArchiveData> value8 = ModgameCloudListFragment.this.getViewModle().getLocalAllArchive().getValue();
                            if (value8 != null) {
                                ArrayList<ArchiveData> arrayList = new ArrayList();
                                for (T t3 : value8) {
                                    if (((ArchiveData) t3).getUid() == 0) {
                                        arrayList.add(t3);
                                    }
                                }
                                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                                for (ArchiveData archiveData : arrayList) {
                                    archiveData.setArchiveDesc("我的默认存档");
                                    arrayList2.add(Unit.INSTANCE);
                                }
                            }
                        } else {
                            List<CommonListMainData> value9 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                            if (value9 != null) {
                                value9.add(new CommonListMainData(3, next, null, null, 12, null));
                            }
                        }
                        ArrayList<ArchiveData> arrayList3 = new ArrayList();
                        for (T t4 : data) {
                            if (Intrinsics.areEqual(((ArchiveData) t4).getId(), next.getId())) {
                                arrayList3.add(t4);
                            }
                        }
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
                        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault);
                        for (ArchiveData archiveData2 : arrayList3) {
                            next.setArchiveDesc(archiveData2.getArchiveDesc());
                            next.setIsLike(archiveData2.getIsLike());
                            next.setLikeCount(archiveData2.getLikeCount());
                            next.setDownloadCount(archiveData2.getDownloadCount());
                            arrayList4.add(Unit.INSTANCE);
                        }
                    }
                    for (ArchiveData archiveData3 : data) {
                        archiveData3.setShowType(ModgameCloudListFragment.this.getType());
                        archiveData3.setGame_id(ModgameCloudListFragment.this.getGameId());
                        archiveData3.setIsDownloadArchive(0);
                        archiveData3.setPackageName(ModgameCloudListFragment.this.getViewModle().getPackageName());
                        if (value4 != null && (!value4.isEmpty())) {
                            Iterator<ArchiveData> it3 = value4.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    z4 = false;
                                    break;
                                }
                                ArchiveData next2 = it3.next();
                                if (Intrinsics.areEqual(next2.getId(), archiveData3.getId())) {
                                    archiveData3.setUserId(next2.getUserId());
                                    archiveData3.setArchiveLocalZipPath(next2.getArchiveLocalZipPath());
                                    archiveData3.setIsDownloadArchive(1);
                                    archiveData3.setPackageName(next2.getPackageName());
                                    archiveData3.setIsFirstRun(next2.getIsFirstRun());
                                    archiveData3.setMainArchiveLocalPath(next2.getMainArchiveLocalPath());
                                    archiveData3.setMainArchiveLocalPath2(next2.getMainArchiveLocalPath2());
                                    archiveData3.setArchiveLocalPath(next2.getArchiveLocalPath());
                                    Long value10 = ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                                    archiveData3.setRuningArchiveId(value10 != null ? value10.longValue() : 0L);
                                    archiveData3.setShowText("启动");
                                    archiveData3.setStatus(8);
                                    z4 = true;
                                }
                            }
                            if (!z4 && (value2 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue()) != null) {
                                value2.add(new CommonListMainData(3, archiveData3, null, null, 12, null));
                            }
                        } else {
                            List<CommonListMainData> value11 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                            if (value11 != null) {
                                value11.add(new CommonListMainData(3, archiveData3, null, null, 12, null));
                            }
                        }
                    }
                    ModgameCloudListFragment.this.getAdapterx().notifyDataSetChanged();
                    return;
                }
                ModgameCloudListFragment.this.getDataBinding().E.setNoMore();
            }
        });
        getViewModle().getRequest().getDataChangeItem().observe(getViewLifecycleOwner(), new Observer<ArchiveData>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$initData$6
            @Override // androidx.lifecycle.Observer
            public void onChanged(@Nullable ArchiveData archiveData) {
                ModGameCloudViewModle viewModle3 = ModgameCloudListFragment.this.getViewModle();
                Intrinsics.checkNotNull(archiveData);
                viewModle3.onitemChanged(archiveData, ModgameCloudListFragment.this.getAdapterx());
            }
        });
        getViewModle().getLocalAllArchive().observe(getViewLifecycleOwner(), new Observer<List<ArchiveData>>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$initData$7
            @Override // androidx.lifecycle.Observer
            public final void onChanged(List<ArchiveData> list) {
                if (ModgameCloudListFragment.this.getIsfirst()) {
                    ModgameCloudListFragment.this.loadData();
                    ModgameCloudListFragment.this.setIsfirst(false);
                    return;
                }
                if (ModgameCloudListFragment.this.getType() != 1) {
                    ModgameCloudListFragment.this.loadData();
                }
                if (ModgameCloudListFragment.this.getType() == 2) {
                    ModgameCloudListFragment.this.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                    ModgameCloudListFragment.this.updateLocaDataToShow();
                }
            }
        });
        getViewModleShareViewModle().getRunIngArchiveId().observe(requireActivity(), new Observer<Long>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$initData$8
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Long l4) {
                if (ModgameCloudListFragment.this.getType() == 2) {
                    List<CommonListMainData> value2 = ModgameCloudListFragment.this.getViewModle().getListArchive().getValue();
                    Intrinsics.checkNotNull(value2);
                    for (CommonListMainData commonListMainData : value2) {
                        Object any = commonListMainData.getAny();
                        Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                        Intrinsics.checkNotNull(l4);
                        ((ArchiveData) any).setRuningArchiveId(l4.longValue());
                    }
                    ModgameCloudListFragment.this.getViewModle().getListArchive().setValue(ModgameCloudListFragment.this.getViewModle().getListArchive().getValue());
                }
            }
        });
        getViewModleShareViewModle().getLocalArchiveLists().observe(requireActivity(), new Observer<List<ArchiveData>>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$initData$9
            @Override // androidx.lifecycle.Observer
            public final void onChanged(List<ArchiveData> list) {
                if (ModgameCloudListFragment.this.getModgameBean() != null) {
                    ModGameCloudViewModle viewModle3 = ModgameCloudListFragment.this.getViewModle();
                    ModGameDetailBean modgameBean = ModgameCloudListFragment.this.getModgameBean();
                    Intrinsics.checkNotNull(modgameBean);
                    GamedetialModleFourBean mod_game_info3 = modgameBean.getMod_game_info();
                    Intrinsics.checkNotNullExpressionValue(mod_game_info3, "modgameBean!!.mod_game_info");
                    String packageName3 = mod_game_info3.getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName3, "modgameBean!!.mod_game_info.packageName");
                    ModGameDetailBean modgameBean2 = ModgameCloudListFragment.this.getModgameBean();
                    ModGameArchivePathData cloud_archive_local_path3 = modgameBean2 != null ? modgameBean2.getCloud_archive_local_path() : null;
                    Intrinsics.checkNotNull(cloud_archive_local_path3);
                    Long value2 = ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                    Intrinsics.checkNotNull(value2);
                    Intrinsics.checkNotNullExpressionValue(value2, "viewModleShareViewModle.runIngArchiveId.value!!");
                    viewModle3.loadAllArchives(packageName3, cloud_archive_local_path3, value2.longValue(), ModgameCloudListFragment.this.getViewModleShareViewModle().getLocalArchiveLists().getValue());
                }
            }
        });
        AccountUtil_ instance_ = AccountUtil_.getInstance_(getActivity());
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(activity)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(activity).accountData");
        if (accountData != null && !d2.h(accountData.getToken())) {
            AccountUtil_ instance_2 = AccountUtil_.getInstance_(getActivity());
            Intrinsics.checkNotNullExpressionValue(instance_2, "AccountUtil_.getInstance…   activity\n            )");
            if (!instance_2.isTourist()) {
                z3 = true;
                this.isLogin = z3;
            }
        }
        z3 = false;
        this.isLogin = z3;
    }

    public final boolean isLogin() {
        return this.isLogin;
    }

    public final void loadData() {
        CloudArchiveCfg cloud_archive_cfg;
        getViewModle().getShowPosition().setValue(Integer.valueOf(this.type));
        int i2 = this.type;
        if (i2 != 1) {
            if (i2 == 2) {
                getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                updateLocaDataToShow();
                return;
            } else if (i2 == 3) {
                if (this.page == 1) {
                    getViewModle().getLoadBindData().setValue(new LoadBindindData(2));
                }
                ModDataRequest request = getViewModle().getRequest();
                Context requireContext = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
                request.loadMyInShop(requireContext, this.page, this.gameId);
                return;
            } else {
                return;
            }
        }
        if (this.page == 1) {
            getViewModle().getLoadBindData().setValue(new LoadBindindData(2));
        }
        ModDataRequest request2 = getViewModle().getRequest();
        Context requireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext()");
        int i4 = this.page;
        String str = this.gameId;
        ModGameDetailBean modGameDetailBean = this.modgameBean;
        long last_enter_main_page_time = (modGameDetailBean == null || (cloud_archive_cfg = modGameDetailBean.getCloud_archive_cfg()) == null) ? 0L : cloud_archive_cfg.getLast_enter_main_page_time();
        ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
        String tagId = modGameArchiveTagBean != null ? modGameArchiveTagBean.getTagId() : null;
        ModGameArchiveTagBean modGameArchiveTagBean2 = this.archiveTag;
        request2.getModeDatas(requireContext2, i4, str, last_enter_main_page_time, tagId, modGameArchiveTagBean2 != null ? Integer.valueOf(modGameArchiveTagBean2.getType()) : null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (valueOf != null && valueOf.intValue() == R.id.deleteCloud) {
            getPopWindow().dismiss();
            if (this.type == 2) {
                ArchiveData archiveData = this.archiveDataPop;
                if (archiveData == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
                }
                if (Intrinsics.areEqual("我的默认存档(暂无)", archiveData.getArchiveDesc())) {
                    i2.a(getContext()).b("删除失败：暂无默认存档");
                    return;
                } else {
                    getDelFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onClick$1
                        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                        public void onClickCancleButn() {
                            ModgameCloudListFragment.this.getDelFragment().dismiss();
                        }

                        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                        public void onClickOkButn() {
                            if (Intrinsics.areEqual(ModgameCloudListFragment.this.getArchiveDataPop().getId(), String.valueOf(ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue()))) {
                                ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().setValue(0L);
                            }
                            ModGameCloudViewModle viewModle = ModgameCloudListFragment.this.getViewModle();
                            FragmentActivity activity = ModgameCloudListFragment.this.getActivity();
                            Intrinsics.checkNotNull(activity);
                            Intrinsics.checkNotNullExpressionValue(activity, "activity!!");
                            viewModle.delMyDownloadArchive(activity, ModgameCloudListFragment.this.getArchiveDataPop());
                            ModgameCloudListFragment.this.getDelFragment().dismiss();
                        }
                    });
                    getDelFragment().setDatas(new DialogData("是否删除此存档", "", "删除", "取消", false, 16, null));
                }
            } else {
                getDelFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onClick$2
                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickCancleButn() {
                        ModgameCloudListFragment.this.getDelFragment().dismiss();
                    }

                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickOkButn() {
                        ModGameCloudViewModle viewModle = ModgameCloudListFragment.this.getViewModle();
                        FragmentActivity activity = ModgameCloudListFragment.this.getActivity();
                        Intrinsics.checkNotNull(activity);
                        Intrinsics.checkNotNullExpressionValue(activity, "activity!!");
                        viewModle.delMyArchiveFromCloud(activity, ModgameCloudListFragment.this.getArchiveDataPop());
                        ModgameCloudListFragment.this.getDelFragment().dismiss();
                    }
                });
                ArchiveData archiveData2 = this.archiveDataPop;
                if (archiveData2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
                }
                if (Intrinsics.areEqual(archiveData2.getId(), "0")) {
                    getDelFragment().setDatas(new DialogData("删除本地默认存档", "删除后，本地默认存档进度将被清空，确定删除吗？", "删除", "取消", false, 16, null));
                } else {
                    getDelFragment().setDatas(new DialogData("删除社区内您发布的此存档", "注：只删除存档社区内的存档，不会影响本地默认存档", "删除", "取消", false, 16, null));
                }
            }
            DelArchiveDialog delFragment = getDelFragment();
            FragmentManager parentFragmentManager = getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
            delFragment.show(parentFragmentManager, "");
        } else if (valueOf != null && valueOf.intValue() == R.id.reDownload) {
            getPopWindow().dismiss();
            if (this.type == 3) {
                Intent intent = new Intent(getActivity(), ModUploadArchiveActivity.class);
                ArrayList arrayList = new ArrayList();
                ArchiveData archiveData3 = this.archiveDataPop;
                if (archiveData3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
                }
                arrayList.add(archiveData3);
                intent.putExtra("archives", arrayList);
                ModGameDetailBean modGameDetailBean = this.modgameBean;
                Intrinsics.checkNotNull(modGameDetailBean);
                ModGameArchivePathData cloud_archive_local_path = modGameDetailBean.getCloud_archive_local_path();
                Intrinsics.checkNotNullExpressionValue(cloud_archive_local_path, "modgameBean!!.cloud_archive_local_path");
                intent.putExtra("archiveFileSuffix", cloud_archive_local_path.getArchiveFileSuffix());
                startActivity(intent);
                return;
            }
            getRedownFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onClick$3
                @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                public void onClickCancleButn() {
                    ModgameCloudListFragment.this.getRedownFragment().dismiss();
                }

                @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                public void onClickOkButn() {
                    String archiveLocalZipPath = ModgameCloudListFragment.this.getArchiveDataPop().getArchiveLocalZipPath();
                    if (!(archiveLocalZipPath == null || archiveLocalZipPath.length() == 0)) {
                        UtilsMy.delete(new File(ModgameCloudListFragment.this.getArchiveDataPop().getArchiveLocalZipPath()));
                    }
                    com.join.mgps.va.overmind.f fVar = com.join.mgps.va.overmind.f.f52369d;
                    String packageName = ModgameCloudListFragment.this.getArchiveDataPop().getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName, "archiveDataPop.packageName");
                    String x3 = com.join.mgps.va.overmind.f.x(fVar, packageName, 0, 2, null);
                    UtilsMy.delete(new File(x3, "/cloudArchives/" + ModgameCloudListFragment.this.getArchiveDataPop().getId()));
                    DownloadArchiveDialog downloadArchiveDialog = new DownloadArchiveDialog();
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("archive", ModgameCloudListFragment.this.getArchiveDataPop());
                    bundle.putBoolean("installInExtPlug", ModgameCloudListFragment.this.getViewModleShareViewModle().getInstallInExtPlug());
                    bundle.putSerializable("cloud_archive_local_path", ModgameCloudListFragment.this.getViewModle().getCloud_archive_local_path().getValue());
                    downloadArchiveDialog.setArguments(bundle);
                    if (EXTKt.dialogFragmentCanShow(downloadArchiveDialog)) {
                        downloadArchiveDialog.show(ModgameCloudListFragment.this.getChildFragmentManager(), "dialog");
                    }
                    ModgameCloudListFragment.this.getRedownFragment().dismiss();
                }
            });
            getRedownFragment().setDatas(new DialogData("重新下载", "重新下载后，云存档将会覆盖掉本地现有存档，确认重新下载吗？", "重新下载", "取消", false, 16, null));
            Bundle bundle = new Bundle();
            ArchiveData archiveData4 = this.archiveDataPop;
            if (archiveData4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
            }
            if (archiveData4.getArchiveLocalPath() != null) {
                ArchiveData archiveData5 = this.archiveDataPop;
                if (archiveData5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
                }
                StringBuilder sb = new StringBuilder();
                ModDataRequest request = getViewModle().getRequest();
                ArchiveData archiveData6 = this.archiveDataPop;
                if (archiveData6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
                }
                sb.append(x.p(request.getFileUpdateTimeMain(new File(archiveData6.getArchiveLocalPath()))));
                sb.append("玩过");
                archiveData5.setPlayTime(sb.toString());
            }
            Serializable serializable = this.archiveDataPop;
            if (serializable == null) {
                Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
            }
            bundle.putSerializable("archive", serializable);
            bundle.putSerializable("cloud_archive_local_path", getViewModle().getCloud_archive_local_path().getValue());
            getRedownFragment().setArguments(bundle);
            RedownArchiveDialog redownFragment = getRedownFragment();
            FragmentManager parentFragmentManager2 = getParentFragmentManager();
            Intrinsics.checkNotNullExpressionValue(parentFragmentManager2, "parentFragmentManager");
            redownFragment.show(parentFragmentManager2, "");
        }
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickDislike(@NotNull final ArchiveData archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
        if (!e.F(e.f52358n.b(), getViewModle().getPackageName(), 0, 2, null)) {
            getViewModleShareViewModle().getShowDownlloadDialog().setValue(1);
            return;
        }
        Context context = getContext();
        if (context != null) {
            EXTKt.checkHasLogin(context, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onClickDislike$1
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
                    ModGameCloudViewModle viewModle = ModgameCloudListFragment.this.getViewModle();
                    FragmentActivity requireActivity = ModgameCloudListFragment.this.requireActivity();
                    Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                    viewModle.commentArchive(requireActivity, archive, "NEGATIVE", ModgameCloudListFragment.this.getType());
                }
            });
        }
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickImage(@Nullable String str) {
        getImageDialog().setImageDialogPath(str);
        if (EXTKt.dialogFragmentCanShow(getImageDialog())) {
            ImageShowDialog imageDialog = getImageDialog();
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
            imageDialog.show(childFragmentManager, "imageDialog");
        }
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickMore(@NotNull View view, @NotNull ArchiveData archive) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(archive, "archive");
        this.archiveDataPop = archive;
        getPopWindow().setOutsideTouchable(true);
        if (getPopWindow().isShowing()) {
            getPopWindow().dismiss();
            return;
        }
        TextView textView = this.deleteCloud;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deleteCloud");
        }
        textView.setText("删除");
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp170);
        int i2 = 2;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (this.type == 3) {
            TextView textView2 = this.reDownload;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("reDownload");
            }
            textView2.setVisibility(0);
            i2 = 1;
        } else {
            TextView textView3 = this.reDownload;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("reDownload");
            }
            textView3.setVisibility(8);
        }
        if (this.type == 3) {
            TextView textView4 = this.reDownload;
            if (textView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("reDownload");
            }
            textView4.setText("编辑");
        }
        int i4 = dimensionPixelOffset / i2;
        if (iArr[1] + i4 + view.getHeight() > j.n(getContext()).k(getActivity())) {
            View view2 = this.main;
            if (view2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("main");
            }
            view2.setBackgroundResource(R.drawable.cloud_conner_back_5_bottom);
            View view3 = this.trangleTop;
            if (view3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("trangleTop");
            }
            view3.setVisibility(8);
            View view4 = this.trangleBottom;
            if (view4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("trangleBottom");
            }
            view4.setVisibility(0);
            getPopWindow().showAsDropDown(view, -getResources().getDimensionPixelOffset(R.dimen.wdp115), -(((int) view.getY()) + i4 + view.getHeight()));
            return;
        }
        View view5 = this.main;
        if (view5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("main");
        }
        view5.setBackgroundResource(R.drawable.cloud_conner_back_5);
        View view6 = this.trangleTop;
        if (view6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("trangleTop");
        }
        view6.setVisibility(0);
        View view7 = this.trangleBottom;
        if (view7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("trangleBottom");
        }
        view7.setVisibility(8);
        getPopWindow().showAsDropDown(view, -getResources().getDimensionPixelOffset(R.dimen.wdp115), getResources().getDimensionPixelOffset(R.dimen.wdp12));
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        loadData();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.github.snowdream.android.app.downloader.DownloadTask, T] */
    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickRun(@NotNull final ArchiveData archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? B = f.G().B(archive.getGame_id());
        objectRef.element = B;
        if (((DownloadTask) B) != null) {
            e b4 = e.f52358n.b();
            DownloadTask downloadTask = (DownloadTask) objectRef.element;
            if (b4.M(downloadTask != null ? downloadTask.getPackageName() : null)) {
                APKUtils.Companion companion = APKUtils.f17182b;
                if (companion.c(getContext(), (DownloadTask) objectRef.element) || companion.e(getContext(), new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onClickRun$1
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
                        ModgameCloudListFragment.this.onClickRunGame(archive, (DownloadTask) objectRef.element);
                    }
                })) {
                    return;
                }
            }
        } else {
            u0.e(archive.getGame_id() + " download task is null.");
        }
        onClickRunGame(archive, (DownloadTask) objectRef.element);
    }

    public final void onClickRunGame(@NotNull final ArchiveData archive, @Nullable DownloadTask downloadTask) {
        String valueOf;
        String valueOf2;
        Intrinsics.checkNotNullParameter(archive, "archive");
        if (downloadTask != null) {
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    e.a aVar = e.f52358n;
                    String packageName = downloadTask.getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName, "downloadTask.getPackageName()");
                    aVar.h(packageName, downloadTask.getResource_path());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            if (e.F(e.f52358n.b(), getViewModle().getPackageName(), 0, 2, null) && downloadTask.getStatus() == 5) {
                int i2 = 3;
                if (archive.getStatus() == 8) {
                    int i4 = this.type;
                    if (i4 == 1) {
                        i2 = 1;
                    } else if (i4 != 2) {
                        i2 = 4;
                    } else if (Intrinsics.areEqual(archive.getId(), "0")) {
                        i2 = 2;
                    }
                    p l4 = p.l(getContext());
                    Event event = Event.clickStartCloudSave;
                    Ext gameId = new Ext().setFrom(String.valueOf(i2)).setGameId(archive.getGame_id());
                    ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
                    if (modGameArchiveTagBean == null) {
                        valueOf2 = null;
                    } else {
                        valueOf2 = String.valueOf(modGameArchiveTagBean != null ? Integer.valueOf(modGameArchiveTagBean.getType()) : null);
                    }
                    Ext position = gameId.setPosition(valueOf2);
                    ModGameArchiveTagBean modGameArchiveTagBean2 = this.archiveTag;
                    l4.W(event, position, modGameArchiveTagBean2 != null ? modGameArchiveTagBean2.getTagId() : null);
                    CloudArchiveTable p3 = g.t().p(archive.getId());
                    if (p3 != null && p3.getIsFirstRun() == 1) {
                        p3.setIsFirstRun(2);
                        g.t().update(p3);
                        c0.a().c(new ArchiveDownEvent(10, archive));
                    }
                    startGame(archive);
                    return;
                } else if (archive.getStatus() == 0) {
                    int i5 = this.type;
                    int i6 = i5 != 1 ? i5 == 2 ? 3 : 4 : 1;
                    p l5 = p.l(getContext());
                    Event event2 = Event.clickDownCloudSave;
                    Ext gameId2 = new Ext().setFrom(String.valueOf(i6)).setGameId(archive.getGame_id());
                    ModGameArchiveTagBean modGameArchiveTagBean3 = this.archiveTag;
                    if (modGameArchiveTagBean3 == null) {
                        valueOf = null;
                    } else {
                        valueOf = String.valueOf(modGameArchiveTagBean3 != null ? Integer.valueOf(modGameArchiveTagBean3.getType()) : null);
                    }
                    Ext position2 = gameId2.setPosition(valueOf);
                    ModGameArchiveTagBean modGameArchiveTagBean4 = this.archiveTag;
                    l5.W(event2, position2, modGameArchiveTagBean4 != null ? modGameArchiveTagBean4.getTagId() : null);
                    Context context = getContext();
                    if (context != null) {
                        EXTKt.checkHasNetWork(context, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onClickRunGame$3
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
                                int uid = archive.getUid();
                                AccountUtil_ instance_ = AccountUtil_.getInstance_(ModgameCloudListFragment.this.getContext());
                                Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
                                AccountBean accountData = instance_.getAccountData();
                                Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
                                if (uid != accountData.getUid()) {
                                    ModgameCloudListFragment.this.showDownloadDialog(archive, 0);
                                    return;
                                }
                                ModgameCloudListFragment.this.getCheckDownloadTypeDialog().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onClickRunGame$3.1
                                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                                    public void onClickCancleButn() {
                                        ModgameCloudListFragment$onClickRunGame$3 modgameCloudListFragment$onClickRunGame$3 = ModgameCloudListFragment$onClickRunGame$3.this;
                                        ModgameCloudListFragment.this.showDownloadDialog(archive, 0);
                                        ModgameCloudListFragment.this.getCheckDownloadTypeDialog().dismiss();
                                    }

                                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                                    public void onClickOkButn() {
                                        ModgameCloudListFragment$onClickRunGame$3 modgameCloudListFragment$onClickRunGame$3 = ModgameCloudListFragment$onClickRunGame$3.this;
                                        ModgameCloudListFragment.this.showDownloadDialog(archive, 1);
                                        ModgameCloudListFragment.this.getCheckDownloadTypeDialog().dismiss();
                                    }
                                });
                                ModgameCloudListFragment.this.getCheckDownloadTypeDialog().setDatas(new DialogData("是否覆盖本地默认存档？", "覆盖本地存档后，你可再次分享存档。", "覆盖", "不覆盖", false, 16, null));
                                if (EXTKt.dialogFragmentCanShow(ModgameCloudListFragment.this.getCheckDownloadTypeDialog())) {
                                    DelArchiveDialog checkDownloadTypeDialog = ModgameCloudListFragment.this.getCheckDownloadTypeDialog();
                                    FragmentManager childFragmentManager = ModgameCloudListFragment.this.getChildFragmentManager();
                                    Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
                                    checkDownloadTypeDialog.show(childFragmentManager, "checkDownloadTypeDialog");
                                }
                            }
                        });
                        return;
                    }
                    return;
                } else {
                    return;
                }
            }
            getViewModleShareViewModle().getShowDownlloadDialog().setValue(1);
            return;
        }
        CloudShareViewModle.CloudShareEvent cloudShareEvent = new CloudShareViewModle.CloudShareEvent();
        cloudShareEvent.setShowdownloadModDialog(1);
        LiveDataExtensionKt.setEvent(getViewModleShareViewModle().getEvent(), cloudShareEvent);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.I2(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View root;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ViewDataBinding inflate = DataBindingUtil.inflate(inflater, R.layout.recyclerview_layout_databinding, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        this.dataBinding = (s90) inflate;
        initData();
        s90 s90Var = this.dataBinding;
        if (s90Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        if (s90Var != null && (root = s90Var.getRoot()) != null) {
            root.setBackgroundResource(R.drawable.alph);
        }
        s90 s90Var2 = this.dataBinding;
        if (s90Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return s90Var2.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        c0.a().e(this);
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onPraise(@NotNull final ArchiveData archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
        if (!e.F(e.f52358n.b(), getViewModle().getPackageName(), 0, 2, null)) {
            getViewModleShareViewModle().getShowDownlloadDialog().setValue(1);
            return;
        }
        Context context = getContext();
        if (context != null) {
            EXTKt.checkHasLogin(context, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$onPraise$1
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
                    ModGameCloudViewModle viewModle = ModgameCloudListFragment.this.getViewModle();
                    FragmentActivity requireActivity = ModgameCloudListFragment.this.requireActivity();
                    Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                    viewModle.commentArchive(requireActivity, archive, SimpleComparison.LIKE_OPERATION, ModgameCloudListFragment.this.getType());
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecivedDownLoadEVent(@NotNull ArchiveDownEvent archiveDownEvent) {
        Intrinsics.checkNotNullParameter(archiveDownEvent, "archiveDownEvent");
        getViewModle().onRecivedDownLoadEVent(archiveDownEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
        if (r3.getGame_run_state() == 0) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0095  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment.onResume():void");
    }

    public final void scrollToTop() {
        s90 s90Var = this.dataBinding;
        if (s90Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        if (s90Var == null) {
            return;
        }
        s90 s90Var2 = this.dataBinding;
        if (s90Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        s90Var2.E.smoothScrollToPosition(0);
    }

    public final void setArchiveDataPop(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "<set-?>");
        this.archiveDataPop = archiveData;
    }

    public final void setArchiveTag(@Nullable ModGameArchiveTagBean modGameArchiveTagBean) {
        this.archiveTag = modGameArchiveTagBean;
    }

    public final void setDataBinding(@NotNull s90 s90Var) {
        Intrinsics.checkNotNullParameter(s90Var, "<set-?>");
        this.dataBinding = s90Var;
    }

    public final void setDeleteCloud(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.deleteCloud = textView;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
    }

    public final void setIsfirst(boolean z3) {
        this.isfirst = z3;
    }

    public final void setLogin(boolean z3) {
        this.isLogin = z3;
    }

    public final void setMain(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.main = view;
    }

    public final void setModgameBean(@Nullable ModGameDetailBean modGameDetailBean) {
        this.modgameBean = modGameDetailBean;
    }

    public final void setPage(int i2) {
        this.page = i2;
    }

    public final void setReDownload(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.reDownload = textView;
    }

    public final void setTrangleBottom(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.trangleBottom = view;
    }

    public final void setTrangleTop(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.trangleTop = view;
    }

    public final void setType(int i2) {
        this.type = i2;
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void uploadCloud() {
        Context context = getContext();
        if (context != null) {
            EXTKt.checkHasNetWork(context, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.ModgameCloudListFragment$uploadCloud$1
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
                    GamedetialModleFourBean mod_game_info;
                    p l4 = p.l(ModgameCloudListFragment.this.getContext());
                    Event event = Event.clickIssueCloudSaveButton;
                    Ext ext = new Ext();
                    ModGameDetailBean modgameBean = ModgameCloudListFragment.this.getModgameBean();
                    l4.K1(event, ext.setGameId((modgameBean == null || (mod_game_info = modgameBean.getMod_game_info()) == null) ? null : mod_game_info.getGame_id()));
                    Intent intent = new Intent(ModgameCloudListFragment.this.getActivity(), ModUploadArchiveActivity.class);
                    List<ArchiveData> value = ModgameCloudListFragment.this.getViewModleShareViewModle().getLocalArchiveLists().getValue();
                    if (value != null && !value.isEmpty()) {
                        intent.putExtra("archives", (Serializable) value);
                        intent.putExtra("runIngArchiveId", ModgameCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue());
                        ModGameDetailBean modgameBean2 = ModgameCloudListFragment.this.getModgameBean();
                        Intrinsics.checkNotNull(modgameBean2);
                        ModGameArchivePathData cloud_archive_local_path = modgameBean2.getCloud_archive_local_path();
                        Intrinsics.checkNotNullExpressionValue(cloud_archive_local_path, "modgameBean!!.cloud_archive_local_path");
                        intent.putExtra("archiveFileSuffix", cloud_archive_local_path.getArchiveFileSuffix());
                        ModgameCloudListFragment.this.startActivity(intent);
                        return;
                    }
                    i2.a(ModgameCloudListFragment.this.getContext()).b("本地默认存档为空，无法分享");
                }
            });
        }
    }
}
