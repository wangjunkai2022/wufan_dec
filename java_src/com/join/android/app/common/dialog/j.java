package com.join.android.app.common.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.viewpager.widget.ViewPager;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.dialog.j;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.u;
import com.join.mgps.activity.MGMainActivity;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.adapter.x;
import com.join.mgps.customview.NoScrollViewPager;
import com.join.mgps.dto.CollectionBeanSub;
import com.umeng.analytics.MobclickAgent;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: LocalGameThreeDialog.java */
/* loaded from: classes.dex */
public class j extends DialogFragment implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Button f16944a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f16945b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16946c;

    /* renamed from: d  reason: collision with root package name */
    private NoScrollViewPager f16947d;

    /* renamed from: e  reason: collision with root package name */
    public Map<String, CollectionBeanSub> f16948e;

    /* renamed from: f  reason: collision with root package name */
    private x f16949f;

    /* renamed from: g  reason: collision with root package name */
    private List<DownloadTask> f16950g;

    /* renamed from: i  reason: collision with root package name */
    private String f16952i;

    /* renamed from: j  reason: collision with root package name */
    private String f16953j;

    /* renamed from: k  reason: collision with root package name */
    int f16954k;

    /* renamed from: l  reason: collision with root package name */
    long f16955l;

    /* renamed from: n  reason: collision with root package name */
    private DownloadTask f16957n;

    /* renamed from: h  reason: collision with root package name */
    private boolean f16951h = false;
    @SuppressLint({"HandlerLeak"})

    /* renamed from: m  reason: collision with root package name */
    private Handler f16956m = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalGameThreeDialog.java */
    /* loaded from: classes.dex */
    public class a implements ViewPager.OnPageChangeListener {

        /* compiled from: LocalGameThreeDialog.java */
        /* renamed from: com.join.android.app.common.dialog.j$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0126a implements Runnable {
            RunnableC0126a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j.this.j0();
            }
        }

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            j.this.f16954k = i2;
            if (i2 == 2) {
                new Handler().postDelayed(new RunnableC0126a(), 300L);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
        }
    }

    /* compiled from: LocalGameThreeDialog.java */
    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f16960a;

        b(int i2) {
            this.f16960a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.f16947d.setCurrentItem(this.f16960a + 1);
            TextView textView = j.this.f16945b;
            textView.setText((this.f16960a + 2) + net.lingala.zip4j.util.e.F0 + j.this.f16948e.size());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LocalGameThreeDialog.java */
    /* loaded from: classes.dex */
    public class c extends Handler {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            j.this.dismissAllowingStateLoss();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int currentItem = j.this.f16947d.getCurrentItem();
            Context activity = j.this.getActivity();
            if (activity == null) {
                activity = j.this.getContext();
            }
            switch (message.what) {
                case 0:
                    j.this.f16944a.setText("确定");
                    j.this.f16944a.setEnabled(true);
                    j.this.f16946c.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "游戏检测完成！", 0).show();
                    }
                    new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.dialog.k
                        @Override // java.lang.Runnable
                        public final void run() {
                            j.c.this.b();
                        }
                    }, 500L);
                    break;
                case 1:
                    j.this.i0();
                    break;
                case 2:
                    j.this.f16944a.setText("确定");
                    j.this.f16944a.setEnabled(true);
                    j.this.f16946c.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "游戏已存在！", 0).show();
                    }
                    if (currentItem + 1 < j.this.f16948e.size()) {
                        j.this.i0();
                        break;
                    } else {
                        Message message2 = new Message();
                        message2.what = 0;
                        j.this.f16956m.sendMessage(message2);
                        break;
                    }
                case 3:
                    j.this.f16944a.setText("确定");
                    j.this.f16944a.setEnabled(true);
                    j.this.f16946c.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "游戏已存在，但是未完成！", 0).show();
                    }
                    if (currentItem + 1 < j.this.f16948e.size()) {
                        j.this.i0();
                        break;
                    } else {
                        Message message3 = new Message();
                        message3.what = 0;
                        j.this.f16956m.sendMessage(message3);
                        break;
                    }
                case 4:
                    j.this.f16944a.setText("解压中");
                    break;
                case 5:
                    if (currentItem + 1 < j.this.f16948e.size()) {
                        if (activity != null) {
                            Toast.makeText(activity, "文件复制出错！", 0).show();
                        }
                        j.this.i0();
                        break;
                    }
                    break;
                case 6:
                    j.this.f16944a.setText("正在初始化");
                    j.this.f16944a.setEnabled(false);
                    j.this.f16946c.setEnabled(false);
                    break;
                case 7:
                    j.this.f16944a.setText("确定");
                    j.this.f16944a.setEnabled(true);
                    j.this.f16946c.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "文件初始化失败，请重试！", 0).show();
                        break;
                    }
                    break;
                case 8:
                    j.this.f16944a.setText("确定");
                    j.this.f16944a.setEnabled(true);
                    j.this.f16946c.setEnabled(true);
                    break;
                case 9:
                    j.this.f16944a.setText("确定");
                    j.this.f16944a.setEnabled(true);
                    j.this.f16946c.setEnabled(true);
                    if (activity != null) {
                        Toast.makeText(activity, "解压失败，请重试！", 0).show();
                        break;
                    }
                    break;
            }
            super.handleMessage(message);
        }
    }

    /* compiled from: LocalGameThreeDialog.java */
    /* loaded from: classes.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        Boolean f16963a;

        /* renamed from: b  reason: collision with root package name */
        Boolean f16964b;

        d() {
            Boolean bool = Boolean.FALSE;
            this.f16963a = bool;
            this.f16964b = bool;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:105:0x01f7 A[Catch: IOException -> 0x0255, TRY_ENTER, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:107:0x01fc A[Catch: IOException -> 0x0255, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0201 A[Catch: IOException -> 0x0255, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0206 A[Catch: IOException -> 0x0255, TRY_LEAVE, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:116:0x0224 A[Catch: IOException -> 0x0255, TRY_ENTER, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:118:0x0229 A[Catch: IOException -> 0x0255, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:120:0x022e A[Catch: IOException -> 0x0255, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:122:0x0233 A[Catch: IOException -> 0x0255, TRY_LEAVE, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:127:0x0251 A[Catch: IOException -> 0x0255, TRY_ENTER, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0259 A[Catch: IOException -> 0x0255, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:133:0x025e A[Catch: IOException -> 0x0255, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:135:0x0263 A[Catch: IOException -> 0x0255, TRY_LEAVE, TryCatch #20 {IOException -> 0x0255, blocks: (B:105:0x01f7, B:107:0x01fc, B:109:0x0201, B:111:0x0206, B:116:0x0224, B:118:0x0229, B:120:0x022e, B:122:0x0233, B:127:0x0251, B:131:0x0259, B:133:0x025e, B:135:0x0263, B:92:0x01c2, B:94:0x01c7, B:96:0x01cc, B:98:0x01d1), top: B:163:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:146:0x0277 A[Catch: IOException -> 0x0273, TryCatch #2 {IOException -> 0x0273, blocks: (B:142:0x026f, B:146:0x0277, B:148:0x027c, B:150:0x0281), top: B:156:0x026f }] */
        /* JADX WARN: Removed duplicated region for block: B:148:0x027c A[Catch: IOException -> 0x0273, TryCatch #2 {IOException -> 0x0273, blocks: (B:142:0x026f, B:146:0x0277, B:148:0x027c, B:150:0x0281), top: B:156:0x026f }] */
        /* JADX WARN: Removed duplicated region for block: B:150:0x0281 A[Catch: IOException -> 0x0273, TRY_LEAVE, TryCatch #2 {IOException -> 0x0273, blocks: (B:142:0x026f, B:146:0x0277, B:148:0x027c, B:150:0x0281), top: B:156:0x026f }] */
        /* JADX WARN: Removed duplicated region for block: B:156:0x026f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r12v17, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Type inference failed for: r3v11, types: [java.io.BufferedInputStream] */
        /* JADX WARN: Type inference failed for: r3v13 */
        /* JADX WARN: Type inference failed for: r3v33 */
        /* JADX WARN: Type inference failed for: r3v34 */
        /* JADX WARN: Type inference failed for: r3v35 */
        /* JADX WARN: Type inference failed for: r3v36 */
        /* JADX WARN: Type inference failed for: r3v4 */
        /* JADX WARN: Type inference failed for: r3v5 */
        /* JADX WARN: Type inference failed for: r3v52 */
        /* JADX WARN: Type inference failed for: r3v53 */
        /* JADX WARN: Type inference failed for: r3v54 */
        /* JADX WARN: Type inference failed for: r3v6 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(com.github.snowdream.android.app.downloader.DownloadTask r21, int r22, java.lang.String r23) {
            /*
                Method dump skipped, instructions count: 651
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.dialog.j.d.a(com.github.snowdream.android.app.downloader.DownloadTask, int, java.lang.String):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:123:0x034a A[Catch: IOException -> 0x03b0, TRY_ENTER, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:125:0x034f A[Catch: IOException -> 0x03b0, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:127:0x0354 A[Catch: IOException -> 0x03b0, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:129:0x0359 A[Catch: IOException -> 0x03b0, TRY_LEAVE, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:136:0x037b A[Catch: IOException -> 0x03b0, TRY_ENTER, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:138:0x0380 A[Catch: IOException -> 0x03b0, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:140:0x0385 A[Catch: IOException -> 0x03b0, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:142:0x038a A[Catch: IOException -> 0x03b0, TRY_LEAVE, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:149:0x03ac A[Catch: IOException -> 0x03b0, TRY_ENTER, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:153:0x03b4 A[Catch: IOException -> 0x03b0, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:155:0x03b9 A[Catch: IOException -> 0x03b0, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:157:0x03be A[Catch: IOException -> 0x03b0, TRY_LEAVE, TryCatch #6 {IOException -> 0x03b0, blocks: (B:136:0x037b, B:138:0x0380, B:140:0x0385, B:142:0x038a, B:149:0x03ac, B:153:0x03b4, B:155:0x03b9, B:157:0x03be, B:123:0x034a, B:125:0x034f, B:127:0x0354, B:129:0x0359, B:106:0x030b, B:108:0x0310, B:110:0x0315, B:112:0x031a), top: B:183:0x0015 }] */
        /* JADX WARN: Removed duplicated region for block: B:168:0x03d2 A[Catch: IOException -> 0x03ce, TryCatch #22 {IOException -> 0x03ce, blocks: (B:164:0x03ca, B:168:0x03d2, B:170:0x03d7, B:172:0x03dc), top: B:191:0x03ca }] */
        /* JADX WARN: Removed duplicated region for block: B:170:0x03d7 A[Catch: IOException -> 0x03ce, TryCatch #22 {IOException -> 0x03ce, blocks: (B:164:0x03ca, B:168:0x03d2, B:170:0x03d7, B:172:0x03dc), top: B:191:0x03ca }] */
        /* JADX WARN: Removed duplicated region for block: B:172:0x03dc A[Catch: IOException -> 0x03ce, TRY_LEAVE, TryCatch #22 {IOException -> 0x03ce, blocks: (B:164:0x03ca, B:168:0x03d2, B:170:0x03d7, B:172:0x03dc), top: B:191:0x03ca }] */
        /* JADX WARN: Removed duplicated region for block: B:191:0x03ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void b(com.github.snowdream.android.app.downloader.DownloadTask r27, int r28, java.lang.String r29) {
            /*
                Method dump skipped, instructions count: 998
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.dialog.j.d.b(com.github.snowdream.android.app.downloader.DownloadTask, int, java.lang.String):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:58:0x0275 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0276  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 1211
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.join.android.app.common.dialog.j.d.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0(com.join.mgps.activity.b bVar, int i2) {
        if (bVar.f36749e.getDownloadtaskDown() == null || !bVar.f36749e.getDownloadtaskDown().getCrc_link_type_val().equals(this.f16957n.getCrc_link_type_val())) {
            return;
        }
        this.f16947d.setCurrentItem(i2 + 1);
        TextView textView = this.f16945b;
        textView.setText((i2 + 2) + net.lingala.zip4j.util.e.F0 + this.f16948e.size());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f0(DownloadTask downloadTask) {
        g1.f.G().n(downloadTask.getCrc_link_type_val());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g0(DownloadTask downloadTask) {
        UtilsMy.d3(getActivity(), downloadTask, 0);
    }

    public static j h0(Map<String, CollectionBeanSub> map) {
        Bundle bundle = new Bundle();
        j jVar = new j();
        jVar.setArguments(bundle);
        jVar.f16948e = map;
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        final int currentItem = this.f16947d.getCurrentItem();
        final com.join.mgps.activity.b bVar = (com.join.mgps.activity.b) this.f16949f.getItem(currentItem);
        new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.dialog.i
            @Override // java.lang.Runnable
            public final void run() {
                j.this.e0(bVar, currentItem);
            }
        }, 300L);
    }

    private void initViewPager() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, CollectionBeanSub> entry : this.f16948e.entrySet()) {
            com.join.mgps.activity.c cVar = new com.join.mgps.activity.c();
            cVar.f36748d = entry.getKey();
            cVar.f36749e = entry.getValue();
            arrayList.add(new x.a(entry.getKey(), cVar));
        }
        TextView textView = this.f16945b;
        textView.setText("1/" + this.f16948e.size());
        x xVar = new x(getChildFragmentManager(), arrayList);
        this.f16949f = xVar;
        this.f16947d.setAdapter(xVar);
        this.f16947d.setOffscreenPageLimit(2);
        this.f16947d.setNoScroll(true);
        this.f16947d.addOnPageChangeListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0() {
        this.f16944a.setText("确定");
        this.f16944a.setEnabled(true);
        this.f16946c.setEnabled(true);
    }

    private void k0() {
        try {
            if (!(getActivity() instanceof MGMainActivity) && !(getActivity() instanceof MGMainActivity_)) {
                Intent intent = new Intent();
                intent.setClass(getActivity(), MGMainActivity_.class);
                intent.setFlags(603979776);
                Bundle bundle = new Bundle();
                bundle.putInt("MainPos", 2);
                bundle.putBoolean("ismygame", true);
                intent.putExtras(bundle);
                startActivity(intent);
            }
            ((MGMainActivity) getActivity()).setTabSelect(2);
        } catch (Exception e4) {
            e4.getMessage();
        }
    }

    public void d0(boolean z3) {
        if (z3) {
            WindowManager.LayoutParams attributes = getActivity().getWindow().getAttributes();
            attributes.flags |= 1024;
            getActivity().getWindow().setAttributes(attributes);
            getActivity().getWindow().addFlags(512);
            return;
        }
        WindowManager.LayoutParams attributes2 = getActivity().getWindow().getAttributes();
        attributes2.flags &= -1025;
        getActivity().getWindow().setAttributes(attributes2);
        getActivity().getWindow().clearFlags(512);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int currentItem = this.f16947d.getCurrentItem();
        int id = view.getId();
        if (id != R.id.localGameThreeBt) {
            if (id != R.id.localGameThreeNotTv) {
                return;
            }
            if (currentItem + 1 >= this.f16948e.size()) {
                Message message = new Message();
                message.what = 0;
                this.f16956m.sendMessage(message);
                return;
            }
            new Handler().postDelayed(new b(currentItem), 300L);
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f16955l > 500 || this.f16954k != 1) {
            MobclickAgent.onEvent(getContext(), "onComfirmGame");
            this.f16955l = currentTimeMillis;
            this.f16944a.setText("复制中");
            this.f16944a.setEnabled(false);
            this.f16946c.setEnabled(false);
            new Thread(new d()).start();
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d0(getResources().getConfiguration().orientation == 2);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        u.e(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        org.greenrobot.eventbus.c.f().t(this);
        this.f16950g = g1.f.G().d();
        this.f16952i = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getPath();
        this.f16953j = u.f27845d + "/wufan91/31/roms";
        File file = new File(this.f16953j);
        if (!file.exists()) {
            file.mkdirs();
        }
        getDialog().requestWindowFeature(1);
        View inflate = layoutInflater.inflate(R.layout.dialog_localgame_three_view, viewGroup);
        this.f16944a = (Button) inflate.findViewById(R.id.localGameThreeBt);
        this.f16945b = (TextView) inflate.findViewById(R.id.localGameThreeNumTv);
        this.f16946c = (TextView) inflate.findViewById(R.id.localGameThreeNotTv);
        this.f16947d = (NoScrollViewPager) inflate.findViewById(R.id.localGameThreeViewPager);
        this.f16944a.setOnClickListener(this);
        this.f16946c.setOnClickListener(this);
        setCancelable(false);
        initViewPager();
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Intent intent = new Intent();
        intent.setAction(f1.a.H);
        getActivity().sendBroadcast(intent);
        super.onDestroyView();
        org.greenrobot.eventbus.c.f().y(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.l lVar) {
        if (lVar != null) {
            try {
                if (lVar.a() == null) {
                    return;
                }
                final DownloadTask a4 = lVar.a();
                int currentItem = this.f16947d.getCurrentItem();
                if (a4 != null) {
                    if ((a4.getStatus() == 13 || a4.getStatus() == 5) && this.f16957n != null && a4.getCrc_link_type_val().equals(this.f16957n.getCrc_link_type_val())) {
                        if (a4.getStatus() == 13) {
                            if (getContext() != null) {
                                Toast.makeText(getContext(), "游戏解压失败！", 0).show();
                            }
                            new Thread(new Runnable() { // from class: com.join.android.app.common.dialog.g
                                @Override // java.lang.Runnable
                                public final void run() {
                                    j.f0(DownloadTask.this);
                                }
                            }).start();
                        } else if (UtilsMy.N(getContext(), a4) == null) {
                            this.f16951h = true;
                        } else {
                            if (currentItem + 1 >= this.f16948e.size()) {
                                this.f16951h = false;
                            }
                            new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.dialog.h
                                @Override // java.lang.Runnable
                                public final void run() {
                                    j.this.g0(a4);
                                }
                            }, 200L);
                        }
                        if (currentItem + 1 >= this.f16948e.size()) {
                            Message message = new Message();
                            message.what = 0;
                            this.f16956m.sendMessage(message);
                            return;
                        }
                        Message message2 = new Message();
                        message2.what = 1;
                        this.f16956m.sendMessage(message2);
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }
}
