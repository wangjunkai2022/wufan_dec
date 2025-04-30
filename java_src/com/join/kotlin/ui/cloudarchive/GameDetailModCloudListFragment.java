package com.join.kotlin.ui.cloudarchive;

import android.app.Dialog;
import android.content.Context;
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
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.j;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.si;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.adapter.ModArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.ModDataRequest;
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
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.StandaloneCloudArchive;
import com.join.mgps.service.CommonService_;
import com.join.mgps.va.overmind.e;
import com.psk.kotlin.util.CommonListMainData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GameDetailModCloudListFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000º\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t¢\u0006\u0006\b\u009f\u0001\u0010 \u0001J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J&\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0014\u001a\u00020\u0005H\u0016J\u0006\u0010\u0015\u001a\u00020\u0005J\u0006\u0010\u0016\u001a\u00020\u0005J\b\u0010\u0017\u001a\u00020\u0005H\u0016J\u0006\u0010\u0019\u001a\u00020\u0018J\u0010\u0010\u001a\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u001b\u001a\u00020\u0005H\u0016J\u0018\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u00122\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\u001f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0012\u0010\"\u001a\u00020\u00052\b\u0010!\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010$\u001a\u00020\u00052\b\u0010#\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010'\u001a\u00020\u00052\u0006\u0010&\u001a\u00020%H\u0007J\b\u0010(\u001a\u00020\u0005H\u0016J\b\u0010)\u001a\u00020\u0005H\u0016J\u0006\u0010*\u001a\u00020\u0005R\"\u0010,\u001a\u00020+8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001d\u00107\u001a\u0002028F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\"\u00108\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\"\u0010>\u001a\u00020\u00078\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR$\u0010E\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001d\u0010O\u001a\u00020K8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bL\u00104\u001a\u0004\bM\u0010NR\u001d\u0010T\u001a\u00020P8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bQ\u00104\u001a\u0004\bR\u0010SR\u001d\u0010Y\u001a\u00020U8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bV\u00104\u001a\u0004\bW\u0010XR\"\u0010[\u001a\u00020Z8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b[\u0010\\\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u001d\u0010e\u001a\u00020a8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bb\u00104\u001a\u0004\bc\u0010dR\u001d\u0010i\u001a\u00020\u00188F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bf\u00104\u001a\u0004\bg\u0010hR\"\u0010j\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bj\u0010k\u001a\u0004\bl\u0010m\"\u0004\bn\u0010oR\"\u0010p\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR\"\u0010v\u001a\u00020Z8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bv\u0010\\\u001a\u0004\bw\u0010^\"\u0004\bx\u0010`R\"\u0010y\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\by\u0010k\u001a\u0004\bz\u0010m\"\u0004\b{\u0010oR\u001e\u0010\u0080\u0001\u001a\u00020|8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b}\u00104\u001a\u0004\b~\u0010\u007fR*\u0010\u0082\u0001\u001a\u00030\u0081\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a\u0006\b\u0082\u0001\u0010\u0084\u0001\"\u0006\b\u0085\u0001\u0010\u0086\u0001R\"\u0010\u008b\u0001\u001a\u00030\u0087\u00018F@\u0006X\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u0088\u0001\u00104\u001a\u0006\b\u0089\u0001\u0010\u008a\u0001R \u0010\u008e\u0001\u001a\u00020U8F@\u0006X\u0086\u0084\u0002¢\u0006\u000e\n\u0005\b\u008c\u0001\u00104\u001a\u0005\b\u008d\u0001\u0010XR*\u0010\u008f\u0001\u001a\u00030\u0081\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008f\u0001\u0010\u0083\u0001\u001a\u0006\b\u0090\u0001\u0010\u0084\u0001\"\u0006\b\u0091\u0001\u0010\u0086\u0001R&\u0010\u0092\u0001\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0015\n\u0005\b\u0092\u0001\u0010k\u001a\u0005\b\u0093\u0001\u0010m\"\u0005\b\u0094\u0001\u0010oR,\u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0095\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R&\u0010\u009c\u0001\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u009c\u0001\u0010q\u001a\u0005\b\u009d\u0001\u0010s\"\u0005\b\u009e\u0001\u0010u¨\u0006¡\u0001"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;", "Landroid/view/View$OnClickListener;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "", "updateLocaDataToShow", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archive", "", "downloadType", "showDownloadDialog", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "onDestroyView", "initData", "loadData", "onResume", "Landroid/widget/PopupWindow;", "createPopwindow", "onClickRun", "uploadCloud", "view", "onClickMore", "onPraise", "onClickDislike", "", CommonService_.b0.f51756b, "onClickImage", "v", "onClick", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;", "archiveDownEvent", "onRecivedDownLoadEVent", "onClickReload", "onClickSetNetWork", "scrollToTop", "Lcom/join/android/app/mgsim/wufun/databinding/si;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/si;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/si;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/si;)V", "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "redownFragment$delegate", "Lkotlin/Lazy;", "getRedownFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "redownFragment", "gameId", "Ljava/lang/String;", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "archiveDataPop", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchiveDataPop", "()Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "setArchiveDataPop", "(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V", "Lcom/join/mgps/dto/ModGameArchiveTagBean;", "archiveTag", "Lcom/join/mgps/dto/ModGameArchiveTagBean;", "getArchiveTag", "()Lcom/join/mgps/dto/ModGameArchiveTagBean;", "setArchiveTag", "(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V", "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "imageDialog$delegate", "getImageDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "imageDialog", "Landroid/app/Dialog;", "dialog$delegate", "getDialog", "()Landroid/app/Dialog;", "dialog", "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "delFragment$delegate", "getDelFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "delFragment", "Landroid/widget/TextView;", "deleteCloud", "Landroid/widget/TextView;", "getDeleteCloud", "()Landroid/widget/TextView;", "setDeleteCloud", "(Landroid/widget/TextView;)V", "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "adapterx$delegate", "getAdapterx", "()Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;", "adapterx", "popWindow$delegate", "getPopWindow", "()Landroid/widget/PopupWindow;", "popWindow", "trangleBottom", "Landroid/view/View;", "getTrangleBottom", "()Landroid/view/View;", "setTrangleBottom", "(Landroid/view/View;)V", "type", "I", "getType", "()I", "setType", "(I)V", "reDownload", "getReDownload", "setReDownload", "trangleTop", "getTrangleTop", "setTrangleTop", "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "viewModle$delegate", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "viewModle", "", "isLogin", "Z", "()Z", "setLogin", "(Z)V", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle$delegate", "getViewModleShareViewModle", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle", "checkDownloadTypeDialog$delegate", "getCheckDownloadTypeDialog", "checkDownloadTypeDialog", "isfirst", "getIsfirst", "setIsfirst", "main", "getMain", "setMain", "Lcom/join/mgps/dto/StandaloneCloudArchive;", "modgameBean", "Lcom/join/mgps/dto/StandaloneCloudArchive;", "getModgameBean", "()Lcom/join/mgps/dto/StandaloneCloudArchive;", "setModgameBean", "(Lcom/join/mgps/dto/StandaloneCloudArchive;)V", "page", "getPage", "setPage", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class GameDetailModCloudListFragment extends Fragment implements OnClickArchiveListener, View.OnClickListener, LoadBindClickProxy {
    @NotNull
    private final Lazy adapterx$delegate;
    public ArchiveData archiveDataPop;
    @Nullable
    private ModGameArchiveTagBean archiveTag;
    @NotNull
    private final Lazy checkDownloadTypeDialog$delegate;
    public si dataBinding;
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
    private StandaloneCloudArchive modgameBean;
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

    public GameDetailModCloudListFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        Lazy lazy9;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ModGameCloudViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ModGameCloudViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(GameDetailModCloudListFragment.this, new ViewModelProvider.NewInstanceFactory()).get(ModGameCloudViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …oudViewModle::class.java)");
                return (ModGameCloudViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CloudShareViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$viewModleShareViewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CloudShareViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(GameDetailModCloudListFragment.this.requireActivity(), new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …areViewModle::class.java)");
                return (CloudShareViewModle) viewModel;
            }
        });
        this.viewModleShareViewModle$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ModArchiveAdapter>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$adapterx$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ModArchiveAdapter invoke() {
                boolean z3;
                Context requireContext = GameDetailModCloudListFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
                GameDetailModCloudListFragment gameDetailModCloudListFragment = GameDetailModCloudListFragment.this;
                ModGameArchiveTagBean archiveTag = gameDetailModCloudListFragment.getArchiveTag();
                if (archiveTag == null || archiveTag.getType() != 2) {
                    ModGameArchiveTagBean archiveTag2 = GameDetailModCloudListFragment.this.getArchiveTag();
                    if (!Intrinsics.areEqual(archiveTag2 != null ? archiveTag2.getName() : null, "精选")) {
                        z3 = false;
                        return new ModArchiveAdapter(requireContext, gameDetailModCloudListFragment, z3);
                    }
                }
                z3 = true;
                return new ModArchiveAdapter(requireContext, gameDetailModCloudListFragment, z3);
            }
        });
        this.adapterx$delegate = lazy3;
        this.page = 1;
        this.type = 1;
        this.gameId = "";
        this.isfirst = true;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<DelArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$checkDownloadTypeDialog$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DelArchiveDialog invoke() {
                return new DelArchiveDialog();
            }
        });
        this.checkDownloadTypeDialog$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<x0>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$dialog$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return a0.c0(GameDetailModCloudListFragment.this.getContext()).y(GameDetailModCloudListFragment.this.getContext(), "存档拷贝中");
            }
        });
        this.dialog$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<PopupWindow>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$popWindow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupWindow invoke() {
                return GameDetailModCloudListFragment.this.createPopwindow();
            }
        });
        this.popWindow$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<ImageShowDialog>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$imageDialog$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ImageShowDialog invoke() {
                return new ImageShowDialog(1);
            }
        });
        this.imageDialog$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<DelArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$delFragment$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DelArchiveDialog invoke() {
                return new DelArchiveDialog();
            }
        });
        this.delFragment$delegate = lazy8;
        lazy9 = LazyKt__LazyJVMKt.lazy(new Function0<RedownArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$redownFragment$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RedownArchiveDialog invoke() {
                return new RedownArchiveDialog();
            }
        });
        this.redownFragment$delegate = lazy9;
    }

    private final void showDownloadDialog(ArchiveData archiveData, int i2) {
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

    private final void updateLocaDataToShow() {
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
        si siVar = this.dataBinding;
        if (siVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        siVar.F.setNoMore();
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
    public final si getDataBinding() {
        si siVar = this.dataBinding;
        if (siVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return siVar;
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
    public final StandaloneCloudArchive getModgameBean() {
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
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.join.mgps.dto.StandaloneCloudArchive");
            this.modgameBean = (StandaloneCloudArchive) serializable;
            this.archiveTag = (ModGameArchiveTagBean) arguments.getSerializable(TagGameListActivity_.f35885q0);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("initData: ");
        ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
        sb.append(modGameArchiveTagBean != null ? modGameArchiveTagBean.getName() : null);
        loadData();
        si siVar = this.dataBinding;
        if (siVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        siVar.setLifecycleOwner(this);
        si siVar2 = this.dataBinding;
        if (siVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        siVar2.setVariable(27, getViewModle());
        si siVar3 = this.dataBinding;
        if (siVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        siVar3.setVariable(19, this);
        si siVar4 = this.dataBinding;
        if (siVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        XRecyclerView xRecyclerView = siVar4.F;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "dataBinding.recycleView");
        xRecyclerView.setAdapter(getAdapterx());
        si siVar5 = this.dataBinding;
        if (siVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        XRecyclerView xRecyclerView2 = siVar5.F;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView2, "dataBinding.recycleView");
        xRecyclerView2.getLayoutManager();
        si siVar6 = this.dataBinding;
        if (siVar6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        siVar6.F.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$initData$2
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                GameDetailModCloudListFragment.this.loadData();
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                GameDetailModCloudListFragment.this.setPage(1);
                GameDetailModCloudListFragment.this.loadData();
            }
        });
        getViewModle().getListArchive().observe(getViewLifecycleOwner(), new Observer<List<CommonListMainData>>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$initData$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(List<CommonListMainData> list) {
                GameDetailModCloudListFragment.this.getAdapterx().notifyDataSetChanged();
            }
        });
        getViewModle().getRequest().getResultData().observe(getViewLifecycleOwner(), new Observer<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$initData$4
            @Override // androidx.lifecycle.Observer
            public /* bridge */ /* synthetic */ void onChanged(ResponseModel<List<? extends ArchiveData>> responseModel) {
                onChanged2((ResponseModel<List<ArchiveData>>) responseModel);
            }

            /* renamed from: onChanged  reason: avoid collision after fix types in other method */
            public final void onChanged2(ResponseModel<List<ArchiveData>> responseModel) {
                if (responseModel != null && responseModel.getCode() == 200) {
                    GameDetailModCloudListFragment.this.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
                    List<ArchiveData> data = responseModel.getData();
                    if (responseModel.getPage() == 1) {
                        List<CommonListMainData> value = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                        if (value != null) {
                            value.clear();
                        }
                        GameDetailModCloudListFragment.this.getAdapterx().notifyDataSetChanged();
                    }
                    if (data != null && !data.isEmpty()) {
                        List<ArchiveData> value2 = GameDetailModCloudListFragment.this.getViewModle().getLocalAllArchive().getValue();
                        GameDetailModCloudListFragment gameDetailModCloudListFragment = GameDetailModCloudListFragment.this;
                        gameDetailModCloudListFragment.setPage(gameDetailModCloudListFragment.getPage() + 1);
                        GameDetailModCloudListFragment.this.getDataBinding().F.q1();
                        for (ArchiveData archiveData : data) {
                            archiveData.setShowType(GameDetailModCloudListFragment.this.getType());
                            archiveData.setGame_id(GameDetailModCloudListFragment.this.getGameId());
                            archiveData.setIsDownloadArchive(0);
                            if (value2 != null && (!value2.isEmpty())) {
                                for (ArchiveData archiveData2 : value2) {
                                    if (Intrinsics.areEqual(archiveData2.getId(), archiveData.getId())) {
                                        archiveData.setUserId(archiveData2.getUserId());
                                        archiveData.setArchiveLocalZipPath(archiveData2.getArchiveLocalZipPath());
                                        archiveData.setIsDownloadArchive(1);
                                        archiveData.setPackageName(archiveData2.getPackageName());
                                        archiveData.setIsFirstRun(archiveData2.getIsFirstRun());
                                        archiveData.setMainArchiveLocalPath(archiveData2.getMainArchiveLocalPath());
                                        archiveData.setMainArchiveLocalPath2(archiveData2.getMainArchiveLocalPath2());
                                        archiveData.setArchiveLocalPath(archiveData2.getArchiveLocalPath());
                                        Long value3 = GameDetailModCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                                        archiveData.setRuningArchiveId(value3 != null ? value3.longValue() : 0L);
                                        archiveData.setShowText("启动");
                                        archiveData.setStatus(8);
                                    }
                                }
                            }
                            if (GameDetailModCloudListFragment.this.getType() != 1 && GameDetailModCloudListFragment.this.getType() != 2) {
                                List<CommonListMainData> value4 = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                                if (value4 != null) {
                                    value4.add(new CommonListMainData(4, archiveData, null, null, 12, null));
                                }
                            } else {
                                List<CommonListMainData> value5 = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                                if (value5 != null) {
                                    value5.add(new CommonListMainData(5, archiveData, null, null, 12, null));
                                }
                            }
                        }
                        GameDetailModCloudListFragment.this.getAdapterx().notifyDataSetChanged();
                        return;
                    }
                    List<CommonListMainData> value6 = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                    if (value6 != null && value6.size() == 0) {
                        GameDetailModCloudListFragment.this.getViewModle().getLoadBindData().setValue(new LoadBindindData(4));
                    }
                    GameDetailModCloudListFragment.this.getDataBinding().F.setNoMore();
                    return;
                }
                List<CommonListMainData> value7 = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                if (value7 != null && value7.size() == 0) {
                    if (responseModel != null && (responseModel.getPage() == 1 || responseModel.getPage() == 0)) {
                        List<CommonListMainData> value8 = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                        if (value8 != null) {
                            value8.clear();
                        }
                        GameDetailModCloudListFragment.this.getAdapterx().notifyDataSetChanged();
                    }
                    List<CommonListMainData> value9 = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                    if (value9 == null || value9.size() != 0) {
                        return;
                    }
                    GameDetailModCloudListFragment.this.getViewModle().getLoadBindData().setValue(new LoadBindindData(3));
                    return;
                }
                GameDetailModCloudListFragment.this.getViewModle().getLoadBindData().setValue(new LoadBindindData(1));
            }
        });
        getViewModle().getRequest().setInstallInExtPlug(getViewModleShareViewModle().getInstallInExtPlug());
        getViewModle().getRequest().getResultAllHasDownloadData().observe(getViewLifecycleOwner(), new Observer<ResponseModel<List<? extends ArchiveData>>>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$initData$5
            @Override // androidx.lifecycle.Observer
            public /* bridge */ /* synthetic */ void onChanged(ResponseModel<List<? extends ArchiveData>> responseModel) {
                onChanged2((ResponseModel<List<ArchiveData>>) responseModel);
            }

            /* renamed from: onChanged  reason: avoid collision after fix types in other method */
            public final void onChanged2(ResponseModel<List<ArchiveData>> responseModel) {
                int collectionSizeOrDefault;
                int collectionSizeOrDefault2;
                if (responseModel == null || responseModel.getCode() != 200) {
                    return;
                }
                List<ArchiveData> data = responseModel.getData();
                if (data != null && !data.isEmpty()) {
                    if (responseModel.getPage() == 1) {
                        GameDetailModCloudListFragment.this.setPage(1);
                        List<CommonListMainData> value = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                        if (value != null) {
                            value.clear();
                        }
                    }
                    GameDetailModCloudListFragment.this.getViewModle().getLocalAllArchive().getValue();
                    GameDetailModCloudListFragment gameDetailModCloudListFragment = GameDetailModCloudListFragment.this;
                    gameDetailModCloudListFragment.setPage(gameDetailModCloudListFragment.getPage() + 1);
                    GameDetailModCloudListFragment.this.getDataBinding().F.q1();
                    List<ArchiveData> value2 = GameDetailModCloudListFragment.this.getViewModle().getLocalAllArchive().getValue();
                    Intrinsics.checkNotNull(value2);
                    for (ArchiveData archiveData : value2) {
                        archiveData.setIsDownloadArchive(1);
                        archiveData.setStatus(8);
                        archiveData.setShowText("启动");
                        archiveData.setShowType(2);
                        Long value3 = GameDetailModCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue();
                        archiveData.setRuningArchiveId(value3 != null ? value3.longValue() : 0L);
                        if (archiveData.getUid() == 0) {
                            archiveData.setShowType(1);
                            List<CommonListMainData> value4 = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                            if (value4 != null) {
                                value4.add(new CommonListMainData(4, archiveData, null, null, 12, null));
                            }
                        } else if (archiveData.getUserId() == 0 && (!Intrinsics.areEqual(archiveData.getId(), "0"))) {
                            List<ArchiveData> value5 = GameDetailModCloudListFragment.this.getViewModle().getLocalAllArchive().getValue();
                            if (value5 != null) {
                                ArrayList<ArchiveData> arrayList = new ArrayList();
                                for (T t3 : value5) {
                                    if (((ArchiveData) t3).getUid() == 0) {
                                        arrayList.add(t3);
                                    }
                                }
                                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                                for (ArchiveData archiveData2 : arrayList) {
                                    archiveData2.setArchiveDesc("我的默认存档");
                                    arrayList2.add(Unit.INSTANCE);
                                }
                            }
                        } else {
                            List<CommonListMainData> value6 = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                            if (value6 != null) {
                                value6.add(new CommonListMainData(3, archiveData, null, null, 12, null));
                            }
                        }
                        ArrayList<ArchiveData> arrayList3 = new ArrayList();
                        for (T t4 : data) {
                            if (Intrinsics.areEqual(((ArchiveData) t4).getId(), archiveData.getId())) {
                                arrayList3.add(t4);
                            }
                        }
                        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
                        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault);
                        for (ArchiveData archiveData3 : arrayList3) {
                            archiveData.setArchiveDesc(archiveData3.getArchiveDesc());
                            archiveData.setIsLike(archiveData3.getIsLike());
                            archiveData.setLikeCount(archiveData3.getLikeCount());
                            archiveData.setDownloadCount(archiveData3.getDownloadCount());
                            arrayList4.add(Unit.INSTANCE);
                        }
                    }
                    for (ArchiveData archiveData4 : data) {
                        archiveData4.setShowType(GameDetailModCloudListFragment.this.getType());
                        archiveData4.setGame_id(GameDetailModCloudListFragment.this.getGameId());
                        archiveData4.setIsDownloadArchive(0);
                        archiveData4.setPackageName(GameDetailModCloudListFragment.this.getViewModle().getPackageName());
                        List<CommonListMainData> value7 = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                        if (value7 != null) {
                            value7.add(new CommonListMainData(5, archiveData4, null, null, 12, null));
                        }
                    }
                    GameDetailModCloudListFragment.this.getAdapterx().notifyDataSetChanged();
                    return;
                }
                GameDetailModCloudListFragment.this.getDataBinding().F.setNoMore();
            }
        });
        getViewModle().getRequest().getDataChangeItem().observe(getViewLifecycleOwner(), new Observer<ArchiveData>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$initData$6
            @Override // androidx.lifecycle.Observer
            public void onChanged(@Nullable ArchiveData archiveData) {
                ModGameCloudViewModle viewModle = GameDetailModCloudListFragment.this.getViewModle();
                Intrinsics.checkNotNull(archiveData);
                viewModle.onitemChanged(archiveData, GameDetailModCloudListFragment.this.getAdapterx());
            }
        });
        getViewModleShareViewModle().getRunIngArchiveId().observe(requireActivity(), new Observer<Long>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$initData$7
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Long l4) {
                if (GameDetailModCloudListFragment.this.getType() == 2) {
                    List<CommonListMainData> value = GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue();
                    Intrinsics.checkNotNull(value);
                    for (CommonListMainData commonListMainData : value) {
                        Object any = commonListMainData.getAny();
                        Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData");
                        Intrinsics.checkNotNull(l4);
                        ((ArchiveData) any).setRuningArchiveId(l4.longValue());
                    }
                    GameDetailModCloudListFragment.this.getViewModle().getListArchive().setValue(GameDetailModCloudListFragment.this.getViewModle().getListArchive().getValue());
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
        StandaloneCloudArchive standaloneCloudArchive = this.modgameBean;
        long last_enter_main_page_time = standaloneCloudArchive != null ? standaloneCloudArchive.getLast_enter_main_page_time() : 0L;
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
                    getDelFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$onClick$1
                        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                        public void onClickCancleButn() {
                            GameDetailModCloudListFragment.this.getDelFragment().dismiss();
                        }

                        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                        public void onClickOkButn() {
                            if (Intrinsics.areEqual(GameDetailModCloudListFragment.this.getArchiveDataPop().getId(), String.valueOf(GameDetailModCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue()))) {
                                GameDetailModCloudListFragment.this.getViewModleShareViewModle().getRunIngArchiveId().setValue(0L);
                            }
                            ModGameCloudViewModle viewModle = GameDetailModCloudListFragment.this.getViewModle();
                            FragmentActivity activity = GameDetailModCloudListFragment.this.getActivity();
                            Intrinsics.checkNotNull(activity);
                            Intrinsics.checkNotNullExpressionValue(activity, "activity!!");
                            viewModle.delMyDownloadArchive(activity, GameDetailModCloudListFragment.this.getArchiveDataPop());
                            GameDetailModCloudListFragment.this.getDelFragment().dismiss();
                        }
                    });
                    getDelFragment().setDatas(new DialogData("是否删除此存档", "", "删除", "取消", false, 16, null));
                }
            } else {
                getDelFragment().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$onClick$2
                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickCancleButn() {
                        GameDetailModCloudListFragment.this.getDelFragment().dismiss();
                    }

                    @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                    public void onClickOkButn() {
                        ModGameCloudViewModle viewModle = GameDetailModCloudListFragment.this.getViewModle();
                        FragmentActivity activity = GameDetailModCloudListFragment.this.getActivity();
                        Intrinsics.checkNotNull(activity);
                        Intrinsics.checkNotNullExpressionValue(activity, "activity!!");
                        viewModle.delMyArchiveFromCloud(activity, GameDetailModCloudListFragment.this.getArchiveDataPop());
                        GameDetailModCloudListFragment.this.getDelFragment().dismiss();
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
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
            delFragment.show(childFragmentManager, "");
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
            EXTKt.checkHasLogin(context, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$onClickDislike$1
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
                    ModGameCloudViewModle viewModle = GameDetailModCloudListFragment.this.getViewModle();
                    Context requireContext = GameDetailModCloudListFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
                    viewModle.commentArchive(requireContext, archive, "NEGATIVE", GameDetailModCloudListFragment.this.getType());
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

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnClickArchiveListener
    public void onClickRun(@NotNull ArchiveData archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
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
        ViewDataBinding inflate = DataBindingUtil.inflate(inflater, R.layout.game_detail_mod_cloud_list_layout_databinding, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        this.dataBinding = (si) inflate;
        initData();
        si siVar = this.dataBinding;
        if (siVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        if (siVar != null && (root = siVar.getRoot()) != null) {
            root.setBackgroundResource(R.drawable.alph);
        }
        si siVar2 = this.dataBinding;
        if (siVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return siVar2.getRoot();
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
            EXTKt.checkHasLogin(context, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment$onPraise$1
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
                    ModGameCloudViewModle viewModle = GameDetailModCloudListFragment.this.getViewModle();
                    Context requireContext = GameDetailModCloudListFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
                    viewModle.commentArchive(requireContext, archive, SimpleComparison.LIKE_OPERATION, GameDetailModCloudListFragment.this.getType());
                }
            });
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecivedDownLoadEVent(@NotNull ArchiveDownEvent archiveDownEvent) {
        Intrinsics.checkNotNullParameter(archiveDownEvent, "archiveDownEvent");
        StringBuilder sb = new StringBuilder();
        sb.append("onRecivedDownLoadEVent: ");
        ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
        sb.append(modGameArchiveTagBean != null ? modGameArchiveTagBean.getName() : null);
        getViewModle().onRecivedDownLoadEVent(archiveDownEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0039, code lost:
        if (r1.isTourist() == false) goto L7;
     */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() {
        /*
            r3 = this;
            super.onResume()
            r0 = 1
            r3.page = r0
            androidx.fragment.app.FragmentActivity r1 = r3.getActivity()
            com.join.mgps.Util.AccountUtil_ r1 = com.join.mgps.Util.AccountUtil_.getInstance_(r1)
            java.lang.String r2 = "AccountUtil_.getInstance_(activity)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            com.join.mgps.dto.AccountBean r1 = r1.getAccountData()
            java.lang.String r2 = "AccountUtil_.getInstance_(activity).accountData"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            if (r1 == 0) goto L3c
            java.lang.String r1 = r1.getToken()
            boolean r1 = com.join.mgps.Util.d2.h(r1)
            if (r1 != 0) goto L3c
            androidx.fragment.app.FragmentActivity r1 = r3.getActivity()
            com.join.mgps.Util.AccountUtil_ r1 = com.join.mgps.Util.AccountUtil_.getInstance_(r1)
            java.lang.String r2 = "AccountUtil_.getInstance…   activity\n            )"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            boolean r1 = r1.isTourist()
            if (r1 != 0) goto L3c
            goto L3d
        L3c:
            r0 = 0
        L3d:
            boolean r1 = r3.isLogin
            if (r0 == r1) goto L46
            r3.loadData()
            r3.isLogin = r0
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.GameDetailModCloudListFragment.onResume():void");
    }

    public final void scrollToTop() {
        si siVar = this.dataBinding;
        if (siVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        if (siVar == null) {
            return;
        }
        si siVar2 = this.dataBinding;
        if (siVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        siVar2.F.smoothScrollToPosition(0);
    }

    public final void setArchiveDataPop(@NotNull ArchiveData archiveData) {
        Intrinsics.checkNotNullParameter(archiveData, "<set-?>");
        this.archiveDataPop = archiveData;
    }

    public final void setArchiveTag(@Nullable ModGameArchiveTagBean modGameArchiveTagBean) {
        this.archiveTag = modGameArchiveTagBean;
    }

    public final void setDataBinding(@NotNull si siVar) {
        Intrinsics.checkNotNullParameter(siVar, "<set-?>");
        this.dataBinding = siVar;
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

    public final void setModgameBean(@Nullable StandaloneCloudArchive standaloneCloudArchive) {
        this.modgameBean = standaloneCloudArchive;
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
    }
}
