package com.join.kotlin.ui.cloudarchive;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.BaseAppCompatActivity;
import com.google.android.material.textfield.TextInputEditText;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.n30;
import com.join.kotlin.domain.ext.EXTKt;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ModGameArchivePathData;
import com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialog;
import com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.kotlin.ui.cloudarchive.dialog.NoticeWhiteDialog;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a0;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.n;
import com.join.mgps.dialog.x0;
import com.join.mgps.dialog.y0;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.service.CommonService_;
import com.join.mgps.va.overmind.e;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import com.psk.kotlin.ext.CommonExtKt;
import com.umeng.analytics.pro.ai;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.Timer;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ModUploadArchiveActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\bZ\u0010[J&\u0010\r\u001a\u00020\f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0012\u0010\u0010\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014J\u0012\u0010\u0013\u001a\u00020\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0006\u0010\u0014\u001a\u00020\fJ\"\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0014J\b\u0010\u001b\u001a\u00020\fH\u0016J\b\u0010\u001c\u001a\u00020\fH\u0016J\u0006\u0010\u001d\u001a\u00020\fJ*\u0010#\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0015H\u0016J*\u0010%\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u0015H\u0016R\u001d\u0010+\u001a\u00020&8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\"\u0010-\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b-\u0010/\"\u0004\b0\u00101R\u001d\u00106\u001a\u0002028F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b3\u0010(\u001a\u0004\b4\u00105R\u001d\u0010;\u001a\u0002078F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b8\u0010(\u001a\u0004\b9\u0010:R\u001d\u0010@\u001a\u00020<8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b=\u0010(\u001a\u0004\b>\u0010?R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u001d\u0010J\u001a\u00020F8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bG\u0010(\u001a\u0004\bH\u0010IR\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\u001d\u0010T\u001a\u00020P8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\bQ\u0010(\u001a\u0004\bR\u0010SR\u001d\u0010Y\u001a\u00020U8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010(\u001a\u0004\bW\u0010X¨\u0006\\"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;", "Lcom/BaseAppCompatActivity;", "Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;", "Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;", "Landroid/view/View$OnClickListener;", "", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "datas", "", CommonService_.b0.f51756b, "", "runIngArchiveId", "", "initData", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/View;", "v", "onClick", "goMyAlbumActivity4PickPic", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "onBackPressed", "finish", "backModGame", "", ai.az, "start", "before", "count", "onTextChanged", "after", "beforeTextChanged", "Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleLoadData$delegate", "Lkotlin/Lazy;", "getViewModleLoadData", "()Lcom/join/kotlin/ui/cloudarchive/CloudShareViewModle;", "viewModleLoadData", "", "isFromGame", "Z", "()Z", "setFromGame", "(Z)V", "Lcom/join/android/app/mgsim/wufun/databinding/n30;", "databinDing$delegate", "getDatabinDing", "()Lcom/join/android/app/mgsim/wufun/databinding/n30;", "databinDing", "Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;", "noticeDialog$delegate", "getNoticeDialog", "()Lcom/join/kotlin/ui/cloudarchive/dialog/NoticeWhiteDialog;", "noticeDialog", "Lcom/join/mgps/dialog/y0;", "dialog$delegate", "getDialog", "()Lcom/join/mgps/dialog/y0;", "dialog", "J", "getRunIngArchiveId", "()J", "setRunIngArchiveId", "(J)V", "Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;", "viewModle$delegate", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveViewModle;", "viewModle", "Ljava/lang/String;", "getImagePath", "()Ljava/lang/String;", "setImagePath", "(Ljava/lang/String;)V", "Lcom/join/mgps/dialog/x0;", "dialogLoding$delegate", "getDialogLoding", "()Lcom/join/mgps/dialog/x0;", "dialogLoding", "Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;", "dialogChoice$delegate", "getDialogChoice", "()Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialog;", "dialogChoice", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ModUploadArchiveActivity extends BaseAppCompatActivity implements TextViewBindingAdapter.OnTextChanged, TextViewBindingAdapter.BeforeTextChanged, View.OnClickListener {
    @NotNull
    private final Lazy databinDing$delegate;
    @NotNull
    private final Lazy dialog$delegate;
    private final Lazy dialogChoice$delegate;
    @NotNull
    private final Lazy dialogLoding$delegate;
    @NotNull
    private String imagePath;
    private boolean isFromGame;
    @NotNull
    private final Lazy noticeDialog$delegate;
    private long runIngArchiveId;
    @NotNull
    private final Lazy viewModle$delegate;
    @NotNull
    private final Lazy viewModleLoadData$delegate;

    public ModUploadArchiveActivity() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        Lazy lazy6;
        Lazy lazy7;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ModUploadArchiveViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ModUploadArchiveViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(ModUploadArchiveActivity.this, new ViewModelProvider.NewInstanceFactory()).get(ModUploadArchiveViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …iveViewModle::class.java)");
                return (ModUploadArchiveViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<n30>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$databinDing$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final n30 invoke() {
                return (n30) DataBindingUtil.setContentView(ModUploadArchiveActivity.this, R.layout.mod_upload_archive_activity);
            }
        });
        this.databinDing$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<y0>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$dialog$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final y0 invoke() {
                return a0.c0(ModUploadArchiveActivity.this).F(ModUploadArchiveActivity.this);
            }
        });
        this.dialog$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<CloudShareViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$viewModleLoadData$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CloudShareViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(ModUploadArchiveActivity.this, new ViewModelProvider.NewInstanceFactory()).get(CloudShareViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …areViewModle::class.java)");
                return (CloudShareViewModle) viewModel;
            }
        });
        this.viewModleLoadData$delegate = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<x0>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$dialogLoding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                return a0.c0(ModUploadArchiveActivity.this).x(ModUploadArchiveActivity.this);
            }
        });
        this.dialogLoding$delegate = lazy5;
        this.imagePath = "";
        lazy6 = LazyKt__LazyJVMKt.lazy(new Function0<ChoiceArchiveDialog>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$dialogChoice$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ChoiceArchiveDialog invoke() {
                return new ChoiceArchiveDialog();
            }
        });
        this.dialogChoice$delegate = lazy6;
        lazy7 = LazyKt__LazyJVMKt.lazy(new Function0<NoticeWhiteDialog>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$noticeDialog$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoticeWhiteDialog invoke() {
                return new NoticeWhiteDialog();
            }
        });
        this.noticeDialog$delegate = lazy7;
    }

    private final ChoiceArchiveDialog getDialogChoice() {
        return (ChoiceArchiveDialog) this.dialogChoice$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011c A[LOOP:0: B:39:0x0116->B:41:0x011c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void initData(java.util.List<com.join.kotlin.ui.cloudarchive.data.ArchiveData> r9, java.lang.String r10, long r11) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity.initData(java.util.List, java.lang.String, long):void");
    }

    public final void backModGame() {
        ModGameArchivePathData modGameArchivePathData;
        CloudShareViewModle viewModleLoadData = getViewModleLoadData();
        String str = (viewModleLoadData == null || (modGameArchivePathData = viewModleLoadData.getModGameArchivePathData()) == null || (str = modGameArchivePathData.getModPackageName()) == null) ? "" : "";
        ArchiveData value = getViewModle().getArchive().getValue();
        e.f52358n.b().S(this, value != null ? value.getUserId() : 0, str);
    }

    @Override // androidx.databinding.adapters.TextViewBindingAdapter.BeforeTextChanged
    public void beforeTextChanged(@Nullable CharSequence charSequence, int i2, int i4, int i5) {
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.isFromGame) {
            backModGame();
        }
        super.finish();
    }

    @NotNull
    public final n30 getDatabinDing() {
        return (n30) this.databinDing$delegate.getValue();
    }

    @NotNull
    public final y0 getDialog() {
        return (y0) this.dialog$delegate.getValue();
    }

    @NotNull
    public final x0 getDialogLoding() {
        return (x0) this.dialogLoding$delegate.getValue();
    }

    @NotNull
    public final String getImagePath() {
        return this.imagePath;
    }

    @NotNull
    public final NoticeWhiteDialog getNoticeDialog() {
        return (NoticeWhiteDialog) this.noticeDialog$delegate.getValue();
    }

    public final long getRunIngArchiveId() {
        return this.runIngArchiveId;
    }

    @NotNull
    public final ModUploadArchiveViewModle getViewModle() {
        return (ModUploadArchiveViewModle) this.viewModle$delegate.getValue();
    }

    @NotNull
    public final CloudShareViewModle getViewModleLoadData() {
        return (CloudShareViewModle) this.viewModleLoadData$delegate.getValue();
    }

    public final void goMyAlbumActivity4PickPic() {
        boolean z3 = false;
        if (ContextCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            UtilsMy.c2(this, "android.permission.WRITE_EXTERNAL_STORAGE");
        } else if (ContextCompat.checkSelfPermission(this, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            UtilsMy.c2(this, "android.permission.READ_EXTERNAL_STORAGE");
        } else {
            z3 = true;
        }
        if (z3) {
            Intent intent = new Intent(this, MyAlbumActivity.class);
            intent.putExtra("MAX_PICK_SIZE", 1);
            startActivityForResult(intent, 256);
        }
    }

    public final boolean isFromGame() {
        return this.isFromGame;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i4, @Nullable Intent intent) {
        Object obj;
        boolean startsWith$default;
        super.onActivityResult(i2, i4, intent);
        if (i2 == 256) {
            Bundle extras = intent != null ? intent.getExtras() : null;
            if (extras == null || (obj = extras.get(MyAlbumActivity.f17332w)) == null) {
                return;
            }
            List list = (List) obj;
            if (!((Collection) obj).isEmpty()) {
                String str = (String) list.get(0);
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "content://", false, 2, null);
                if (startsWith$default) {
                    getViewModle().getImagepath().setValue(str);
                    return;
                }
                MutableLiveData<String> imagepath = getViewModle().getImagepath();
                imagepath.setValue("file://" + str);
            }
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        y1.a.b(getDatabinDing().I);
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        CharSequence trim;
        Integer valueOf = view != null ? Integer.valueOf(view.getId()) : null;
        boolean z3 = true;
        if (valueOf != null && valueOf.intValue() == R.id.archiveLayout) {
            List<ArchiveData> value = getViewModle().getArchiveDatas().getValue();
            Intrinsics.checkNotNull(value);
            if (value.size() > 1) {
                y1.a.b(getDatabinDing().I);
                Bundle bundle = new Bundle();
                bundle.putSerializable("archive", getViewModle().getArchive().getValue());
                List<ArchiveData> value2 = getViewModle().getArchiveDatas().getValue();
                Objects.requireNonNull(value2, "null cannot be cast to non-null type java.io.Serializable");
                bundle.putSerializable("archiveList", (Serializable) value2);
                getDialogChoice().setArguments(bundle);
                getDialogChoice().setItemChoiced(new Function1<ArchiveData, Unit>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$onClick$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ArchiveData archiveData) {
                        invoke2(archiveData);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull ArchiveData it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        ModUploadArchiveActivity.this.getViewModle().getArchive().setValue(it2);
                    }
                });
                if (EXTKt.dialogFragmentCanShow(getDialogChoice())) {
                    ChoiceArchiveDialog dialogChoice = getDialogChoice();
                    FragmentManager supportFragmentManager = getSupportFragmentManager();
                    Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
                    dialogChoice.show(supportFragmentManager, "dialogChoice");
                }
            }
        } else if (valueOf != null && valueOf.intValue() == R.id.back) {
            y1.a.b(getDatabinDing().I);
            finish();
        } else if (valueOf != null && valueOf.intValue() == R.id.choiceIcon) {
            y1.a.b(getDatabinDing().I);
            goMyAlbumActivity4PickPic();
        } else if (valueOf != null && valueOf.intValue() == R.id.clearImage) {
            getViewModle().getImagepath().setValue(null);
        } else if (valueOf != null && valueOf.intValue() == R.id.save) {
            String str = this.isFromGame ? PayCenterOrderRequest.PAY_TYPE_RECHARGE : "1";
            p l4 = p.l(this);
            Event event = Event.clickUpCloudButton;
            Ext ext = new Ext();
            ArchiveData value3 = getViewModle().getArchive().getValue();
            l4.K1(event, ext.setGameId(value3 != null ? value3.getGame_id() : null).setFrom(str));
            MutableLiveData<String> message = getViewModle().getMessage();
            if (message.getValue() != null) {
                String value4 = message.getValue();
                Intrinsics.checkNotNull(value4);
                Intrinsics.checkNotNullExpressionValue(value4, "message.value!!");
                if (!(value4.length() == 0)) {
                    String value5 = message.getValue();
                    Intrinsics.checkNotNull(value5);
                    Intrinsics.checkNotNullExpressionValue(value5, "message.value!!");
                    String str2 = value5;
                    Objects.requireNonNull(str2, "null cannot be cast to non-null type kotlin.CharSequence");
                    trim = StringsKt__StringsKt.trim((CharSequence) str2);
                    if (!(trim.toString().length() == 0)) {
                        String value6 = message.getValue();
                        Intrinsics.checkNotNull(value6);
                        if (value6.length() < 5) {
                            i2.a(this).b("存档描述不能少于5个字");
                            return;
                        } else if (n.f(message.getValue())) {
                            i2.a(this).b("暂不支持输入表情！请去掉表情字符！");
                            return;
                        } else if (IntentUtil.getInstance().goLogin(this)) {
                            CommonExtKt.toast(this, "您还未登录请先登录帐号！");
                            return;
                        } else if (getViewModle().getImagepath().getValue() == null) {
                            getNoticeDialog().setDatas(new DialogData("提示", "您还未添加存档封面", "去相册选择图片", null, true, 8, null));
                            getNoticeDialog().setClickDelDialogListener(new ClickDelDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$onClick$2
                                @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                                public void onClickCancleButn() {
                                }

                                @Override // com.join.kotlin.ui.cloudarchive.dialog.ClickDelDialogListener
                                public void onClickOkButn() {
                                    ModUploadArchiveActivity.this.getNoticeDialog().dismiss();
                                    ModUploadArchiveActivity modUploadArchiveActivity = ModUploadArchiveActivity.this;
                                    modUploadArchiveActivity.onClick(modUploadArchiveActivity.getDatabinDing().G);
                                }
                            });
                            if (EXTKt.dialogFragmentCanShow(getNoticeDialog())) {
                                NoticeWhiteDialog noticeDialog = getNoticeDialog();
                                FragmentManager supportFragmentManager2 = getSupportFragmentManager();
                                Intrinsics.checkNotNullExpressionValue(supportFragmentManager2, "supportFragmentManager");
                                noticeDialog.show(supportFragmentManager2, "noticeDialog");
                            }
                            y1.a.b(getDatabinDing().I);
                            return;
                        } else {
                            getDialog().c();
                            getDialog().b("打包存档中请稍候");
                            y1.a.b(getDatabinDing().I);
                            ArchiveData value7 = getViewModle().getArchive().getValue();
                            String id = value7 != null ? value7.getId() : null;
                            if (id != null && id.length() != 0) {
                                z3 = false;
                            }
                            if (!z3 && !Intrinsics.areEqual(id, "0")) {
                                getViewModle().updateArchiveMessage(this);
                                return;
                            } else {
                                getViewModle().uploadArchive(this);
                                return;
                            }
                        }
                    }
                }
            }
            i2.a(this).b("请输入存档描述");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        boolean z3 = false;
        this.canShowFeedBack = false;
        getDatabinDing().m1(getViewModle());
        getDatabinDing().j1(this);
        getDatabinDing().l1(this);
        getDatabinDing().setLifecycleOwner(this);
        getDatabinDing().k1(this);
        if (getIntent().getSerializableExtra("archives") != null) {
            Intent intent = getIntent();
            getViewModle().getArchiveFileSuffix().setValue(intent.getStringExtra("archiveFileSuffix"));
            Serializable serializableExtra = intent.getSerializableExtra("archives");
            Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type kotlin.collections.MutableList<com.join.kotlin.ui.cloudarchive.data.ArchiveData>");
            List<ArchiveData> asMutableList = TypeIntrinsics.asMutableList(serializableExtra);
            long longExtra = intent.getLongExtra("runIngArchiveId", 0L);
            String stringExtra = intent.getStringExtra(CommonService_.b0.f51756b);
            initData(asMutableList, stringExtra != null ? stringExtra : "", longExtra);
        } else {
            this.isFromGame = true;
            getDialogLoding().b();
            Intent intent2 = getIntent();
            String stringExtra2 = intent2.getStringExtra("uploadGameId");
            String stringExtra3 = intent2.getStringExtra(CommonService_.b0.f51756b);
            this.imagePath = stringExtra3 != null ? stringExtra3 : "";
            this.runIngArchiveId = intent2.getLongExtra("runIngArchiveId", 0L);
            if ((stringExtra2 == null || stringExtra2.length() == 0) ? true : true) {
                finish();
            }
            CloudShareViewModle viewModleLoadData = getViewModleLoadData();
            Intrinsics.checkNotNull(stringExtra2);
            viewModleLoadData.getDetialData(stringExtra2, this);
        }
        getViewModle().getResponseReult().observe(this, new Observer<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$onCreate$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(ResponseModel<?> responseModel) {
                ModUploadArchiveActivity.this.getDialog().dismiss();
                Integer valueOf = responseModel != null ? Integer.valueOf(responseModel.getCode()) : null;
                if (valueOf != null && valueOf.intValue() == 200) {
                    String str = ModUploadArchiveActivity.this.isFromGame() ? PayCenterOrderRequest.PAY_TYPE_RECHARGE : "1";
                    p l4 = p.l(ModUploadArchiveActivity.this);
                    Event event = Event.postArchiveSuccess;
                    Ext ext = new Ext();
                    ArchiveData value = ModUploadArchiveActivity.this.getViewModle().getArchive().getValue();
                    l4.K1(event, ext.setGameId(value != null ? value.getGame_id() : null).setFrom(str));
                    i2.a(ModUploadArchiveActivity.this).b("发布成功！系统自动审核中");
                    ModUploadArchiveActivity.this.finish();
                    return;
                }
                i2.a(ModUploadArchiveActivity.this).b(responseModel != null ? responseModel.getMessage() : null);
            }
        });
        new Timer().schedule(new ModUploadArchiveActivity$onCreate$$inlined$schedule$1(this), 500L);
        getViewModle().getUploadProgress().observe(this, new Observer<Integer>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$onCreate$5
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Integer num) {
                ModUploadArchiveActivity.this.getDialog().b("上传中请稍候");
                ModUploadArchiveActivity.this.getDialog().a(num != null ? num.intValue() : 0);
                if (num != null && num.intValue() == 100) {
                    ModUploadArchiveActivity.this.getDialog().b("正在发布请稍候");
                }
            }
        });
        getViewModleLoadData().getLocalArchiveLists().observe(this, new Observer<List<ArchiveData>>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$onCreate$6
            @Override // androidx.lifecycle.Observer
            public final void onChanged(List<ArchiveData> list) {
                if (!(list == null || list.isEmpty())) {
                    ModUploadArchiveActivity modUploadArchiveActivity = ModUploadArchiveActivity.this;
                    String imagePath = modUploadArchiveActivity.getImagePath();
                    if (imagePath == null) {
                        imagePath = "";
                    }
                    modUploadArchiveActivity.initData(list, imagePath, ModUploadArchiveActivity.this.getRunIngArchiveId());
                } else if (ModUploadArchiveActivity.this.getViewModleLoadData().getInitFinish()) {
                    CommonExtKt.toast(ModUploadArchiveActivity.this, "本地默认存档为空，无法分享");
                    ModUploadArchiveActivity.this.finish();
                }
            }
        });
        getViewModleLoadData().getShowDialog().observe(this, new Observer<Boolean>() { // from class: com.join.kotlin.ui.cloudarchive.ModUploadArchiveActivity$onCreate$7
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Boolean bool) {
                if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                    ModUploadArchiveActivity.this.getDialogLoding().b();
                } else {
                    ModUploadArchiveActivity.this.getDialogLoding().dismiss();
                }
            }
        });
    }

    @Override // androidx.databinding.adapters.TextViewBindingAdapter.OnTextChanged
    public void onTextChanged(@Nullable CharSequence charSequence, int i2, int i4, int i5) {
        getViewModle().getMessage().setValue(String.valueOf(charSequence));
        if (charSequence == null || charSequence.length() <= 60) {
            if (charSequence != null) {
                charSequence.length();
                return;
            }
            return;
        }
        TextInputEditText textInputEditText = getDatabinDing().I;
        Intrinsics.checkNotNullExpressionValue(textInputEditText, "databinDing.message");
        textInputEditText.setError("达到限制字数，无法继续输入");
        getDatabinDing().I.setText(charSequence.toString().subSequence(0, 60));
        TextInputEditText textInputEditText2 = getDatabinDing().I;
        TextInputEditText textInputEditText3 = getDatabinDing().I;
        Intrinsics.checkNotNullExpressionValue(textInputEditText3, "databinDing.message");
        Editable text = textInputEditText3.getText();
        Intrinsics.checkNotNull(text);
        textInputEditText2.setSelection(text.length());
    }

    public final void setFromGame(boolean z3) {
        this.isFromGame = z3;
    }

    public final void setImagePath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imagePath = str;
    }

    public final void setRunIngArchiveId(long j4) {
        this.runIngArchiveId = j4;
    }
}
