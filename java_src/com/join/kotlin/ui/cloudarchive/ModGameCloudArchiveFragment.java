package com.join.kotlin.ui.cloudarchive;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.SlidingTabLayout;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.z30;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.kotlin.ui.cloudarchive.dialog.NoticeArchiveDialog;
import com.join.mgps.Util.i2;
import com.join.mgps.adapter.x;
import com.join.mgps.db.tables.CloudArchiveTable;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.service.CommonService_;
import com.join.mgps.va.overmind.e;
import com.join.mgps.va.service.MessengerService;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import n1.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModGameCloudArchiveFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u00012\u00020\u0002:\u0001FB\u0007¢\u0006\u0004\bD\u0010EJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J&\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0006\u0010\u0010\u001a\u00020\u0003J\u0012\u0010\u0012\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0013\u001a\u00020\u0003H\u0016R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R!\u0010'\u001a\u00060\"R\u00020\u00008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\"\u0010(\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010\u0016\u001a\u0004\b)\u0010\u0018\"\u0004\b*\u0010\u001aR\u001d\u0010/\u001a\u00020+8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b,\u0010$\u001a\u0004\b-\u0010.R\u001d\u00104\u001a\u0002008F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b1\u0010$\u001a\u0004\b2\u00103R\u001d\u00109\u001a\u0002058F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b6\u0010$\u001a\u0004\b7\u00108R$\u0010:\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0016\u001a\u0004\b;\u0010\u0018\"\u0004\b<\u0010\u001aR$\u0010>\u001a\u0004\u0018\u00010=8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010C¨\u0006G"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;", "Landroidx/fragment/app/Fragment;", "Landroid/view/View$OnClickListener;", "", "showTabUi", "startupload", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "initData", "v", "onClick", "onDestroy", "", "gameId", "Ljava/lang/String;", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "Lcom/join/mgps/dto/ModGameDetailBean;", "modgameBean", "Lcom/join/mgps/dto/ModGameDetailBean;", "getModgameBean", "()Lcom/join/mgps/dto/ModGameDetailBean;", "setModgameBean", "(Lcom/join/mgps/dto/ModGameDetailBean;)V", "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;", "receiver$delegate", "Lkotlin/Lazy;", "getReceiver", "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;", "receiver", "runingArchiveId", "getRuningArchiveId", "setRuningArchiveId", "Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;", "noticeDialog$delegate", "getNoticeDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeArchiveDialog;", "noticeDialog", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle$delegate", "getViewModleShareViewModle", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleShareViewModle", "Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "viewModle$delegate", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/ModGameCloudViewModle;", "viewModle", CommonService_.b0.f51756b, "getImagePath", "setImagePath", "Lcom/join/android/app/mgsim/wufun/databinding/z30;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/z30;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/z30;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/z30;)V", "<init>", "()V", "MyReceiver", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ModGameCloudArchiveFragment extends Fragment implements View.OnClickListener {
    @Nullable
    private z30 dataBinding;
    @NotNull
    private String gameId;
    @Nullable
    private String imagePath;
    @Nullable
    private ModGameDetailBean modgameBean;
    @NotNull
    private final Lazy noticeDialog$delegate;
    private final Lazy receiver$delegate;
    @NotNull
    private String runingArchiveId;
    @NotNull
    private final Lazy viewModle$delegate;
    @NotNull
    private final Lazy viewModleShareViewModle$delegate;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ModGameCloudArchiveFragment.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\n"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment$MyReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "onReceive", "<init>", "(Lcom/join/kotlin/ui/cloudarchive/ModGameCloudArchiveFragment;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes3.dex */
    public final class MyReceiver extends BroadcastReceiver {
        public MyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@Nullable Context context, @Nullable Intent intent) {
            if (Intrinsics.areEqual(intent != null ? intent.getAction() : null, MessengerService.B)) {
                ModGameCloudArchiveFragment.this.setImagePath(intent.getStringExtra(CommonService_.b0.f51756b));
                ModGameCloudArchiveFragment.this.startupload();
            }
        }
    }

    public ModGameCloudArchiveFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ModGameCloudViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ModGameCloudViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(ModGameCloudArchiveFragment.this, new ViewModelProvider.NewInstanceFactory()).get(ModGameCloudViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …oudViewModle::class.java)");
                return (ModGameCloudViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<CloudShareViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment$viewModleShareViewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CloudShareViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(ModGameCloudArchiveFragment.this.requireActivity(), new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …areViewModle::class.java)");
                return (CloudShareViewModle) viewModel;
            }
        });
        this.viewModleShareViewModle$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<MyReceiver>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment$receiver$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ModGameCloudArchiveFragment.MyReceiver invoke() {
                return new ModGameCloudArchiveFragment.MyReceiver();
            }
        });
        this.receiver$delegate = lazy3;
        this.gameId = "1";
        this.runingArchiveId = "0";
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<NoticeArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment$noticeDialog$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoticeArchiveDialog invoke() {
                return new NoticeArchiveDialog();
            }
        });
        this.noticeDialog$delegate = lazy4;
    }

    private final MyReceiver getReceiver() {
        return (MyReceiver) this.receiver$delegate.getValue();
    }

    private final void showTabUi() {
        final ArrayList arrayList = new ArrayList();
        Bundle bundle = new Bundle();
        bundle.putString("gameId", this.gameId);
        bundle.putInt("type", 2);
        bundle.putSerializable("datas", this.modgameBean);
        arrayList.add(new x.a("本地", Fragment.instantiate(requireActivity(), ModgameCloudListFragment.class.getName(), bundle)));
        ModgameCloudListFragment modgameCloudListFragment = new ModgameCloudListFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putString("gameId", this.gameId);
        bundle2.putInt("type", 3);
        bundle2.putSerializable("datas", this.modgameBean);
        ModGameCloudViewModle viewModle = getViewModle();
        ModGameDetailBean modGameDetailBean = this.modgameBean;
        Intrinsics.checkNotNull(modGameDetailBean);
        GamedetialModleFourBean mod_game_info = modGameDetailBean.getMod_game_info();
        Intrinsics.checkNotNullExpressionValue(mod_game_info, "modgameBean!!.mod_game_info");
        String packageName = mod_game_info.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "modgameBean!!.mod_game_info.packageName");
        viewModle.setPackageName(packageName);
        modgameCloudListFragment.setArguments(bundle2);
        arrayList.add(new x.a("已发布", modgameCloudListFragment));
        x xVar = new x(getChildFragmentManager(), arrayList);
        z30 z30Var = this.dataBinding;
        Intrinsics.checkNotNull(z30Var);
        z30Var.G.setAdapter(xVar);
        z30 z30Var2 = this.dataBinding;
        Intrinsics.checkNotNull(z30Var2);
        SlidingTabLayout slidingTabLayout = z30Var2.E;
        z30 z30Var3 = this.dataBinding;
        Intrinsics.checkNotNull(z30Var3);
        slidingTabLayout.setViewPager(z30Var3.G);
        z30 z30Var4 = this.dataBinding;
        Intrinsics.checkNotNull(z30Var4);
        z30Var4.G.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment$showTabUi$1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i2) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i2, float f4, int i4) {
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
                int size = arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    z30 dataBinding = ModGameCloudArchiveFragment.this.getDataBinding();
                    Intrinsics.checkNotNull(dataBinding);
                    TextView title = dataBinding.E.j(i4);
                    if (i4 == i2) {
                        Intrinsics.checkNotNullExpressionValue(title, "title");
                        title.setTypeface(Typeface.defaultFromStyle(1));
                    } else {
                        Intrinsics.checkNotNullExpressionValue(title, "title");
                        title.setTypeface(Typeface.defaultFromStyle(0));
                    }
                }
                if (i2 == 0) {
                    ModGameCloudArchiveFragment.this.getViewModle().getShowPosition().setValue(1);
                } else if (i2 == 1) {
                    ModGameCloudArchiveFragment.this.getViewModle().getShowPosition().setValue(2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startupload() {
        Context context = getContext();
        if (context != null) {
            EXTKt.checkHasNetWork(context, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment$startupload$1
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
                    Context context2 = ModGameCloudArchiveFragment.this.getContext();
                    if (context2 != null) {
                        EXTKt.checkHasLogin(context2, new Function0<Unit>() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment$startupload$1.1
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
                                Intent intent = new Intent(ModGameCloudArchiveFragment.this.getActivity(), ModUploadArchiveActivity.class);
                                List<ArchiveData> value = ModGameCloudArchiveFragment.this.getViewModleShareViewModle().getLocalArchiveLists().getValue();
                                if (value != null && !value.isEmpty()) {
                                    intent.putExtra("archives", (Serializable) value);
                                    intent.putExtra("runIngArchiveId", ModGameCloudArchiveFragment.this.getViewModleShareViewModle().getRunIngArchiveId().getValue());
                                    ModGameDetailBean modgameBean = ModGameCloudArchiveFragment.this.getModgameBean();
                                    Intrinsics.checkNotNull(modgameBean);
                                    ModGameArchivePathData cloud_archive_local_path = modgameBean.getCloud_archive_local_path();
                                    Intrinsics.checkNotNullExpressionValue(cloud_archive_local_path, "modgameBean!!.cloud_archive_local_path");
                                    intent.putExtra("archiveFileSuffix", cloud_archive_local_path.getArchiveFileSuffix());
                                    intent.putExtra(CommonService_.b0.f51756b, ModGameCloudArchiveFragment.this.getImagePath());
                                    ModGameCloudArchiveFragment.this.startActivity(intent);
                                    return;
                                }
                                i2.a(ModGameCloudArchiveFragment.this.getContext()).b("本地默认存档为空，无法分享");
                            }
                        });
                    }
                }
            });
        }
    }

    @Nullable
    public final z30 getDataBinding() {
        return this.dataBinding;
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @Nullable
    public final String getImagePath() {
        return this.imagePath;
    }

    @Nullable
    public final ModGameDetailBean getModgameBean() {
        return this.modgameBean;
    }

    @NotNull
    public final NoticeArchiveDialog getNoticeDialog() {
        return (NoticeArchiveDialog) this.noticeDialog$delegate.getValue();
    }

    @NotNull
    public final String getRuningArchiveId() {
        return this.runingArchiveId;
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
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("gameId", "");
            Intrinsics.checkNotNullExpressionValue(string, "getString(\"gameId\", \"\")");
            this.gameId = string;
            Serializable serializable = arguments.getSerializable("datas");
            Objects.requireNonNull(serializable, "null cannot be cast to non-null type com.join.mgps.dto.ModGameDetailBean");
            this.modgameBean = (ModGameDetailBean) serializable;
        }
        z30 z30Var = this.dataBinding;
        if (z30Var != null) {
            z30Var.i1(getViewModle());
        }
        showTabUi();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Long value;
        GamedetialModleFourBean mod_game_info;
        p l4 = p.l(getContext());
        Event event = Event.clickIssueCloudSaveButton;
        Ext ext = new Ext();
        ModGameDetailBean modGameDetailBean = this.modgameBean;
        l4.K1(event, ext.setGameId((modGameDetailBean == null || (mod_game_info = modGameDetailBean.getMod_game_info()) == null) ? null : mod_game_info.getGame_id()));
        if (getViewModleShareViewModle().getRunIngArchiveId().getValue() != null && ((value = getViewModleShareViewModle().getRunIngArchiveId().getValue()) == null || value.longValue() != 0)) {
            g t3 = g.t();
            Long value2 = getViewModleShareViewModle().getRunIngArchiveId().getValue();
            Intrinsics.checkNotNull(value2);
            CloudArchiveTable p3 = t3.p(String.valueOf(value2.longValue()));
            if (p3 != null) {
                ArchiveData archiveData = (ArchiveData) JsonMapper.getInstance().fromJson(p3.getArchiveDataJson(), ArchiveData.class);
                if (archiveData != null) {
                    NoticeArchiveDialog noticeDialog = getNoticeDialog();
                    noticeDialog.setDatas(new DialogData("提示", "当前本地是  " + archiveData.getNickname() + "  的存档，请切换回默认存档后再发布", "切换存档", null, true, 8, null));
                    getNoticeDialog().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModGameCloudArchiveFragment$onClick$1
                        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                        public void onClickCancleButn() {
                        }

                        @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                        public void onClickOkButn() {
                            ModGameCloudArchiveFragment.this.getNoticeDialog().dismiss();
                        }
                    });
                    NoticeArchiveDialog noticeDialog2 = getNoticeDialog();
                    FragmentManager parentFragmentManager = getParentFragmentManager();
                    Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "parentFragmentManager");
                    noticeDialog2.show(parentFragmentManager, "");
                    return;
                }
            }
            startupload();
        } else if (!e.F(e.f52358n.b(), getViewModle().getPackageName(), 0, 2, null)) {
            getViewModleShareViewModle().getShowDownlloadDialog().setValue(1);
        } else {
            startupload();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View root;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        z30 z30Var = (z30) DataBindingUtil.inflate(inflater, R.layout.modgame_cloud_archive_fragment, viewGroup, false);
        this.dataBinding = z30Var;
        Intrinsics.checkNotNull(z30Var);
        z30Var.setLifecycleOwner(this);
        z30 z30Var2 = this.dataBinding;
        if (z30Var2 != null && (root = z30Var2.getRoot()) != null) {
            root.setBackgroundResource(R.drawable.alph);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(MessengerService.B);
        Context context = getContext();
        if (context != null) {
            context.registerReceiver(getReceiver(), intentFilter);
        }
        z30 z30Var3 = this.dataBinding;
        if (z30Var3 != null) {
            return z30Var3.getRoot();
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Context context = getContext();
        if (context != null) {
            context.unregisterReceiver(getReceiver());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        initData();
    }

    public final void setDataBinding(@Nullable z30 z30Var) {
        this.dataBinding = z30Var;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
    }

    public final void setImagePath(@Nullable String str) {
        this.imagePath = str;
    }

    public final void setModgameBean(@Nullable ModGameDetailBean modGameDetailBean) {
        this.modgameBean = modGameDetailBean;
    }

    public final void setRuningArchiveId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.runingArchiveId = str;
    }
}
