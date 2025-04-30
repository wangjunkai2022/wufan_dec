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
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.ki;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.adapter.EmusArchiveAdapter;
import com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.data.EmusDataRequest;
import com.join.kotlin.ui.cloudarchive.dialog.DelArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.ImageShowDialog;
import com.join.kotlin.ui.cloudarchive.dialog.RedownArchiveDialog;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.d2;
import com.join.mgps.dialog.x0;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.ArchiveShopDataBean;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModGameArchiveTagBean;
import com.join.mgps.dto.StandaloneCloudArchive;
import com.join.mgps.service.CommonService_;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GameDetailEmusCloudListFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\t¢\u0006\u0006\b£\u0001\u0010¤\u0001J&\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\u0016\u001a\u00020\rH\u0016J\u0018\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0010\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\u0012\u0010\u001d\u001a\u00020\r2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\u001f\u001a\u00020\r2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\"\u001a\u00020\r2\u0006\u0010!\u001a\u00020 H\u0007J\b\u0010#\u001a\u00020\rH\u0016J\b\u0010$\u001a\u00020\rH\u0016J\u0006\u0010%\u001a\u00020\rR\u001d\u0010+\u001a\u00020&8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\"\u0010-\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\"\u00104\u001a\u0002038\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001d\u0010>\u001a\u00020:8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b;\u0010(\u001a\u0004\b<\u0010=R\"\u0010?\u001a\u00020\u000b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\"\u0010F\u001a\u00020E8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u001d\u0010O\u001a\u00020\u00118F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bL\u0010(\u001a\u0004\bM\u0010NR\"\u0010P\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010.\u001a\u0004\bP\u00100\"\u0004\bQ\u00102R$\u0010S\u001a\u0004\u0018\u00010R8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\u001d\u0010]\u001a\u00020Y8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010(\u001a\u0004\b[\u0010\\R\"\u0010_\u001a\u00020^8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b_\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\"\u0010e\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\be\u0010f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR\"\u0010k\u001a\u00020\u00138\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bk\u0010l\u001a\u0004\bm\u0010n\"\u0004\bo\u0010pR\u001d\u0010u\u001a\u00020q8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\br\u0010(\u001a\u0004\bs\u0010tR\u001d\u0010z\u001a\u00020v8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bw\u0010(\u001a\u0004\bx\u0010yR&\u0010|\u001a\u0004\u0018\u00010{8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R,\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0083\u0001\u0010\u0084\u0001\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u0006\b\u0087\u0001\u0010\u0088\u0001R\"\u0010\u008d\u0001\u001a\u00030\u0089\u00018F@\u0006X\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u008a\u0001\u0010(\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001R&\u0010\u008e\u0001\u001a\u00020E8\u0006@\u0006X\u0086.¢\u0006\u0015\n\u0005\b\u008e\u0001\u0010G\u001a\u0005\b\u008f\u0001\u0010I\"\u0005\b\u0090\u0001\u0010KR&\u0010\u0091\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086.¢\u0006\u0015\n\u0005\b\u0091\u0001\u0010@\u001a\u0005\b\u0092\u0001\u0010B\"\u0005\b\u0093\u0001\u0010DR,\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0095\u0001\u0010\u0096\u0001\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001\"\u0006\b\u0099\u0001\u0010\u009a\u0001R&\u0010\u009b\u0001\u001a\u00020\u000b8\u0006@\u0006X\u0086.¢\u0006\u0015\n\u0005\b\u009b\u0001\u0010@\u001a\u0005\b\u009c\u0001\u0010B\"\u0005\b\u009d\u0001\u0010DR\"\u0010¢\u0001\u001a\u00030\u009e\u00018F@\u0006X\u0086\u0084\u0002¢\u0006\u000f\n\u0005\b\u009f\u0001\u0010(\u001a\u0006\b \u0001\u0010¡\u0001¨\u0006¥\u0001"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;", "Landroid/view/View$OnClickListener;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "onDestroyView", "initData", "loadData", "Landroid/widget/PopupWindow;", "createPopwindow", "Lcom/join/mgps/dto/CloudListDataBean;", "archive", "onClickRun", "uploadCloud", "view", "onClickMore", "onPraise", "onClickDislike", "", CommonService_.b0.f51756b, "onClickImage", "v", "onClick", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveDownEvent;", "archiveDownEvent", "onRecivedDownLoadEVent", "onClickReload", "onClickSetNetWork", "scrollToTop", "Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "redownFragment$delegate", "Lkotlin/Lazy;", "getRedownFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/RedownArchiveDialog;", "redownFragment", "", "isfirst", "Z", "getIsfirst", "()Z", "setIsfirst", "(Z)V", "Lcom/join/android/app/mgsim/wufun/databinding/ki;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/ki;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/ki;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/ki;)V", "Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "delFragment$delegate", "getDelFragment", "()Lcom/join/kotlin/ui/cloudarchive/dialog/DelArchiveDialog;", "delFragment", "main", "Landroid/view/View;", "getMain", "()Landroid/view/View;", "setMain", "(Landroid/view/View;)V", "Landroid/widget/TextView;", "deleteCloud", "Landroid/widget/TextView;", "getDeleteCloud", "()Landroid/widget/TextView;", "setDeleteCloud", "(Landroid/widget/TextView;)V", "popWindow$delegate", "getPopWindow", "()Landroid/widget/PopupWindow;", "popWindow", "isLogin", "setLogin", "Lcom/join/mgps/dto/StandaloneCloudArchive;", "modgameBean", "Lcom/join/mgps/dto/StandaloneCloudArchive;", "getModgameBean", "()Lcom/join/mgps/dto/StandaloneCloudArchive;", "setModgameBean", "(Lcom/join/mgps/dto/StandaloneCloudArchive;)V", "Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;", "adapterx$delegate", "getAdapterx", "()Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;", "adapterx", "", "page", "I", "getPage", "()I", "setPage", "(I)V", "gameId", "Ljava/lang/String;", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "archiveDataPop", "Lcom/join/mgps/dto/CloudListDataBean;", "getArchiveDataPop", "()Lcom/join/mgps/dto/CloudListDataBean;", "setArchiveDataPop", "(Lcom/join/mgps/dto/CloudListDataBean;)V", "Landroid/app/Dialog;", "dialog$delegate", "getDialog", "()Landroid/app/Dialog;", "dialog", "Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;", "viewModle$delegate", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudViewModle;", "viewModle", "Lcom/join/mgps/dto/ModGameArchiveTagBean;", "archiveTag", "Lcom/join/mgps/dto/ModGameArchiveTagBean;", "getArchiveTag", "()Lcom/join/mgps/dto/ModGameArchiveTagBean;", "setArchiveTag", "(Lcom/join/mgps/dto/ModGameArchiveTagBean;)V", "Lcom/join/mgps/dto/GamedetialModleFourBean;", "modleFourBean", "Lcom/join/mgps/dto/GamedetialModleFourBean;", "getModleFourBean", "()Lcom/join/mgps/dto/GamedetialModleFourBean;", "setModleFourBean", "(Lcom/join/mgps/dto/GamedetialModleFourBean;)V", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle$delegate", "getViewModleShareViewModle", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle", "reDownload", "getReDownload", "setReDownload", "trangleBottom", "getTrangleBottom", "setTrangleBottom", "Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;", "mListener", "Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;", "getMListener", "()Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;", "setMListener", "(Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;)V", "trangleTop", "getTrangleTop", "setTrangleTop", "Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "imageDialog$delegate", "getImageDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ImageShowDialog;", "imageDialog", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class GameDetailEmusCloudListFragment extends Fragment implements OnEmusClickArchiveListener, View.OnClickListener, LoadBindClickProxy {
    @NotNull
    private final Lazy adapterx$delegate;
    public CloudListDataBean archiveDataPop;
    @Nullable
    private ModGameArchiveTagBean archiveTag;
    public ki dataBinding;
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
    @Nullable
    private IOnRunListener mListener;
    public View main;
    @Nullable
    private StandaloneCloudArchive modgameBean;
    @Nullable
    private GamedetialModleFourBean modleFourBean;
    private int page;
    @NotNull
    private final Lazy popWindow$delegate;
    public TextView reDownload;
    @NotNull
    private final Lazy redownFragment$delegate;
    public View trangleBottom;
    public View trangleTop;
    @NotNull
    private final Lazy viewModle$delegate;
    @NotNull
    private final Lazy viewModleShareViewModle$delegate;

    public GameDetailEmusCloudListFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        Lazy lazy8;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<GameDetailEmusCloudViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GameDetailEmusCloudViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(GameDetailEmusCloudListFragment.this, new ViewModelProvider.NewInstanceFactory()).get(GameDetailEmusCloudViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …oudViewModle::class.java)");
                return (GameDetailEmusCloudViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CloudShareViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$viewModleShareViewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CloudShareViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(GameDetailEmusCloudListFragment.this.requireActivity(), new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …areViewModle::class.java)");
                return (CloudShareViewModle) viewModel;
            }
        });
        this.viewModleShareViewModle$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<EmusArchiveAdapter>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$adapterx$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final EmusArchiveAdapter invoke() {
                Context requireContext = GameDetailEmusCloudListFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
                return new EmusArchiveAdapter(requireContext, GameDetailEmusCloudListFragment.this);
            }
        });
        this.adapterx$delegate = lazy3;
        this.page = 1;
        this.gameId = "";
        this.isfirst = true;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<x0>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$dialog$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return a0.c0(GameDetailEmusCloudListFragment.this.getContext()).y(GameDetailEmusCloudListFragment.this.getContext(), "存档拷贝中");
            }
        });
        this.dialog$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<PopupWindow>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$popWindow$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupWindow invoke() {
                return GameDetailEmusCloudListFragment.this.createPopwindow();
            }
        });
        this.popWindow$delegate = lazy5;
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<ImageShowDialog>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$imageDialog$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ImageShowDialog invoke() {
                return new ImageShowDialog(1);
            }
        });
        this.imageDialog$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<DelArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$delFragment$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final DelArchiveDialog invoke() {
                return new DelArchiveDialog();
            }
        });
        this.delFragment$delegate = lazy7;
        lazy8 = LazyKt__LazyJVMKt.lazy(new Function0<RedownArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$redownFragment$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RedownArchiveDialog invoke() {
                return new RedownArchiveDialog();
            }
        });
        this.redownFragment$delegate = lazy8;
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
    public final EmusArchiveAdapter getAdapterx() {
        return (EmusArchiveAdapter) this.adapterx$delegate.getValue();
    }

    @NotNull
    public final CloudListDataBean getArchiveDataPop() {
        CloudListDataBean cloudListDataBean = this.archiveDataPop;
        if (cloudListDataBean == null) {
            Intrinsics.throwUninitializedPropertyAccessException("archiveDataPop");
        }
        return cloudListDataBean;
    }

    @Nullable
    public final ModGameArchiveTagBean getArchiveTag() {
        return this.archiveTag;
    }

    @NotNull
    public final ki getDataBinding() {
        ki kiVar = this.dataBinding;
        if (kiVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return kiVar;
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

    @Nullable
    public final IOnRunListener getMListener() {
        return this.mListener;
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

    @Nullable
    public final GamedetialModleFourBean getModleFourBean() {
        return this.modleFourBean;
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

    @NotNull
    public final GameDetailEmusCloudViewModle getViewModle() {
        return (GameDetailEmusCloudViewModle) this.viewModle$delegate.getValue();
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
            String string = arguments.getString("gameId", "");
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"gameId\", \"\")");
            this.gameId = string;
            String string2 = arguments.getString("modleFourBean");
            if (d2.i(string2)) {
                this.modleFourBean = (GamedetialModleFourBean) JsonMapper.getInstance().fromJson(string2, GamedetialModleFourBean.class);
            }
        }
        loadData();
        ki kiVar = this.dataBinding;
        if (kiVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        kiVar.setLifecycleOwner(this);
        ki kiVar2 = this.dataBinding;
        if (kiVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        kiVar2.setVariable(27, getViewModle());
        ki kiVar3 = this.dataBinding;
        if (kiVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        kiVar3.setVariable(19, this);
        ki kiVar4 = this.dataBinding;
        if (kiVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        XRecyclerView xRecyclerView = kiVar4.F;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView, "dataBinding.recycleView");
        xRecyclerView.setAdapter(getAdapterx());
        ki kiVar5 = this.dataBinding;
        if (kiVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        XRecyclerView xRecyclerView2 = kiVar5.F;
        Intrinsics.checkNotNullExpressionValue(xRecyclerView2, "dataBinding.recycleView");
        xRecyclerView2.getLayoutManager();
        ki kiVar6 = this.dataBinding;
        if (kiVar6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        kiVar6.F.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$initData$2
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                GameDetailEmusCloudListFragment.this.loadData();
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                GameDetailEmusCloudListFragment.this.setPage(1);
                GameDetailEmusCloudListFragment.this.loadData();
            }
        });
        getViewModle().getListArchive().observe(getViewLifecycleOwner(), new Observer<List<CloudListDataBean>>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$initData$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(List<CloudListDataBean> list) {
                GameDetailEmusCloudListFragment.this.getAdapterx().notifyDataSetChanged();
            }
        });
        getViewModle().getRequest().getResultData().observe(getViewLifecycleOwner(), new Observer<ArchiveShopDataBean>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$initData$4
            /* JADX WARN: Code restructure failed: missing block: B:37:0x0111, code lost:
                if (r5.getPn() == 0) goto L38;
             */
            @Override // androidx.lifecycle.Observer
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onChanged(com.join.mgps.dto.ArchiveShopDataBean r5) {
                /*
                    Method dump skipped, instructions count: 368
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$initData$4.onChanged(com.join.mgps.dto.ArchiveShopDataBean):void");
            }
        });
        getViewModle().getRequest().setInstallInExtPlug(getViewModleShareViewModle().getInstallInExtPlug());
        getViewModle().getRequest().getDataChangeItem().observe(getViewLifecycleOwner(), new Observer<CloudListDataBean>() { // from class: com.join.kotlin.ui.cloudarchive.GameDetailEmusCloudListFragment$initData$5
            @Override // androidx.lifecycle.Observer
            public void onChanged(@Nullable CloudListDataBean cloudListDataBean) {
                GameDetailEmusCloudViewModle viewModle = GameDetailEmusCloudListFragment.this.getViewModle();
                Intrinsics.checkNotNull(cloudListDataBean);
                viewModle.onitemChanged(cloudListDataBean, GameDetailEmusCloudListFragment.this.getAdapterx());
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
        if (this.page == 1) {
            getViewModle().getLoadBindData().setValue(new LoadBindindData(2));
        }
        EmusDataRequest request = getViewModle().getRequest();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        request.getModeDatas(requireContext, this.page, this.gameId);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onClickDislike(@NotNull CloudListDataBean archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onClickImage(@Nullable String str) {
        getImageDialog().setImageDialogPath(str);
        if (EXTKt.dialogFragmentCanShow(getImageDialog())) {
            ImageShowDialog imageDialog = getImageDialog();
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "childFragmentManager");
            imageDialog.show(childFragmentManager, "imageDialog");
        }
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onClickMore(@NotNull View view, @NotNull CloudListDataBean archive) {
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
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        loadData();
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onClickRun(@NotNull CloudListDataBean archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
        IOnRunListener iOnRunListener = this.mListener;
        if (iOnRunListener != null) {
            Intrinsics.checkNotNull(iOnRunListener);
            iOnRunListener.onRun();
        }
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
        ViewDataBinding inflate = DataBindingUtil.inflate(inflater, R.layout.game_detail_emus_cloud_list_layout_databinding, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        this.dataBinding = (ki) inflate;
        initData();
        ki kiVar = this.dataBinding;
        if (kiVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        if (kiVar != null && (root = kiVar.getRoot()) != null) {
            root.setBackgroundResource(R.drawable.alph);
        }
        ki kiVar2 = this.dataBinding;
        if (kiVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return kiVar2.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        c0.a().e(this);
    }

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void onPraise(@NotNull CloudListDataBean archive) {
        Intrinsics.checkNotNullParameter(archive, "archive");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onRecivedDownLoadEVent(@NotNull ArchiveDownEvent archiveDownEvent) {
        Intrinsics.checkNotNullParameter(archiveDownEvent, "archiveDownEvent");
        StringBuilder sb = new StringBuilder();
        sb.append("onRecivedDownLoadEVent: ");
        ModGameArchiveTagBean modGameArchiveTagBean = this.archiveTag;
        sb.append(modGameArchiveTagBean != null ? modGameArchiveTagBean.getName() : null);
    }

    public final void scrollToTop() {
        ki kiVar = this.dataBinding;
        if (kiVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        if (kiVar == null) {
            return;
        }
        ki kiVar2 = this.dataBinding;
        if (kiVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        kiVar2.F.smoothScrollToPosition(0);
    }

    public final void setArchiveDataPop(@NotNull CloudListDataBean cloudListDataBean) {
        Intrinsics.checkNotNullParameter(cloudListDataBean, "<set-?>");
        this.archiveDataPop = cloudListDataBean;
    }

    public final void setArchiveTag(@Nullable ModGameArchiveTagBean modGameArchiveTagBean) {
        this.archiveTag = modGameArchiveTagBean;
    }

    public final void setDataBinding(@NotNull ki kiVar) {
        Intrinsics.checkNotNullParameter(kiVar, "<set-?>");
        this.dataBinding = kiVar;
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

    public final void setMListener(@Nullable IOnRunListener iOnRunListener) {
        this.mListener = iOnRunListener;
    }

    public final void setMain(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.main = view;
    }

    public final void setModgameBean(@Nullable StandaloneCloudArchive standaloneCloudArchive) {
        this.modgameBean = standaloneCloudArchive;
    }

    public final void setModleFourBean(@Nullable GamedetialModleFourBean gamedetialModleFourBean) {
        this.modleFourBean = gamedetialModleFourBean;
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

    @Override // com.join.kotlin.ui.cloudarchive.adapter.OnEmusClickArchiveListener
    public void uploadCloud() {
    }
}
