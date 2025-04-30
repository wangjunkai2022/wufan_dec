package com.join.mgps.service;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t0;
import com.join.mgps.Util.u;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.dto.VersionDto;
import io.netty.handler.codec.http.multipart.HttpPostBodyUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import net.lingala.zip4j.util.e;
import org.androidannotations.annotations.EService;
import org.apache.http.client.ClientProtocolException;
@EService
/* loaded from: classes4.dex */
public class UpdateService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private NotificationManager f51996a;

    /* renamed from: d  reason: collision with root package name */
    private b f51999d;

    /* renamed from: g  reason: collision with root package name */
    private NotificationCompat.Builder f52002g;

    /* renamed from: i  reason: collision with root package name */
    private VersionDto f52004i;

    /* renamed from: b  reason: collision with root package name */
    private File f51997b = null;

    /* renamed from: c  reason: collision with root package name */
    private boolean f51998c = false;

    /* renamed from: e  reason: collision with root package name */
    private int f52000e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f52001f = 1234;

    /* renamed from: h  reason: collision with root package name */
    boolean f52003h = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f52005j = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f52006a;

        a(String str) {
            this.f52006a = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i2 = 0;
            try {
                try {
                    try {
                        try {
                            UpdateService.this.f52005j = true;
                            HttpURLConnection o3 = UpdateService.o(this.f52006a);
                            long contentLength = o3.getContentLength();
                            t0.d("app更新文件大小", contentLength + " ");
                            t0.d("app更新code ", o3.getResponseCode() + " ");
                            InputStream inputStream = UpdateService.o(this.f52006a).getInputStream();
                            if (inputStream != null) {
                                File file = new File(u.f27845d, "/aia");
                                if (!file.exists() && !file.isDirectory()) {
                                    file.mkdir();
                                }
                                UpdateService updateService = UpdateService.this;
                                String str = u.f27845d;
                                StringBuilder sb = new StringBuilder();
                                sb.append("/aia/");
                                String str2 = this.f52006a;
                                sb.append(str2.substring(str2.lastIndexOf(e.F0) + 1));
                                updateService.f51997b = new File(str, sb.toString());
                                if (UpdateService.this.f51997b.exists()) {
                                    UpdateService.this.f51997b.delete();
                                }
                                UpdateService.this.f51997b.createNewFile();
                                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                                FileOutputStream fileOutputStream = new FileOutputStream(UpdateService.this.f51997b);
                                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                long j4 = 0;
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int read = bufferedInputStream.read(bArr);
                                    if (read == -1 || UpdateService.this.f51998c) {
                                        break;
                                    }
                                    bufferedOutputStream.write(bArr, i2, read);
                                    j4 += read;
                                    double d4 = j4;
                                    double d5 = contentLength;
                                    Double.isNaN(d4);
                                    Double.isNaN(d5);
                                    int i4 = (int) ((d4 / d5) * 100.0d);
                                    if (i4 - UpdateService.this.f52000e >= 5) {
                                        UpdateService.this.f52000e = i4;
                                        UpdateService.this.f51999d.sendMessage(UpdateService.this.f51999d.obtainMessage(3, Integer.valueOf(i4)));
                                    }
                                    i2 = 0;
                                }
                                bufferedOutputStream.flush();
                                bufferedOutputStream.close();
                                fileOutputStream.flush();
                                fileOutputStream.close();
                                inputStream.close();
                                bufferedInputStream.close();
                            }
                            if (!UpdateService.this.f51998c) {
                                UpdateService.this.f51999d.sendMessage(UpdateService.this.f51999d.obtainMessage(2, UpdateService.this.f51997b));
                            } else {
                                UpdateService.this.f51997b.delete();
                            }
                        } catch (Exception e4) {
                            UpdateService.this.f51999d.sendMessage(UpdateService.this.f51999d.obtainMessage(4, "下载更新文件失败"));
                            e4.printStackTrace();
                        }
                    } catch (ClientProtocolException e5) {
                        UpdateService.this.f51999d.sendMessage(UpdateService.this.f51999d.obtainMessage(4, "下载更新文件失败"));
                        e5.printStackTrace();
                    }
                } catch (IOException e6) {
                    UpdateService.this.f51999d.sendMessage(UpdateService.this.f51999d.obtainMessage(4, "下载更新文件失败"));
                    e6.printStackTrace();
                }
            } finally {
                UpdateService.this.f52005j = false;
            }
        }
    }

    /* loaded from: classes4.dex */
    class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private Context f52008a;

        public b(Looper looper, Context context) {
            super(looper);
            this.f52008a = context;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message != null) {
                UpdateService updateService = UpdateService.this;
                if (updateService.f52003h) {
                    if (message.what != 2) {
                        return;
                    }
                    Intent intent = new Intent(f1.a.f65473e0);
                    UpdateService.this.f52004i.setFilepath(((File) message.obj).getAbsolutePath());
                    intent.putExtra("papaUpdateinfo", UpdateService.this.f52004i);
                    UpdateService.this.sendBroadcast(intent);
                    UpdateService.this.stopSelf();
                    return;
                }
                int i2 = message.what;
                if (i2 == 0) {
                    Toast.makeText(this.f52008a, message.obj.toString(), 0).show();
                } else if (i2 == 2) {
                    updateService.f52000e = 0;
                    try {
                        UpdateService.this.f51996a.cancel(UpdateService.this.f52001f);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    UpdateService.this.a((File) message.obj, this.f52008a);
                    UpdateService.this.stopSelf();
                } else if (i2 != 3) {
                    if (i2 != 4) {
                        return;
                    }
                    try {
                        updateService.f51996a.cancel(UpdateService.this.f52001f);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                } else {
                    try {
                        NotificationCompat.Builder builder = updateService.f52002g;
                        builder.setContentText("已下载" + UpdateService.this.f52000e + "%");
                        UpdateService.this.f52002g.setProgress(100, UpdateService.this.f52000e, false);
                        UpdateService.this.f51996a.notify(UpdateService.this.f52001f, UpdateService.this.f52002g.build());
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(File file, Context context) {
        com.join.android.app.common.utils.a.g0(context).x(this, file);
    }

    private void n(String str) {
        new a(str).start();
    }

    public static HttpURLConnection o(String str) throws Exception {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setRequestProperty("Content-Type", HttpPostBodyUtil.DEFAULT_BINARY_CONTENT_TYPE);
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        httpURLConnection.connect();
        return httpURLConnection;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i4) {
        try {
            if (intent != null) {
                try {
                    this.f52003h = intent.getBooleanExtra("downNotInstall", false);
                    this.f52004i = (VersionDto) intent.getSerializableExtra("papaUpdateinfo");
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            if (!this.f52003h) {
                this.f51996a = (NotificationManager) getSystemService("notification");
                if (Build.VERSION.SDK_INT >= 26) {
                    NotificationChannel notificationChannel = new NotificationChannel("channel_1", "更新", 2);
                    notificationChannel.setSound(null, null);
                    notificationChannel.setImportance(2);
                    this.f51996a.createNotificationChannel(notificationChannel);
                    this.f52002g = new NotificationCompat.Builder(this, "channel_1");
                } else {
                    this.f52002g = new NotificationCompat.Builder(this);
                }
                this.f52002g.setSmallIcon(R.drawable.icon).setContentText("已下载0%").setContentTitle(getResources().getString(R.string.app_name)).setContentIntent(PendingIntent.getActivity(this, (int) SystemClock.uptimeMillis(), new Intent(this, MGMainActivity_.class), 134217728)).setLargeIcon(BitmapFactory.decodeResource(getResources(), R.drawable.icon));
                this.f52002g.setOnlyAlertOnce(true);
                this.f51996a.notify(this.f52001f, this.f52002g.build());
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        b bVar = new b(Looper.myLooper(), this);
        this.f51999d = bVar;
        this.f51999d.sendMessage(bVar.obtainMessage(3, 0));
        if (intent != null && !intent.getStringExtra("url").equals("") && !this.f52005j) {
            n(intent.getStringExtra("url"));
        }
        return super.onStartCommand(intent, i2, i4);
    }
}
