package com.sina.weibo.sdk.share;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.b.a;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class ShareTransActivity extends BaseActivity {

    /* renamed from: t  reason: collision with root package name */
    private Intent f56746t;

    /* renamed from: u  reason: collision with root package name */
    private FrameLayout f56747u;

    /* renamed from: v  reason: collision with root package name */
    private d f56748v;

    /* renamed from: w  reason: collision with root package name */
    private String f56749w;

    /* renamed from: x  reason: collision with root package name */
    private Handler f56750x = new Handler(Looper.getMainLooper()) { // from class: com.sina.weibo.sdk.share.ShareTransActivity.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                Object obj = message.obj;
                if (obj instanceof Intent) {
                    ShareTransActivity.this.b((Intent) obj);
                    return;
                }
            }
            ShareTransActivity.this.j();
        }
    };

    private static void c(Intent intent) {
        if (intent == null || intent.getFlags() == 0) {
            return;
        }
        int flags = intent.getFlags();
        String binaryString = Integer.toBinaryString(flags);
        ArrayList<Integer> arrayList = new ArrayList();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            arrayList.add(64);
        }
        if (i2 >= 21) {
            arrayList.add(128);
        }
        arrayList.add(1);
        arrayList.add(2);
        for (Integer num : arrayList) {
            flags &= num.intValue() ^ (-1);
        }
        com.sina.weibo.sdk.b.c.a("WBShareTag", "clear flags: " + binaryString + "->" + Integer.toBinaryString(flags));
        intent.setFlags(flags);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        FrameLayout frameLayout = this.f56747u;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        Handler handler = this.f56750x;
        if (handler != null) {
            handler.removeMessages(0);
            this.f56750x = null;
        }
        try {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putInt("_weibo_resp_errcode", 1);
            intent.putExtras(bundle);
            setResult(-1, intent);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i4, Intent intent) {
        super.onActivityResult(i2, i4, intent);
        com.sina.weibo.sdk.b.c.a("WBShareTag", "onActivityResult. Means share result coming!");
        Handler handler = this.f56750x;
        if (handler != null) {
            if (i4 == -1) {
                Message obtain = Message.obtain(handler, 1);
                obtain.obj = intent;
                this.f56750x.sendMessageDelayed(obtain, 100L);
                return;
            }
            handler.sendEmptyMessageDelayed(0, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.sina.weibo.sdk.share.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        View progressBar;
        super.onCreate(bundle);
        com.sina.weibo.sdk.b.c.a("WBShareTag", "start share activity.");
        Intent intent = getIntent();
        this.f56746t = intent;
        if (intent == null) {
            finish();
        } else if (intent.getIntExtra("start_flag", -1) != 1001) {
            finish();
        } else {
            this.f56747u = new FrameLayout(this);
            int intExtra = getIntent().getIntExtra("progress_id", -1);
            if (intExtra != -1) {
                progressBar = ((LayoutInflater) getSystemService("layout_inflater")).inflate(intExtra, (ViewGroup) null);
            } else {
                progressBar = new ProgressBar(this);
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            this.f56747u.addView(progressBar, layoutParams);
            this.f56747u.setBackgroundColor(855638016);
            setContentView(this.f56747u);
            com.sina.weibo.sdk.b.c.a("WBShareTag", "prepare wb resource.");
            Bundle extras = this.f56746t.getExtras();
            if (extras == null) {
                finish();
                return;
            }
            WeiboMultiMessage weiboMultiMessage = new WeiboMultiMessage();
            weiboMultiMessage.readFromBundle(extras);
            if (weiboMultiMessage.multiImageObject == null && weiboMultiMessage.videoSourceObject == null) {
                a(weiboMultiMessage);
                return;
            }
            d dVar = this.f56748v;
            if (dVar != null) {
                dVar.cancel(true);
            }
            d dVar2 = new d(this, new b() { // from class: com.sina.weibo.sdk.share.ShareTransActivity.2
                @Override // com.sina.weibo.sdk.share.b
                public final void a(c cVar) {
                    ShareTransActivity.this.f56747u.setVisibility(4);
                    if (cVar != null) {
                        if (cVar.f56753z) {
                            ShareTransActivity.this.a(cVar.A);
                            return;
                        } else if (TextUtils.isEmpty(cVar.errorMessage)) {
                            ShareTransActivity.this.c("Trans resource fail.");
                            return;
                        } else {
                            ShareTransActivity.this.c(cVar.errorMessage);
                            return;
                        }
                    }
                    ShareTransActivity.this.c("Trans result is null.");
                }
            });
            this.f56748v = dVar2;
            dVar2.execute(weiboMultiMessage);
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        com.sina.weibo.sdk.b.c.a("WBShareTag", "start share activity again. Means share result coming!");
        int intExtra = intent.getIntExtra("start_flag", -1);
        if (intExtra == 1001) {
            return;
        }
        if (intExtra == 1002) {
            b(intent);
        } else {
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Intent intent) {
        FrameLayout frameLayout = this.f56747u;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
        }
        Handler handler = this.f56750x;
        if (handler != null) {
            handler.removeMessages(0);
            this.f56750x = null;
        }
        if (!a(intent)) {
            j();
            return;
        }
        c(intent);
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WeiboMultiMessage weiboMultiMessage) {
        com.sina.weibo.sdk.b.c.a("WBShareTag", "start wb composer");
        try {
            this.f56746t.putExtra("start_flag", 1002);
            double random = Math.random() * 10000.0d;
            double currentTimeMillis = System.currentTimeMillis();
            Double.isNaN(currentTimeMillis);
            String f4 = com.sina.weibo.sdk.b.d.f(String.valueOf(random + currentTimeMillis));
            this.f56749w = f4;
            this.f56746t.putExtra("share_back_flag", f4);
            this.f56746t.putExtra("share_flag_for_new_version", 1);
            Bundle extras = this.f56746t.getExtras();
            Intent intent = new Intent("com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY");
            a.C0286a c4 = com.sina.weibo.sdk.b.a.c(this);
            if (c4 != null) {
                intent.setPackage(c4.packageName);
            }
            intent.putExtras(weiboMultiMessage.writeToBundle(extras));
            intent.putExtra("_weibo_sdkVersion", "0041005000");
            intent.putExtra("_weibo_appPackage", getPackageName());
            intent.putExtra("_weibo_appKey", com.sina.weibo.sdk.a.a().getAppKey());
            intent.putExtra("_weibo_flag", 538116905);
            intent.putExtra("_weibo_sign", com.sina.weibo.sdk.b.d.f(com.sina.weibo.sdk.b.e.b(this, getPackageName())));
            String stringExtra = this.f56746t.getStringExtra("start_web_activity");
            if (!TextUtils.isEmpty(stringExtra) && "com.sina.weibo.sdk.web.WebActivity".equals(stringExtra)) {
                intent.setClassName(this, stringExtra);
                startActivityForResult(intent, 10001);
            } else if (com.sina.weibo.sdk.a.a(this)) {
                if (c4 != null) {
                    intent.setPackage(c4.packageName);
                }
                startActivityForResult(intent, 10001);
            } else {
                c("Start weibo client's composer fail. And Weibo client is not installed.");
            }
        } catch (Throwable th) {
            com.sina.weibo.sdk.b.c.b("WBShareTag", "start wb composer fail," + th.getMessage());
            c("Start weibo client's composer fail. " + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        FrameLayout frameLayout = this.f56747u;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
        }
        Handler handler = this.f56750x;
        if (handler != null) {
            handler.removeMessages(0);
            this.f56750x = null;
        }
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putInt("_weibo_resp_errcode", 2);
        bundle.putString("_weibo_resp_errstr", str);
        intent.putExtras(bundle);
        setResult(-1, intent);
        finish();
    }

    private boolean a(Intent intent) {
        if (TextUtils.isEmpty(this.f56749w) || intent == null || !intent.getExtras().containsKey("share_back_flag")) {
            return false;
        }
        return TextUtils.equals(this.f56749w, intent.getStringExtra("share_back_flag"));
    }
}
