package com.join.android.app.common.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.AssetManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import com.MApplication;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.StartGameMeta;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.l1;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u0;
import com.join.mgps.activity.MiniGameLoadingActivity_;
import com.join.mgps.activity.ModGameIndexActivity;
import com.join.mgps.activity.ModGameIndexActivity_;
import com.join.mgps.activity.arena.ArenaGameListActivity_;
import com.join.mgps.customview.t;
import com.join.mgps.db.tables.DownloadHistoryTable;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.z1;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.SingleGameModInfoBean;
import com.join.mgps.dto.TipBean;
import com.join.mgps.dto.TipNew;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.event.l;
import com.join.mgps.mod.bean.ModMeta;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.va.overmind.e;
import com.papa.sim.statistic.Event;
import com.papa91.common.BaseAppConfig;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.Overmind;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import n1.p;
import org.androidannotations.annotations.EBean;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: APKUtils.kt */
@EBean(scope = EBean.Scope.Singleton)
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\t\b\u0017\u0018\u0000 ?2\u00020\u0001:\u0003@ABB\u0007¢\u0006\u0004\b=\u0010>J.\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bH\u0002J/\u0010\u0011\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\f0\u00102\n\u0010\r\u001a\u0006\u0012\u0002\b\u00030\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u000eJ\u0016\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000eJ\"\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000eJ\"\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0017J\u0016\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0004J\u001a\u0010\u001f\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\"\u001a\u00020\n2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010!\u001a\u00020 J\u001a\u0010#\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u001e\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010$\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010!\u001a\u00020 J\u0018\u0010&\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010!\u001a\u0004\u0018\u00010%J$\u0010)\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0013\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010(\u001a\u00020'H\u0007J\u001a\u0010,\u001a\u00060+R\u00020\u00002\u0006\u0010*\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 J\u001a\u0010-\u001a\u00060+R\u00020\u00002\u0006\u0010*\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000eJ\"\u0010/\u001a\u00060+R\u00020\u00002\u0006\u0010*\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020'J\u0018\u00101\u001a\f\u0012\b\u0012\u00060+R\u00020\u0000002\u0006\u0010*\u001a\u00020\u0002J\u0018\u00102\u001a\f\u0012\b\u0012\u00060+R\u00020\u0000002\u0006\u0010*\u001a\u00020\u0002J\u001a\u00104\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\b\u00103\u001a\u0004\u0018\u00010\u000eJ\u0010\u00106\u001a\u00020\n2\b\u00105\u001a\u0004\u0018\u00010 J\"\u00109\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u00107\u001a\u0004\u0018\u00010\u000e2\b\u00108\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010<\u001a\u00020\n2\b\u0010;\u001a\u0004\u0018\u00010:¨\u0006C"}, d2 = {"Lcom/join/android/app/common/utils/APKUtils;", "", "Landroid/content/Context;", "context", "Lcom/join/mgps/Util/StartGameMeta;", TTDownloadField.TT_META, "", "netMode", "Landroid/content/Intent;", "intent", "", "e0", "Ljava/lang/Class;", "cls", "", "mName", "", "q", "(Ljava/lang/Class;Ljava/lang/String;)[Ljava/lang/Class;", "pak", "M", "c0", "packageName", BaseAppConfig.KEY_ACTIVITY_NAME, "N", "startGameMeta", "L", "Q", "Landroid/app/Activity;", TTDownloadField.TT_ACTIVITY, "apkFilePath", "v", "Ljava/io/File;", "apkFile", ai.aE, "y", "x", "Landroid/net/Uri;", "w", "Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;", "type", com.xinzhu.overmind.utils.helpers.d.f64708a, "ctx", "Lcom/join/android/app/common/utils/APKUtils$a;", net.lingala.zip4j.util.e.f73017f0, "k", "pkg", "l", "", "m", "o", "FilePath", ai.av, com.facebook.common.util.f.f11767c, ai.aB, "fileName", "path", com.sdk.a.g.f56552a, "", "signature", "Z", "<init>", "()V", "b", "a", "Companion", "DEVICE_TYPE", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public class APKUtils {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final String f17181a = "APKUtils";
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Companion f17182b = new Companion(null);

    /* compiled from: APKUtils.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bB\u0010CJ \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u001c\u0010\n\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0003J\u0018\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bJ\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0007J&\u0010\u0013\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0007J0\u0010\u0016\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0014\u001a\u00020\u000b2\b\b\u0002\u0010\u0015\u001a\u00020\u000b2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000bH\u0007J\u0018\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J0\u0010\u001d\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J.\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bJ\u001c\u0010 \u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J$\u0010\"\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020\u000eH\u0007J\u0012\u0010#\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010$\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010%\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010&\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010'\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010)\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u00042\u0006\u0010(\u001a\u00020\u000bH\u0007J\u0012\u0010+\u001a\u00020\u000e2\b\u0010*\u001a\u0004\u0018\u00010\u000bH\u0007J\u001a\u0010,\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0007J\u0018\u0010-\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0007J\u0012\u0010.\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u001c\u00101\u001a\u00020\b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u00100\u001a\u00020/H\u0007J\u0012\u00102\u001a\u00020\b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u00103\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u00106\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u00105\u001a\u0004\u0018\u000104H\u0007J \u00109\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\f\u00108\u001a\b\u0012\u0004\u0012\u00020\b07H\u0007J&\u0010<\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010;\u001a\u00020:2\f\u00108\u001a\b\u0012\u0004\u0012\u00020\b07J\u001c\u0010=\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010;\u001a\u0004\u0018\u00010:H\u0007J\u0010\u0010>\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010?\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u0004H\u0007R\u0016\u0010@\u001a\u00020\u000b8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b@\u0010A¨\u0006D"}, d2 = {"Lcom/join/android/app/common/utils/APKUtils$Companion;", "", "Landroid/content/Context;", "context", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "Lcom/join/mgps/mod/bean/ModMeta;", "modMeta", "", "J", "K", "", "packageName", "k", "", "H", "Lcom/join/mgps/dto/ModInfoBean;", "bean", "from", "B", "gameId", "modGameId", "E", "I", ai.aB, "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "archiveData", "fingerSwitch", "introdSwitch", "x", "y", "task", "n", "isLocal", "o", net.lingala.zip4j.util.e.f73017f0, "v", ai.az, ai.aE, "q", "type", "M", "pkgName", "N", "j", ai.av, ai.aF, "", "delay", "h", "f", ai.aD, "Lcom/join/mgps/dto/CommonGameInfoBean;", "infoBean", com.xinzhu.overmind.utils.helpers.d.f64708a, "Lkotlin/Function0;", com.alipay.sdk.authjs.a.f9675i, "e", "Lcom/join/mgps/db/tables/EMUApkTable;", "emuApkTable", "L", "w", "m", "l", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class Companion {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: APKUtils.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Landroid/view/View;", "kotlin.jvm.PlatformType", "it", "", "onClick", "(Landroid/view/View;)V", "<anonymous>"}, k = 3, mv = {1, 4, 2})
        /* loaded from: classes.dex */
        public static final class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ t f17183a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ CheckBox f17184b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ EMUApkTable f17185c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Function0 f17186d;

            a(t tVar, CheckBox checkBox, EMUApkTable eMUApkTable, Function0 function0) {
                this.f17183a = tVar;
                this.f17184b = checkBox;
                this.f17185c = eMUApkTable;
                this.f17186d = function0;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f17183a.dismiss();
                CheckBox checkbox = this.f17184b;
                Intrinsics.checkNotNullExpressionValue(checkbox, "checkbox");
                if (checkbox.isChecked()) {
                    try {
                        EMUApkTable eMUApkTable = this.f17185c;
                        String ver = eMUApkTable.getVer();
                        Intrinsics.checkNotNullExpressionValue(ver, "emuApkTable.ver");
                        Object[] array = new Regex("_").split(ver, 0).toArray(new String[0]);
                        if (array != null) {
                            eMUApkTable.setNotUpdateversion(Integer.parseInt(((String[]) array)[0]));
                            p.o().update(this.f17185c);
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                        }
                    } catch (NumberFormatException e4) {
                        e4.printStackTrace();
                    }
                }
                Function0 function0 = this.f17186d;
                if (function0 != null) {
                    function0.invoke();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: APKUtils.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Landroid/view/View;", "kotlin.jvm.PlatformType", "it", "", "onClick", "(Landroid/view/View;)V", "<anonymous>"}, k = 3, mv = {1, 4, 2})
        /* loaded from: classes.dex */
        public static final class b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ t f17187a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ EMUApkTable f17188b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Context f17189c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ CheckBox f17190d;

            b(t tVar, EMUApkTable eMUApkTable, Context context, CheckBox checkBox) {
                this.f17187a = tVar;
                this.f17188b = eMUApkTable;
                this.f17189c = context;
                this.f17190d = checkBox;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                t tVar = this.f17187a;
                if (tVar != null && tVar.isShowing()) {
                    this.f17187a.dismiss();
                }
                UtilsMy.V0(this.f17188b, this.f17189c);
                CheckBox checkbox = this.f17190d;
                Intrinsics.checkNotNullExpressionValue(checkbox, "checkbox");
                if (checkbox.isChecked()) {
                    try {
                        EMUApkTable eMUApkTable = this.f17188b;
                        String ver = eMUApkTable.getVer();
                        Intrinsics.checkNotNullExpressionValue(ver, "emuApkTable.ver");
                        Object[] array = new Regex("_").split(ver, 0).toArray(new String[0]);
                        if (array != null) {
                            eMUApkTable.setNotUpdateversion(Integer.parseInt(((String[]) array)[0]));
                            p.o().update(this.f17188b);
                            return;
                        }
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    } catch (NumberFormatException e4) {
                        e4.printStackTrace();
                    }
                }
            }
        }

        private Companion() {
        }

        public static /* synthetic */ void F(Companion companion, Context context, ModInfoBean modInfoBean, String str, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                str = "";
            }
            companion.B(context, modInfoBean, str);
        }

        public static /* synthetic */ void G(Companion companion, Context context, String str, String str2, String str3, int i2, Object obj) {
            if ((i2 & 4) != 0) {
                str2 = "";
            }
            if ((i2 & 8) != 0) {
                str3 = "";
            }
            companion.E(context, str, str2, str3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void J(Context context, DownloadTask downloadTask, ModMeta modMeta) {
            int i2;
            try {
                e.a aVar = com.join.mgps.va.overmind.e.f52358n;
                String packageName = downloadTask.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "downloadTask.packageName");
                aVar.h(packageName, downloadTask.getResource_path());
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            com.join.mgps.va.overmind.e.f52358n.b().U(context, modMeta, downloadTask);
            if (r(downloadTask)) {
                i2 = 1;
            } else {
                i2 = v(downloadTask) ? 2 : 0;
            }
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(context);
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
            Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
            l4.d1(crc_link_type_val, instance_.getUid(), i2, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt());
            UtilsMy.y3(context, downloadTask.getCrc_link_type_val());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void K(Context context, DownloadTask downloadTask) {
            if (downloadTask == null || context == null) {
                return;
            }
            downloadTask.setStatus(5);
            if (downloadTask.getRomType() != null && (!Intrinsics.areEqual(downloadTask.getFileType(), Dtype.chajian.name()))) {
                DownloadHistoryTable p3 = n1.k.n().p(downloadTask.getCrc_link_type_val());
                if (p3 != null) {
                    p3.setCreate_time(System.currentTimeMillis());
                } else {
                    p3 = new DownloadHistoryTable();
                    p3.setCrc_link_type_val(downloadTask.getCrc_link_type_val());
                    p3.setCreate_time(System.currentTimeMillis());
                }
                n1.k.n().m(p3);
                UtilsMy.b2(context, downloadTask.getCrc_link_type_val());
                new PrefDef_(context).lastInstallApp().g("");
            } else {
                try {
                    com.join.android.app.common.utils.a g02 = com.join.android.app.common.utils.a.g0(context);
                    String packageName = downloadTask.getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName, "downloadTask.packageName");
                    a k4 = g02.k(context, packageName);
                    if (k4 != null) {
                        downloadTask.setVer(String.valueOf(k4.d()) + "");
                        downloadTask.setVer_name(k4.e());
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            try {
                DownloadTask f4 = com.join.android.app.common.servcie.a.e().f(downloadTask.getCrc_link_type_val());
                if (f4 != null) {
                    f4.setStatus(5);
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            g1.f.G().f0(downloadTask, downloadTask.getStatus());
            downloadTask.setStatus(5);
            com.join.android.app.common.servcie.b.b(context, downloadTask, Event.installAndroidCompleted);
            org.greenrobot.eventbus.c.f().o(new l(downloadTask, 5));
            try {
                File file = new File(downloadTask.getPath());
                if (file.exists()) {
                    UtilsMy.delete(file);
                }
            } catch (Exception e6) {
                e6.printStackTrace();
            }
        }

        public static /* synthetic */ void i(Companion companion, DownloadTask downloadTask, long j4, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                j4 = 86400000;
            }
            companion.h(downloadTask, j4);
        }

        @JvmStatic
        @JvmOverloads
        public final void A(@Nullable Context context, @NotNull ModInfoBean modInfoBean) {
            F(this, context, modInfoBean, null, 4, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void B(@Nullable Context context, @NotNull ModInfoBean bean, @Nullable String str) {
            Intrinsics.checkNotNullParameter(bean, "bean");
            ModGameIndexActivity_.H2(context).b(bean.getMod_game_id()).a(str).c(bean.getMain_game_id()).start();
            if (context instanceof ModGameIndexActivity_) {
                ((ModGameIndexActivity_) context).finish();
            }
        }

        @JvmStatic
        @JvmOverloads
        public final void C(@Nullable Context context, @NotNull String str) {
            G(this, context, str, null, null, 12, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void D(@Nullable Context context, @NotNull String str, @NotNull String str2) {
            G(this, context, str, str2, null, 8, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void E(@Nullable Context context, @NotNull String gameId, @NotNull String modGameId, @Nullable String str) {
            Intrinsics.checkNotNullParameter(gameId, "gameId");
            Intrinsics.checkNotNullParameter(modGameId, "modGameId");
            ModGameIndexActivity_.H2(context).b(modGameId).a(str).c(gameId).start();
            if (context instanceof ModGameIndexActivity_) {
                ((ModGameIndexActivity_) context).finish();
            }
        }

        @JvmStatic
        public final boolean H(@NotNull Context context, @NotNull String packageName) {
            Intent intent;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            PackageManager packageManager = context.getPackageManager();
            try {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(packageName);
                if (launchIntentForPackage != null) {
                    context.startActivity(launchIntentForPackage);
                    return true;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            String str = null;
            try {
                intent = new Intent("android.intent.action.MAIN");
                intent.setPackage(packageName);
                List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 1);
                Intrinsics.checkNotNullExpressionValue(queryIntentActivities, "pkgMag.queryIntentActivi…IVITIES\n                )");
                int size = queryIntentActivities.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    ResolveInfo resolveInfo = queryIntentActivities.get(i2);
                    if (Intrinsics.areEqual(resolveInfo.activityInfo.packageName, packageName)) {
                        str = resolveInfo.activityInfo.name;
                        break;
                    }
                    i2++;
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Intrinsics.checkNotNull(str);
            intent.setComponent(new ComponentName(packageName, str));
            context.startActivity(intent);
            return true;
        }

        @JvmStatic
        public final void I(@NotNull final Context context, @NotNull final DownloadTask downloadTask) {
            SingleGameModInfoBean singleGameModInfoBean;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
            final ModMeta modMeta = new ModMeta();
            modMeta.setPackageName(downloadTask.getPackageName());
            modMeta.setModPath(downloadTask.getResource_path());
            if (u(downloadTask) && (singleGameModInfoBean = downloadTask.getSingleGameModInfoBean()) != null) {
                modMeta.setModVersion(String.valueOf(singleGameModInfoBean.getVersion().intValue()) + "");
                Integer version = singleGameModInfoBean.getVersion();
                Intrinsics.checkNotNullExpressionValue(version, "singleGameModInfoBean.version");
                modMeta.setModCode(version.intValue());
            }
            modMeta.setGameId(downloadTask.getCrc_link_type_val());
            modMeta.setModType(1);
            if (com.join.mgps.va.overmind.e.f52358n.b().M(downloadTask.getPackageName())) {
                MApplication mApplication = MApplication.f9223q;
                Intrinsics.checkNotNullExpressionValue(mApplication, "MApplication.instance");
                Activity activity = mApplication.getActivity();
                Intrinsics.checkNotNullExpressionValue(activity, "MApplication.instance.activity");
                if (c(activity, downloadTask) || e(activity, new Function0<Unit>() { // from class: com.join.android.app.common.utils.APKUtils$Companion$openVmApp$1
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
                        APKUtils.f17182b.J(context, downloadTask, modMeta);
                    }
                })) {
                    return;
                }
            }
            J(context, downloadTask, modMeta);
        }

        public final void L(@Nullable Context context, @NotNull EMUApkTable emuApkTable, @NotNull Function0<Unit> callback) {
            Intrinsics.checkNotNullParameter(emuApkTable, "emuApkTable");
            Intrinsics.checkNotNullParameter(callback, "callback");
            MApplication mApplication = MApplication.f9223q;
            Intrinsics.checkNotNullExpressionValue(mApplication, "MApplication.instance");
            Activity activity = mApplication.getActivity();
            if (activity == null) {
                activity = context;
            }
            t tVar = new t(activity, R.style.MyDialog);
            tVar.setContentView(R.layout.plug_update_dialog_layout);
            TextView titleT = (TextView) tVar.findViewById(R.id.title);
            TextView contentT = (TextView) tVar.findViewById(R.id.content);
            CheckBox checkBox = (CheckBox) tVar.findViewById(R.id.checkbox);
            Intrinsics.checkNotNullExpressionValue(titleT, "titleT");
            titleT.setText(emuApkTable.getApk_name());
            Intrinsics.checkNotNullExpressionValue(contentT, "contentT");
            contentT.setText(Html.fromHtml(emuApkTable.getVer_info()));
            View findViewById = tVar.findViewById(R.id.dialog_button_ok);
            Objects.requireNonNull(findViewById, "null cannot be cast to non-null type android.widget.Button");
            View findViewById2 = tVar.findViewById(R.id.dialog_button_cancle);
            Objects.requireNonNull(findViewById2, "null cannot be cast to non-null type android.widget.Button");
            ((Button) findViewById2).setOnClickListener(new a(tVar, checkBox, emuApkTable, callback));
            ((Button) findViewById).setOnClickListener(new b(tVar, emuApkTable, context, checkBox));
            tVar.setCancelable(true);
            tVar.show();
        }

        @JvmStatic
        public final boolean M(@Nullable DownloadTask downloadTask, @NotNull String type) {
            Intrinsics.checkNotNullParameter(type, "type");
            boolean z3 = false;
            if (downloadTask != null && !d2.h(type)) {
                Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
                while (it2.hasNext()) {
                    TipBean t3 = it2.next();
                    Intrinsics.checkNotNullExpressionValue(t3, "t");
                    if (Intrinsics.areEqual(type, t3.getId())) {
                        z3 = true;
                    }
                }
            }
            return z3;
        }

        @JvmStatic
        public final boolean N(@Nullable String str) {
            return true;
        }

        @JvmStatic
        public final boolean c(@Nullable Context context, @Nullable DownloadTask downloadTask) {
            EMUApkTable n4;
            if (context == null) {
                MApplication mApplication = MApplication.f9223q;
                Intrinsics.checkNotNullExpressionValue(mApplication, "MApplication.instance");
                context = mApplication.getActivity();
            }
            if (!com.join.mgps.va.overmind.e.f52358n.e()) {
                p o3 = p.o();
                n4 = o3.n(String.valueOf(ConstantIntEnum.VA64.value()) + "");
            } else {
                p o4 = p.o();
                n4 = o4.n(String.valueOf(ConstantIntEnum.VA32.value()) + "");
            }
            if (!Overmind.isPluginPkgInstalled() || w(context, n4)) {
                if (n4 == null || context == null) {
                    return true;
                }
                new z1(context).a(downloadTask, n4);
                return true;
            }
            return false;
        }

        @JvmStatic
        public final boolean d(@Nullable Context context, @Nullable CommonGameInfoBean commonGameInfoBean) {
            EMUApkTable n4;
            if (context == null) {
                MApplication mApplication = MApplication.f9223q;
                Intrinsics.checkNotNullExpressionValue(mApplication, "MApplication.instance");
                context = mApplication.getActivity();
            }
            if (!com.join.mgps.va.overmind.e.f52358n.e()) {
                p o3 = p.o();
                n4 = o3.n(String.valueOf(ConstantIntEnum.VA64.value()) + "");
            } else {
                p o4 = p.o();
                n4 = o4.n(String.valueOf(ConstantIntEnum.VA32.value()) + "");
            }
            if (!Overmind.isPluginPkgInstalled() || w(context, n4)) {
                if (n4 == null || context == null) {
                    return true;
                }
                new z1(context).b(commonGameInfoBean, n4);
                return true;
            }
            return false;
        }

        @JvmStatic
        public final boolean e(@Nullable Context context, @NotNull Function0<Unit> callback) {
            EMUApkTable emuApkTable;
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (!com.join.mgps.va.overmind.e.f52358n.e()) {
                p o3 = p.o();
                emuApkTable = o3.n(String.valueOf(ConstantIntEnum.VA64.value()) + "");
            } else {
                p o4 = p.o();
                emuApkTable = o4.n(String.valueOf(ConstantIntEnum.VA32.value()) + "");
            }
            if (UtilsMy.q0(context, emuApkTable)) {
                UtilsMy.V0(emuApkTable, context);
                return true;
            }
            Intrinsics.checkNotNullExpressionValue(emuApkTable, "emuApkTable");
            if (emuApkTable.isCanUpdate()) {
                L(context, emuApkTable, callback);
                return true;
            }
            return false;
        }

        @JvmStatic
        public final void f(@Nullable DownloadTask downloadTask) {
            boolean z3;
            if (downloadTask != null) {
                try {
                    boolean z4 = true;
                    boolean z5 = false;
                    if (downloadTask.isMod()) {
                        ModInfoBean modInfoBean = downloadTask.getModInfoBean();
                        if (modInfoBean != null && d2.i(modInfoBean.getCompatible_version()) && d2.i(modInfoBean.getCompatible_version())) {
                            String compatible_version = modInfoBean.getCompatible_version();
                            Intrinsics.checkNotNullExpressionValue(compatible_version, "modInfoBean.compatible_version");
                            Object[] array = StringsKt.split$default((CharSequence) compatible_version, new String[]{","}, false, 0, 6, (Object) null).toArray(new String[0]);
                            if (array != null) {
                                for (String str : (String[]) array) {
                                    if (Intrinsics.areEqual(str, modInfoBean.getMain_game_ver())) {
                                        z3 = true;
                                        break;
                                    }
                                }
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                            }
                        }
                        z3 = false;
                        Iterator<TipBean> it2 = downloadTask.getTipBeans().iterator();
                        while (it2.hasNext()) {
                            TipBean tipBean2 = it2.next();
                            Intrinsics.checkNotNullExpressionValue(tipBean2, "tipBean2");
                            if (!Intrinsics.areEqual(tipBean2.getId(), String.valueOf(ConstantIntEnum.DATA.value()) + "")) {
                                if (!Intrinsics.areEqual(tipBean2.getId(), String.valueOf(ConstantIntEnum.OBB.value()) + "")) {
                                    if (Intrinsics.areEqual(tipBean2.getId(), String.valueOf(ConstantIntEnum.OBBDATA.value()) + "")) {
                                    }
                                }
                            }
                            z5 = true;
                        }
                        z4 = z3;
                    } else if (!v(downloadTask)) {
                        z4 = false;
                    }
                    if (d2.i(downloadTask.getPath())) {
                        File file = new File(downloadTask.getPath());
                        if ((file.exists() && !z4) || (z5 && Build.VERSION.SDK_INT >= 30)) {
                            UtilsMy.delete(file);
                        }
                    }
                    if (d2.i(downloadTask.getGameZipPath())) {
                        File file2 = new File(downloadTask.getGameZipPath());
                        if ((!file2.exists() || z4) && (!z5 || Build.VERSION.SDK_INT < 30)) {
                            return;
                        }
                        UtilsMy.delete(file2);
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }

        @JvmStatic
        @JvmOverloads
        public final void g(@Nullable DownloadTask downloadTask) {
            i(this, downloadTask, 0L, 2, null);
        }

        @JvmStatic
        @JvmOverloads
        public final void h(@Nullable DownloadTask downloadTask, long j4) {
            if (downloadTask == null || System.currentTimeMillis() - downloadTask.getFinishTime() < j4) {
                return;
            }
            if (d2.i(downloadTask.getPath())) {
                File file = new File(downloadTask.getPath());
                if (file.exists()) {
                    UtilsMy.delete(file);
                }
            }
            if (d2.i(downloadTask.getGameZipPath())) {
                File file2 = new File(downloadTask.getGameZipPath());
                if (file2.exists()) {
                    UtilsMy.delete(file2);
                }
            }
        }

        @JvmStatic
        @Nullable
        public final String j(@NotNull Context context, @NotNull String packageName) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(64);
            Intrinsics.checkNotNullExpressionValue(installedPackages, "pm\n                .getI…geManager.GET_SIGNATURES)");
            for (PackageInfo packageInfo : installedPackages) {
                if (Intrinsics.areEqual(packageInfo.packageName, packageName)) {
                    return packageInfo.signatures[0].toCharsString();
                }
            }
            return null;
        }

        @Nullable
        public final Context k(@NotNull Context context, @NotNull String packageName) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            if (Intrinsics.areEqual(context.getPackageName(), packageName)) {
                return context;
            }
            try {
                return context.createPackageContext(packageName, 3);
            } catch (PackageManager.NameNotFoundException e4) {
                e4.printStackTrace();
                return null;
            }
        }

        @JvmStatic
        public final void l(@NotNull Context context, @NotNull DownloadTask task) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(task, "task");
            if (APKUtils.e(com.join.android.app.common.utils.a.g0(context), context, task.getPackageName(), null, 4, null)) {
                String packageName = task.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "task.packageName");
                H(context, packageName);
                UtilsMy.y3(context, task.getCrc_link_type_val());
                return;
            }
            File file = new File(task.getPath());
            PrefDef_ prefDef_ = new PrefDef_(context);
            if (d2.i(prefDef_.lastLaunchModGameId().d()) && prefDef_.lastLaunchModGameId().d().equals(task.getCrc_link_type_val())) {
                prefDef_.lastLaunchModGameId().g("");
            }
            com.join.mgps.va.overmind.e.f52358n.b().j0(task.getPackageName());
            if (d2.i(task.getPackageName())) {
                com.join.mgps.va.overmind.f fVar = com.join.mgps.va.overmind.f.f52369d;
                String packageName2 = task.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName2, "task.packageName");
                UtilsMy.delete(new File(fVar.M(packageName2)));
            }
            if (d2.i(task.getPackageName())) {
                com.join.mgps.va.overmind.f fVar2 = com.join.mgps.va.overmind.f.f52369d;
                String packageName3 = task.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName3, "task.packageName");
                UtilsMy.delete(new File(com.join.mgps.va.overmind.f.x(fVar2, packageName3, 0, 2, null)));
            }
            if (d2.i(task.getResource_path())) {
                File file2 = new File(task.getResource_path());
                File parentFile = file2.getParentFile();
                Intrinsics.checkNotNullExpressionValue(parentFile, "modFile.parentFile");
                String absolutePath = parentFile.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(absolutePath, "modFile.parentFile.absolutePath");
                String packageName4 = task.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName4, "task.packageName");
                if (StringsKt.endsWith$default(absolutePath, packageName4, false, 2, (Object) null)) {
                    UtilsMy.delete(file2.getParentFile());
                } else {
                    UtilsMy.delete(file2);
                }
            }
            task.setStatus(11);
            task.setInstall_type(DEVICE_TYPE.REAL.value());
            g1.f.G().m(task);
            org.greenrobot.eventbus.c.f().o(new l(task, 11));
            if (file.exists()) {
                if (Build.VERSION.SDK_INT < 30 && (Intrinsics.areEqual(task.getRomType(), Dtype.androidobb.name()) || Intrinsics.areEqual(task.getRomType(), Dtype.androiddata.name()) || Intrinsics.areEqual(task.getRomType(), Dtype.androidobbdata.name()))) {
                    com.join.android.app.common.servcie.a.e().r(context, task, false);
                } else {
                    com.join.android.app.common.utils.a.g0(context).x(context, file);
                }
            } else if (UtilsMy.T0(context, task)) {
            } else {
                if (task.getDown_status() == 5) {
                    UtilsMy.R0(context, task);
                } else {
                    com.php25.PDownload.d.c(task, context);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
        @kotlin.jvm.JvmStatic
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m(@org.jetbrains.annotations.NotNull android.content.Context r7) {
            /*
                r6 = this;
                java.lang.String r0 = "context"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
                com.xinzhu.overmind.Overmind r0 = com.xinzhu.overmind.Overmind.get()
                r1 = 0
                java.util.List r0 = r0.getInstalledPackages(r1, r1)
                java.util.Iterator r0 = r0.iterator()
            L12:
                boolean r1 = r0.hasNext()
                if (r1 == 0) goto L6a
                java.lang.Object r1 = r0.next()
                android.content.pm.PackageInfo r1 = (android.content.pm.PackageInfo) r1
                java.lang.String r1 = r1.packageName
                com.xinzhu.overmind.client.frameworks.f r2 = com.xinzhu.overmind.Overmind.getMindPackageManager()
                com.xinzhu.overmind.server.pm.MindPackageSettings r2 = r2.k(r1)
                if (r2 == 0) goto L31
                boolean r2 = r2.k()
                if (r2 != 0) goto L31
                goto L12
            L31:
                r2 = 0
                g1.f r3 = g1.f.G()
                java.util.List r1 = r3.D(r1)
                if (r1 == 0) goto L5b
                java.util.Iterator r1 = r1.iterator()
            L40:
                boolean r3 = r1.hasNext()
                if (r3 == 0) goto L5b
                java.lang.Object r3 = r1.next()
                com.github.snowdream.android.app.downloader.DownloadTask r3 = (com.github.snowdream.android.app.downloader.DownloadTask) r3
                com.join.android.app.common.utils.APKUtils$Companion r4 = com.join.android.app.common.utils.APKUtils.f17182b
                boolean r5 = r4.r(r3)
                if (r5 != 0) goto L5a
                boolean r4 = r4.v(r3)
                if (r4 == 0) goto L40
            L5a:
                r2 = r3
            L5b:
                if (r2 == 0) goto L12
                int r1 = r2.getStatus()
                r3 = 48
                if (r1 != r3) goto L66
                return
            L66:
                com.join.mgps.Util.UtilsMy.D0(r7, r2)
                goto L12
            L6a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.utils.APKUtils.Companion.m(android.content.Context):void");
        }

        @JvmStatic
        public final void n(@Nullable Context context, @Nullable DownloadTask downloadTask) {
            Intrinsics.checkNotNull(downloadTask);
            if (downloadTask.getTask_down_type() != 0 && downloadTask.getTask_down_type() != 2 && !v(downloadTask)) {
                if (downloadTask.getTask_down_type() == 1) {
                    downloadTask.setStatus(5);
                    g1.f.G().f0(downloadTask, downloadTask.getStatus());
                    K(context, downloadTask);
                    return;
                } else if (downloadTask.getTask_down_type() == 3) {
                    o(context, downloadTask, true);
                    return;
                } else {
                    return;
                }
            }
            o(context, downloadTask, false);
        }

        @JvmStatic
        public final void o(@Nullable Context context, @Nullable DownloadTask downloadTask, boolean z3) {
            if (downloadTask != null) {
                com.join.mgps.mod.utils.a.a().b(context, downloadTask, z3);
            }
        }

        @JvmStatic
        public final boolean p(@NotNull Context context, @NotNull String packageName) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Object systemService = context.getSystemService(TTDownloadField.TT_ACTIVITY);
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) systemService).getRunningTasks(150);
            if (runningTasks.size() <= 0) {
                return false;
            }
            for (ActivityManager.RunningTaskInfo runningTaskInfo : runningTasks) {
                ComponentName componentName = runningTaskInfo.baseActivity;
                Intrinsics.checkNotNull(componentName);
                Intrinsics.checkNotNullExpressionValue(componentName, "info.baseActivity!!");
                if (Intrinsics.areEqual(componentName.getPackageName(), packageName)) {
                    return true;
                }
            }
            return false;
        }

        @JvmStatic
        public final boolean q(@Nullable DownloadTask downloadTask) {
            return downloadTask != null && downloadTask.isMiniGame();
        }

        @JvmStatic
        public final boolean r(@Nullable DownloadTask downloadTask) {
            ModInfoBean modInfoBean;
            if (downloadTask == null || !d2.i(downloadTask.getMod_info()) || (modInfoBean = (ModInfoBean) JsonMapper.getInstance().fromJson(downloadTask.getMod_info(), ModInfoBean.class)) == null) {
                return false;
            }
            return Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), modInfoBean.getMod_game_id());
        }

        @JvmStatic
        public final boolean s(@Nullable DownloadTask downloadTask) {
            if (downloadTask != null && downloadTask.getSp_tag_info() != null) {
                TipNew sp_tag_info = downloadTask.getSp_tag_info();
                Intrinsics.checkNotNullExpressionValue(sp_tag_info, "task.sp_tag_info");
                if (sp_tag_info.getNet_game_vm() != null) {
                    TipNew sp_tag_info2 = downloadTask.getSp_tag_info();
                    Intrinsics.checkNotNullExpressionValue(sp_tag_info2, "task.sp_tag_info");
                    TipBean net_game_vm = sp_tag_info2.getNet_game_vm();
                    Intrinsics.checkNotNullExpressionValue(net_game_vm, "task.sp_tag_info.net_game_vm");
                    if (Intrinsics.areEqual("157", net_game_vm.getId()) && downloadTask.getInstall_type() != DEVICE_TYPE.REAL.value()) {
                        return true;
                    }
                }
            }
            return false;
        }

        @JvmStatic
        @Nullable
        public final String t(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            List<PackageInfo> installedPackages = context.getPackageManager().getInstalledPackages(0);
            Intrinsics.checkNotNullExpressionValue(installedPackages, "packageManager.getInstalledPackages(0)");
            if (installedPackages != null) {
                int size = installedPackages.size();
                for (int i2 = 0; i2 < size; i2++) {
                    String str = installedPackages.get(i2).packageName;
                    if (StringsKt.equals(str, "com.tencent.qqlite", true)) {
                        return "com.tencent.qqlite";
                    }
                    if (StringsKt.equals(str, "com.tencent.mobileqq", true)) {
                        return "com.tencent.mobileqq";
                    }
                }
                return null;
            }
            return null;
        }

        @JvmStatic
        public final boolean u(@Nullable DownloadTask downloadTask) {
            if (downloadTask != null && downloadTask.getSp_tag_info() != null) {
                TipNew sp_tag_info = downloadTask.getSp_tag_info();
                Intrinsics.checkNotNullExpressionValue(sp_tag_info, "task.sp_tag_info");
                if (sp_tag_info.getSingle_game_vm() != null) {
                    TipNew sp_tag_info2 = downloadTask.getSp_tag_info();
                    Intrinsics.checkNotNullExpressionValue(sp_tag_info2, "task.sp_tag_info");
                    TipBean single_game_vm = sp_tag_info2.getSingle_game_vm();
                    Intrinsics.checkNotNullExpressionValue(single_game_vm, "task.sp_tag_info.single_game_vm");
                    if (Intrinsics.areEqual("163", single_game_vm.getId()) && downloadTask.getInstall_type() != DEVICE_TYPE.REAL.value()) {
                        return true;
                    }
                }
            }
            return false;
        }

        @JvmStatic
        public final boolean v(@Nullable DownloadTask downloadTask) {
            return s(downloadTask) || u(downloadTask) || (u(downloadTask) && q(downloadTask));
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x001a A[Catch: Exception -> 0x0015, TryCatch #0 {Exception -> 0x0015, blocks: (B:6:0x0006, B:8:0x000c, B:13:0x001a, B:15:0x001e, B:17:0x002e, B:19:0x0036, B:21:0x003c), top: B:26:0x0006 }] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x001e A[Catch: Exception -> 0x0015, TryCatch #0 {Exception -> 0x0015, blocks: (B:6:0x0006, B:8:0x000c, B:13:0x001a, B:15:0x001e, B:17:0x002e, B:19:0x0036, B:21:0x003c), top: B:26:0x0006 }] */
        /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
        @kotlin.jvm.JvmStatic
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean w(@org.jetbrains.annotations.Nullable android.content.Context r3, @org.jetbrains.annotations.Nullable com.join.mgps.db.tables.EMUApkTable r4) {
            /*
                r2 = this;
                r0 = 0
                if (r4 == 0) goto L49
                r1 = 0
                if (r3 == 0) goto L17
                android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: java.lang.Exception -> L15
                if (r3 == 0) goto L17
                java.lang.String r4 = r4.getPackage_name()     // Catch: java.lang.Exception -> L15
                android.content.pm.PackageInfo r3 = r3.getPackageInfo(r4, r0)     // Catch: java.lang.Exception -> L15
                goto L18
            L15:
                r3 = move-exception
                goto L46
            L17:
                r3 = r1
            L18:
                if (r3 == 0) goto L1c
                android.content.pm.ApplicationInfo r1 = r3.applicationInfo     // Catch: java.lang.Exception -> L15
            L1c:
                if (r1 == 0) goto L49
                com.join.mgps.va.overmind.c$a r4 = com.join.mgps.va.overmind.c.f52341a     // Catch: java.lang.Exception -> L15
                android.content.pm.ApplicationInfo r3 = r3.applicationInfo     // Catch: java.lang.Exception -> L15
                java.lang.String r3 = r3.sourceDir     // Catch: java.lang.Exception -> L15
                java.util.Set r3 = r4.d(r3)     // Catch: java.lang.Exception -> L15
                boolean r1 = r4.a(r3)     // Catch: java.lang.Exception -> L15
                if (r1 == 0) goto L36
                com.join.mgps.va.overmind.e$a r1 = com.join.mgps.va.overmind.e.f52358n     // Catch: java.lang.Exception -> L15
                boolean r1 = r1.e()     // Catch: java.lang.Exception -> L15
                if (r1 == 0) goto L44
            L36:
                boolean r3 = r4.b(r3)     // Catch: java.lang.Exception -> L15
                if (r3 == 0) goto L49
                com.join.mgps.va.overmind.e$a r3 = com.join.mgps.va.overmind.e.f52358n     // Catch: java.lang.Exception -> L15
                boolean r3 = r3.e()     // Catch: java.lang.Exception -> L15
                if (r3 == 0) goto L49
            L44:
                r0 = 1
                goto L49
            L46:
                r3.getLocalizedMessage()
            L49:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.utils.APKUtils.Companion.w(android.content.Context, com.join.mgps.db.tables.EMUApkTable):boolean");
        }

        @JvmStatic
        public final void x(@NotNull final Context context, @NotNull final ArchiveData archiveData, @NotNull final String fingerSwitch, @NotNull final String introdSwitch, @NotNull final DownloadTask downloadTask) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(archiveData, "archiveData");
            Intrinsics.checkNotNullParameter(fingerSwitch, "fingerSwitch");
            Intrinsics.checkNotNullParameter(introdSwitch, "introdSwitch");
            Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
            if (com.join.mgps.va.overmind.e.f52358n.b().M(downloadTask.getPackageName()) && (c(context, downloadTask) || e(context, new Function0<Unit>() { // from class: com.join.android.app.common.utils.APKUtils$Companion$openCloudVmApp$1
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
                    APKUtils.f17182b.y(context, archiveData, downloadTask, fingerSwitch, introdSwitch);
                }
            }))) {
                return;
            }
            y(context, archiveData, downloadTask, fingerSwitch, introdSwitch);
        }

        public final void y(@NotNull Context context, @NotNull ArchiveData archiveData, @NotNull DownloadTask downloadTask, @NotNull String fingerSwitch, @NotNull String introdSwitch) {
            int i2;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(archiveData, "archiveData");
            Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
            Intrinsics.checkNotNullParameter(fingerSwitch, "fingerSwitch");
            Intrinsics.checkNotNullParameter(introdSwitch, "introdSwitch");
            e.a aVar = com.join.mgps.va.overmind.e.f52358n;
            com.join.mgps.va.overmind.e b4 = aVar.b();
            String packageName = archiveData.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "archiveData.packageName");
            String mainArchiveLocalPath = archiveData.getMainArchiveLocalPath();
            Intrinsics.checkNotNullExpressionValue(mainArchiveLocalPath, "archiveData.mainArchiveLocalPath");
            String mainArchiveLocalPath2 = archiveData.getMainArchiveLocalPath2();
            String id = archiveData.getId();
            Intrinsics.checkNotNullExpressionValue(id, "archiveData.id");
            b4.y(packageName, mainArchiveLocalPath, mainArchiveLocalPath2, id);
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    String packageName2 = downloadTask.getPackageName();
                    Intrinsics.checkNotNullExpressionValue(packageName2, "downloadTask.getPackageName()");
                    aVar.h(packageName2, downloadTask.getResource_path());
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            ModMeta modMeta = new ModMeta();
            if (r(downloadTask)) {
                ModInfoBean modInfoBean = downloadTask.getModInfoBean();
                if (modInfoBean != null) {
                    int ver = modInfoBean.getVer();
                    modMeta.setModVersion(String.valueOf(ver));
                    modMeta.setModCode(ver);
                }
                i2 = 1;
            } else if (v(downloadTask)) {
                SingleGameModInfoBean singleGameModInfoBean = downloadTask.getSingleGameModInfoBean();
                if (singleGameModInfoBean != null) {
                    Integer version = singleGameModInfoBean.getVersion();
                    Intrinsics.checkNotNullExpressionValue(version, "modInfo.version");
                    int intValue = version.intValue();
                    modMeta.setModVersion(String.valueOf(intValue));
                    modMeta.setModCode(intValue);
                }
                i2 = 2;
            } else {
                i2 = 0;
            }
            modMeta.setPackageName(downloadTask.getPackageName());
            modMeta.setModPath(downloadTask.getResource_path());
            modMeta.setGameId(downloadTask.getCrc_link_type_val());
            modMeta.setGoldFingerSwitch(fingerSwitch);
            modMeta.setIntroductionSwitch(introdSwitch);
            modMeta.setArchiveCloudSwitch("1");
            com.join.mgps.va.overmind.e.f52358n.b().T(context, modMeta, archiveData.getUserId(), downloadTask.getMod_info());
            com.papa.sim.statistic.p l4 = com.papa.sim.statistic.p.l(context);
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
            Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
            l4.d1(crc_link_type_val, instance_.getUid(), i2, downloadTask.get_from(), downloadTask.get_from_type(), downloadTask.getExt());
            UtilsMy.y3(context, downloadTask.getCrc_link_type_val());
            if (downloadTask.getModInfoBean() != null) {
                ModInfoBean modInfoBean2 = downloadTask.getModInfoBean();
                Intrinsics.checkNotNullExpressionValue(modInfoBean2, "downloadTask.modInfoBean");
                UtilsMy.y3(context, modInfoBean2.getMain_game_id());
            }
        }

        @JvmStatic
        public final void z(@NotNull Context context, @NotNull DownloadTask downloadTask) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
            if (downloadTask.isMiniGame()) {
                ((MiniGameLoadingActivity_.c) MiniGameLoadingActivity_.J0(context).flags(268435456)).a(downloadTask.getCrc_link_type_val()).start();
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: APKUtils.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\b\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;", "", "", "value", "", "desc", "mDesc", "Ljava/lang/String;", ArenaGameListActivity_.A, "I", "<init>", "(Ljava/lang/String;IILjava/lang/String;)V", "ALL", "REAL", "VM", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public enum DEVICE_TYPE {
        ALL(0, "全类型"),
        REAL(1, "真机"),
        VM(2, "虚拟机");
        
        private final String mDesc;
        private final int mType;

        DEVICE_TYPE(int i2, String str) {
            this.mType = i2;
            this.mDesc = str;
        }

        @NotNull
        public final String desc() {
            return this.mDesc;
        }

        public final int value() {
            return this.mType;
        }
    }

    /* compiled from: APKUtils.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\u0010\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0017\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0003\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u001a\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0013\u001a\u0004\b\u0018\u0010\u0014\"\u0004\b\u0019\u0010\u0016R$\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014\"\u0004\b\u001b\u0010\u0016¨\u0006\u001f"}, d2 = {"com/join/android/app/common/utils/APKUtils$a", "", "Landroid/graphics/drawable/Drawable;", "e", "Landroid/graphics/drawable/Drawable;", "b", "()Landroid/graphics/drawable/Drawable;", com.sdk.a.g.f56552a, "(Landroid/graphics/drawable/Drawable;)V", "icon", "", "I", com.xinzhu.overmind.utils.helpers.d.f64708a, "()I", ai.aA, "(I)V", "versionCode", "", "a", "Ljava/lang/String;", "()Ljava/lang/String;", "j", "(Ljava/lang/String;)V", "versionName", ai.aD, "h", "packageName", "f", "appName", "<init>", "(Lcom/join/android/app/common/utils/APKUtils;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private String f17199a;

        /* renamed from: b  reason: collision with root package name */
        private int f17200b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f17201c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private String f17202d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private Drawable f17203e;

        public a() {
        }

        @Nullable
        public final String a() {
            return this.f17201c;
        }

        @Nullable
        public final Drawable b() {
            return this.f17203e;
        }

        @Nullable
        public final String c() {
            return this.f17202d;
        }

        public final int d() {
            return this.f17200b;
        }

        @Nullable
        public final String e() {
            return this.f17199a;
        }

        public final void f(@Nullable String str) {
            this.f17201c = str;
        }

        public final void g(@Nullable Drawable drawable) {
            this.f17203e = drawable;
        }

        public final void h(@Nullable String str) {
            this.f17202d = str;
        }

        public final void i(int i2) {
            this.f17200b = i2;
        }

        public final void j(@Nullable String str) {
            this.f17199a = str;
        }
    }

    @JvmStatic
    public static final void A(@Nullable Context context, @Nullable DownloadTask downloadTask) {
        f17182b.n(context, downloadTask);
    }

    @JvmStatic
    public static final void B(@Nullable Context context, @Nullable DownloadTask downloadTask, boolean z3) {
        f17182b.o(context, downloadTask, z3);
    }

    @JvmStatic
    public static final boolean C(@NotNull Context context, @NotNull String str) {
        return f17182b.p(context, str);
    }

    @JvmStatic
    public static final boolean D(@Nullable DownloadTask downloadTask) {
        return f17182b.q(downloadTask);
    }

    @JvmStatic
    public static final boolean E(@Nullable DownloadTask downloadTask) {
        return f17182b.r(downloadTask);
    }

    @JvmStatic
    public static final boolean F(@Nullable DownloadTask downloadTask) {
        return f17182b.s(downloadTask);
    }

    @JvmStatic
    @Nullable
    public static final String G(@NotNull Context context) {
        return f17182b.t(context);
    }

    @JvmStatic
    public static final boolean H(@Nullable DownloadTask downloadTask) {
        return f17182b.u(downloadTask);
    }

    @JvmStatic
    public static final boolean I(@Nullable DownloadTask downloadTask) {
        return f17182b.v(downloadTask);
    }

    @JvmStatic
    public static final boolean J(@Nullable Context context, @Nullable EMUApkTable eMUApkTable) {
        return f17182b.w(context, eMUApkTable);
    }

    public static /* synthetic */ void O(APKUtils aPKUtils, Context context, StartGameMeta startGameMeta, boolean z3, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 4) != 0) {
                z3 = false;
            }
            aPKUtils.L(context, startGameMeta, z3);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: open");
    }

    @JvmStatic
    public static final void P(@NotNull Context context, @NotNull ArchiveData archiveData, @NotNull String str, @NotNull String str2, @NotNull DownloadTask downloadTask) {
        f17182b.x(context, archiveData, str, str2, downloadTask);
    }

    @JvmStatic
    public static final void R(@NotNull Context context, @NotNull DownloadTask downloadTask) {
        f17182b.z(context, downloadTask);
    }

    @JvmStatic
    @JvmOverloads
    public static final void S(@Nullable Context context, @NotNull ModInfoBean modInfoBean) {
        Companion.F(f17182b, context, modInfoBean, null, 4, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void T(@Nullable Context context, @NotNull ModInfoBean modInfoBean, @Nullable String str) {
        f17182b.B(context, modInfoBean, str);
    }

    @JvmStatic
    @JvmOverloads
    public static final void U(@Nullable Context context, @NotNull String str) {
        Companion.G(f17182b, context, str, null, null, 12, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void V(@Nullable Context context, @NotNull String str, @NotNull String str2) {
        Companion.G(f17182b, context, str, str2, null, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void W(@Nullable Context context, @NotNull String str, @NotNull String str2, @Nullable String str3) {
        f17182b.E(context, str, str2, str3);
    }

    @JvmStatic
    public static final boolean X(@NotNull Context context, @NotNull String str) {
        return f17182b.H(context, str);
    }

    @JvmStatic
    public static final void Y(@NotNull Context context, @NotNull DownloadTask downloadTask) {
        f17182b.I(context, downloadTask);
    }

    @JvmStatic
    public static final boolean a(@Nullable Context context, @Nullable DownloadTask downloadTask) {
        return f17182b.c(context, downloadTask);
    }

    @JvmStatic
    private static final void a0(Context context, DownloadTask downloadTask) {
        f17182b.K(context, downloadTask);
    }

    @JvmStatic
    public static final boolean b(@Nullable Context context, @Nullable CommonGameInfoBean commonGameInfoBean) {
        return f17182b.d(context, commonGameInfoBean);
    }

    @JvmStatic
    public static final boolean b0(@Nullable DownloadTask downloadTask, @NotNull String str) {
        return f17182b.M(downloadTask, str);
    }

    @JvmStatic
    public static final boolean d0(@Nullable String str) {
        return f17182b.N(str);
    }

    public static /* synthetic */ boolean e(APKUtils aPKUtils, Context context, String str, DEVICE_TYPE device_type, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 4) != 0) {
                device_type = DEVICE_TYPE.REAL;
            }
            return aPKUtils.d(context, str, device_type);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkInstall");
    }

    private final void e0(Context context, StartGameMeta startGameMeta, boolean z3, Intent intent) {
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        startGameMeta.setUserID(instance_.getUid());
        startGameMeta.setPa_package_name(context.getPackageName());
        AccountUtil_ instance_2 = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_2, "AccountUtil_.getInstance_(context)");
        startGameMeta.setTourist(instance_2.isTourist());
        boolean z4 = false;
        u0.e("GameMeta:", JsonMapper.getInstance().toJson(startGameMeta));
        String str = MApplication.C;
        if ((str == null || str.length() == 0) ? true : true) {
            startGameMeta.setDnsJson(context.getSharedPreferences("Papa_Stat_SharedPreferences", 4).getString("DNSHttpUrl", ""));
        } else {
            startGameMeta.setDnsJson(MApplication.C);
        }
        if (intent != null) {
            intent.putExtra("jsonData", JsonMapper.getInstance().toJson(startGameMeta));
            if (z3 || startGameMeta.getTagId() != ConstantIntEnum.NDS.value()) {
                return;
            }
            intent.putExtra("GAMEPATH", startGameMeta.getRomPath() + ".nds");
        }
    }

    @JvmStatic
    public static final boolean f(@Nullable Context context, @NotNull Function0<Unit> function0) {
        return f17182b.e(context, function0);
    }

    static /* synthetic */ void f0(APKUtils aPKUtils, Context context, StartGameMeta startGameMeta, boolean z3, Intent intent, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 4) != 0) {
                z3 = false;
            }
            if ((i2 & 8) != 0) {
                intent = null;
            }
            aPKUtils.e0(context, startGameMeta, z3, intent);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: wrapGameMeta");
    }

    @JvmStatic
    public static final void h(@Nullable DownloadTask downloadTask) {
        f17182b.f(downloadTask);
    }

    @JvmStatic
    @JvmOverloads
    public static final void i(@Nullable DownloadTask downloadTask) {
        Companion.i(f17182b, downloadTask, 0L, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final void j(@Nullable DownloadTask downloadTask, long j4) {
        f17182b.h(downloadTask, j4);
    }

    @JvmStatic
    @Nullable
    public static final String n(@NotNull Context context, @NotNull String str) {
        return f17182b.j(context, str);
    }

    private final Class<?>[] q(Class<?> cls, String str) {
        Object[] array = new ArrayList().toArray(new Class[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Class<?>[] clsArr = (Class[]) array;
        Method[] mtd = cls.getMethods();
        Intrinsics.checkNotNullExpressionValue(mtd, "mtd");
        int length = mtd.length;
        for (int i2 = 0; i2 < length; i2++) {
            Method method = mtd[i2];
            Intrinsics.checkNotNullExpressionValue(method, "mtd[i]");
            if (!(!Intrinsics.areEqual(method.getName(), str))) {
                Method method2 = mtd[i2];
                Intrinsics.checkNotNullExpressionValue(method2, "mtd[i]");
                clsArr = method2.getParameterTypes();
                Intrinsics.checkNotNullExpressionValue(clsArr, "mtd[i].parameterTypes");
            }
        }
        return clsArr;
    }

    @JvmStatic
    public static final void s(@NotNull Context context, @NotNull DownloadTask downloadTask) {
        f17182b.l(context, downloadTask);
    }

    @JvmStatic
    public static final void t(@NotNull Context context) {
        f17182b.m(context);
    }

    @JvmOverloads
    public final void K(@NotNull Context context, @NotNull StartGameMeta startGameMeta) {
        O(this, context, startGameMeta, false, 4, null);
    }

    @JvmOverloads
    public void L(@NotNull Context context, @NotNull StartGameMeta startGameMeta, boolean z3) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(startGameMeta, "startGameMeta");
        try {
            Class.forName(startGameMeta.getActivityName());
        } catch (Exception unused) {
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            if (z3) {
                intent.setFlags(8388608);
            } else {
                intent.setFlags(131072);
            }
            intent.setComponent(new ComponentName(startGameMeta.getPackageName(), startGameMeta.getActivityName()));
            e0(context, startGameMeta, z3, intent);
            ContextCompat.startActivity(context, intent, null);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void M(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            PackageManager packageManager = context.getPackageManager();
            Intrinsics.checkNotNull(str);
            context.startActivity(packageManager.getLaunchIntentForPackage(str));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void N(@NotNull Context context, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent intent = new Intent();
        intent.addFlags(8388608);
        intent.setFlags(270532608);
        Intrinsics.checkNotNull(str);
        Intrinsics.checkNotNull(str2);
        intent.setComponent(new ComponentName(str, str2));
        intent.setAction("android.intent.action.VIEW");
        context.startActivity(intent);
    }

    public final void Q(@NotNull Context context, @NotNull StartGameMeta startGameMeta) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(startGameMeta, "startGameMeta");
        L(context, startGameMeta, true);
    }

    public final void Z(@Nullable byte[] bArr) {
        try {
            Certificate generateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
            if (generateCertificate != null) {
                X509Certificate x509Certificate = (X509Certificate) generateCertificate;
                String obj = x509Certificate.getPublicKey().toString();
                String bigInteger = x509Certificate.getSerialNumber().toString();
                Intrinsics.checkNotNullExpressionValue(bigInteger, "cert.serialNumber.toString()");
                System.out.println((Object) ("signName:" + x509Certificate.getSigAlgName()));
                System.out.println((Object) ("pubKey:" + obj));
                System.out.println((Object) ("signNumber:" + bigInteger));
                System.out.println((Object) ("subjectDN:" + x509Certificate.getSubjectDN().toString()));
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
        } catch (CertificateException e4) {
            e4.printStackTrace();
        }
    }

    @JvmOverloads
    public final boolean c(@NotNull Context context, @Nullable String str) {
        return e(this, context, str, null, 4, null);
    }

    public final void c0(@NotNull Context context, @NotNull String pak) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pak, "pak");
        context.startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + pak)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
        if (r6.activities.length > 0) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0084  */
    @kotlin.jvm.JvmOverloads
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(@org.jetbrains.annotations.NotNull android.content.Context r6, @org.jetbrains.annotations.Nullable java.lang.String r7, @org.jetbrains.annotations.NotNull com.join.android.app.common.utils.APKUtils.DEVICE_TYPE r8) {
        /*
            r5 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "type"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            int r0 = r8.value()
            com.join.android.app.common.utils.APKUtils$DEVICE_TYPE r1 = com.join.android.app.common.utils.APKUtils.DEVICE_TYPE.VM
            int r1 = r1.value()
            r2 = 0
            if (r0 == r1) goto L26
            int r0 = r8.value()
            com.join.android.app.common.utils.APKUtils$DEVICE_TYPE r1 = com.join.android.app.common.utils.APKUtils.DEVICE_TYPE.ALL
            int r1 = r1.value()
            if (r0 != r1) goto L24
            goto L26
        L24:
            r0 = 0
            goto L35
        L26:
            com.join.mgps.va.overmind.e$a r0 = com.join.mgps.va.overmind.e.f52358n
            com.join.mgps.va.overmind.e r0 = r0.b()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            r1 = 2
            r3 = 0
            boolean r0 = com.join.mgps.va.overmind.e.F(r0, r7, r2, r1, r3)
        L35:
            int r1 = r8.value()
            com.join.android.app.common.utils.APKUtils$DEVICE_TYPE r3 = com.join.android.app.common.utils.APKUtils.DEVICE_TYPE.REAL
            int r3 = r3.value()
            r4 = 1
            if (r1 == r3) goto L4e
            int r1 = r8.value()
            com.join.android.app.common.utils.APKUtils$DEVICE_TYPE r3 = com.join.android.app.common.utils.APKUtils.DEVICE_TYPE.ALL
            int r3 = r3.value()
            if (r1 != r3) goto L75
        L4e:
            android.content.pm.PackageManager r1 = r6.getPackageManager()
            android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            r3 = 8192(0x2000, float:1.14794E-41)
            android.content.pm.ApplicationInfo r6 = r6.getApplicationInfo(r7, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
            java.lang.String r3 = "context.packageManager.g…ACKAGES\n                )"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L66
        L64:
            r6 = 1
            goto L76
        L66:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L75
            android.content.pm.PackageInfo r6 = r1.getPackageInfo(r7, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L75
            if (r6 == 0) goto L75
            android.content.pm.ActivityInfo[] r6 = r6.activities     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L75
            int r6 = r6.length     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L75
            if (r6 <= 0) goto L75
            goto L64
        L75:
            r6 = 0
        L76:
            int r7 = r8.value()
            com.join.android.app.common.utils.APKUtils$DEVICE_TYPE r1 = com.join.android.app.common.utils.APKUtils.DEVICE_TYPE.VM
            int r1 = r1.value()
            if (r7 != r1) goto L84
            r2 = r0
            goto L97
        L84:
            int r7 = r8.value()
            com.join.android.app.common.utils.APKUtils$DEVICE_TYPE r8 = com.join.android.app.common.utils.APKUtils.DEVICE_TYPE.REAL
            int r8 = r8.value()
            if (r7 != r8) goto L92
            r2 = r6
            goto L97
        L92:
            if (r6 != 0) goto L96
            if (r0 == 0) goto L97
        L96:
            r2 = 1
        L97:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.utils.APKUtils.d(android.content.Context, java.lang.String, com.join.android.app.common.utils.APKUtils$DEVICE_TYPE):boolean");
    }

    public final boolean g(@NotNull Context context, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            AssetManager assets = context.getAssets();
            Intrinsics.checkNotNull(str);
            InputStream open = assets.open(str);
            Intrinsics.checkNotNullExpressionValue(open, "context.assets.open(fileName!!)");
            File file = new File(str2);
            file.createNewFile();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = open.read(bArr);
                if (read > 0) {
                    fileOutputStream.write(bArr, 0, read);
                } else {
                    fileOutputStream.close();
                    open.close();
                    return true;
                }
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            return false;
        }
    }

    @NotNull
    public final a k(@NotNull Context ctx, @NotNull String pak) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(pak, "pak");
        return l(ctx, pak, DEVICE_TYPE.REAL);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00e9  */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.join.android.app.common.utils.APKUtils.a l(@org.jetbrains.annotations.NotNull android.content.Context r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull com.join.android.app.common.utils.APKUtils.DEVICE_TYPE r14) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.utils.APKUtils.l(android.content.Context, java.lang.String, com.join.android.app.common.utils.APKUtils$DEVICE_TYPE):com.join.android.app.common.utils.APKUtils$a");
    }

    @NotNull
    public final List<a> m(@NotNull Context ctx) {
        int i2;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        ArrayList arrayList = new ArrayList();
        try {
            PackageManager packageManager = ctx.getPackageManager();
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
            Intrinsics.checkNotNullExpressionValue(installedPackages, "packageManager.getInstalledPackages(0)");
            int size = installedPackages.size();
            for (int i4 = 0; i4 < size; i4++) {
                try {
                    PackageInfo packageInfo = installedPackages.get(i4);
                    try {
                        i2 = packageInfo.applicationInfo.flags;
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    if ((i2 & 1) == 0) {
                        if ((i2 & 128) != 0) {
                        }
                        a aVar = new a();
                        aVar.f(packageManager.getApplicationLabel(packageInfo.applicationInfo).toString());
                        aVar.h(packageInfo.packageName);
                        aVar.j(packageInfo.versionName);
                        aVar.i(packageInfo.versionCode);
                        aVar.g(null);
                        arrayList.add(aVar);
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        return arrayList;
    }

    @NotNull
    public final List<a> o(@NotNull Context ctx) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        ArrayList arrayList = new ArrayList();
        try {
            PackageManager packageManager = ctx.getPackageManager();
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
            Intrinsics.checkNotNullExpressionValue(installedPackages, "packageManager.getInstalledPackages(0)");
            int size = installedPackages.size();
            for (int i2 = 0; i2 < size; i2++) {
                try {
                    PackageInfo packageInfo = installedPackages.get(i2);
                    try {
                        int i4 = packageInfo.applicationInfo.flags;
                        if ((i4 & 1) != 0 || (i4 & 128) != 0) {
                            a aVar = new a();
                            aVar.f(packageManager.getApplicationLabel(packageInfo.applicationInfo).toString());
                            aVar.h(packageInfo.packageName);
                            aVar.j(packageInfo.versionName);
                            aVar.i(packageInfo.versionCode);
                            aVar.g(null);
                            arrayList.add(aVar);
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
        } catch (Exception e6) {
            e6.printStackTrace();
        }
        return arrayList;
    }

    @Nullable
    public final String p(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        PackageManager packageManager = context.getPackageManager();
        Intrinsics.checkNotNull(str);
        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 1);
        if (packageArchiveInfo != null) {
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            packageManager.getApplicationLabel(applicationInfo).toString();
            String str2 = applicationInfo.packageName;
            StringBuilder sb = new StringBuilder();
            sb.append("包名是：");
            sb.append(str2);
            String str3 = packageArchiveInfo.versionName;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("版本信息：");
            sb2.append(str3);
            return str2;
        }
        return null;
    }

    @NotNull
    public final a r(@NotNull Context ctx, @NotNull File apkFile) {
        String str;
        String str2;
        Drawable drawable;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        Intrinsics.checkNotNullParameter(apkFile, "apkFile");
        a aVar = new a();
        PackageManager packageManager = ctx.getPackageManager();
        PackageInfo packageArchiveInfo = packageManager.getPackageArchiveInfo(apkFile.getAbsolutePath(), 1);
        String str3 = null;
        if (packageArchiveInfo != null) {
            ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
            String str4 = packageArchiveInfo.versionName;
            drawable = packageManager.getApplicationIcon(applicationInfo);
            CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
            Objects.requireNonNull(applicationLabel, "null cannot be cast to non-null type kotlin.String");
            str = (String) applicationLabel;
            String str5 = applicationInfo.packageName;
            str3 = str4;
            str2 = str5;
        } else {
            str = null;
            str2 = null;
            drawable = null;
        }
        aVar.j(str3);
        aVar.f(str);
        aVar.h(str2);
        aVar.g(drawable);
        return aVar;
    }

    public final void u(@Nullable Activity activity, @NotNull File apkFile) {
        Intrinsics.checkNotNullParameter(apkFile, "apkFile");
        if (activity == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setFlags(1);
            Uri uriForFile = FileProvider.getUriForFile(activity, activity.getPackageName() + ".fileprovider", apkFile);
            Intrinsics.checkNotNullExpressionValue(uriForFile, "FileProvider.getUriForFi…    apkFile\n            )");
            intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
        } else {
            intent.setDataAndType(Uri.fromFile(apkFile), AdBaseConstants.MIME_APK);
        }
        activity.startActivityForResult(intent, 1);
    }

    public final void v(@Nullable Activity activity, @Nullable String str) {
        PrefDef_ prefDef_ = new PrefDef_(activity);
        DownloadTask A = g1.f.G().A(str);
        if (A != null) {
            MApplication mApplication = MApplication.f9223q;
            Intrinsics.checkNotNullExpressionValue(mApplication, "MApplication.instance");
            if (!(mApplication.getActivity() instanceof ModGameIndexActivity)) {
                prefDef_.lastInstallApp().g(A.getCrc_link_type_val());
            }
            if (Intrinsics.areEqual(Dtype.MOD.name(), A.getFileType()) || f17182b.v(A)) {
                f17182b.n(activity, A);
                return;
            }
        }
        u(activity, new File(str));
    }

    public final void w(@NotNull Context context, @Nullable Uri uri) {
        Intrinsics.checkNotNullParameter(context, "context");
        UtilsMy.c2(context, "android.permission.REQUEST_INSTALL_PACKAGES");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        if (Build.VERSION.SDK_INT >= 24) {
            intent.setFlags(1);
            intent.setDataAndType(uri, AdBaseConstants.MIME_APK);
        } else {
            intent.setDataAndType(uri, AdBaseConstants.MIME_APK);
        }
        try {
            context.startActivity(intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public final void x(@Nullable Context context, @NotNull File apkFile) {
        Uri uriForFile;
        Intrinsics.checkNotNullParameter(apkFile, "apkFile");
        t0.c(" permissxx   installApk4");
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 24) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setDataAndType(Uri.fromFile(apkFile), AdBaseConstants.MIME_APK);
            try {
                Intrinsics.checkNotNull(context);
                context.startActivity(intent);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } else {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.addFlags(268435456);
            if (i2 >= 24) {
                intent2.setFlags(1);
                if (context != null) {
                    uriForFile = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", apkFile);
                    Intrinsics.checkNotNullExpressionValue(uriForFile, "FileProvider.getUriForFi…apkFile\n                )");
                } else {
                    Intrinsics.checkNotNull(context);
                    uriForFile = FileProvider.getUriForFile(context, "com.join.android.app.mgsim.wufun.fileprovider", apkFile);
                    Intrinsics.checkNotNullExpressionValue(uriForFile, "FileProvider.getUriForFi…apkFile\n                )");
                }
                intent2.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
            } else {
                intent2.setDataAndType(Uri.fromFile(apkFile), AdBaseConstants.MIME_APK);
            }
            try {
                if (context instanceof Service) {
                    intent2.addFlags(268435456);
                }
                Intrinsics.checkNotNull(context);
                context.startActivity(intent2);
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
        t0.c(" permissxx   installApk");
        boolean b4 = l1.b(context);
        if (Build.VERSION.SDK_INT < 26) {
            if (b4) {
                return;
            }
            t0.c(" permissxx   installApk3");
            UtilsMy.d2(context, "android.permission.REQUEST_INSTALL_PACKAGES", apkFile.getAbsolutePath());
            return;
        }
        Intrinsics.checkNotNull(context);
        if (context.getPackageManager().canRequestPackageInstalls()) {
            return;
        }
        t0.c(" permissxx   installApk2");
        UtilsMy.d2(context, "android.permission.REQUEST_INSTALL_PACKAGES", apkFile.getAbsolutePath());
    }

    public final void y(@Nullable Context context, @Nullable String str) {
        String str2 = Build.BRAND;
        PrefDef_ prefDef_ = new PrefDef_(context);
        DownloadTask A = g1.f.G().A(str);
        if (A != null) {
            MApplication mApplication = MApplication.f9223q;
            Intrinsics.checkNotNullExpressionValue(mApplication, "MApplication.instance");
            if (!(mApplication.getActivity() instanceof ModGameIndexActivity)) {
                prefDef_.lastInstallApp().g(A.getCrc_link_type_val());
            }
            if (Intrinsics.areEqual(Dtype.MOD.name(), A.getFileType()) || f17182b.v(A)) {
                f17182b.n(context, A);
                return;
            }
        }
        x(context, new File(str));
    }

    public final void z(@Nullable File file) {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Intrinsics.checkNotNullExpressionValue(cls, "Class.forName(\"android.app.ActivityThread\")");
            Class<?>[] q3 = q(cls, "getPackageManager");
            Method method = cls.getMethod("getPackageManager", (Class[]) Arrays.copyOf(q3, q3.length));
            Intrinsics.checkNotNullExpressionValue(method, "activityTherad.getMethod…ageManager\", *paramTypes)");
            Object invoke = method.invoke(cls, new Object[0]);
            Class<?> cls2 = invoke.getClass();
            Class<?>[] q4 = q(cls2, "installPackage");
            Method method2 = cls2.getMethod("installPackage", (Class[]) Arrays.copyOf(q4, q4.length));
            Intrinsics.checkNotNullExpressionValue(method2, "pmService.getMethod(\"ins…llPackage\", *paramTypes1)");
            method2.invoke(invoke, Uri.fromFile(file), null, 0, null);
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
        } catch (IllegalAccessException e5) {
            e5.printStackTrace();
        } catch (IllegalArgumentException e6) {
            e6.printStackTrace();
        } catch (NoSuchMethodException e7) {
            e7.printStackTrace();
        } catch (InvocationTargetException e8) {
            e8.printStackTrace();
        }
    }
}
