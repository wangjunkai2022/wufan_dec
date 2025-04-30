package com.ss.android.socialbase.appdownloader.e;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.view.KeyEvent;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationManagerCompat;
import com.ss.android.socialbase.appdownloader.c.n;
import com.ss.android.socialbase.appdownloader.i;
import java.util.ArrayList;
import java.util.List;
/* compiled from: NotificationPermissionHelper.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57651a = "d";

    /* renamed from: b  reason: collision with root package name */
    private static List<n> f57652b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private static com.ss.android.socialbase.appdownloader.view.a f57653c;

    /* renamed from: d  reason: collision with root package name */
    private static AlertDialog f57654d;

    public static void b(@NonNull Activity activity, @NonNull n nVar) {
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    FragmentManager fragmentManager = activity.getFragmentManager();
                    String str = f57651a;
                    com.ss.android.socialbase.appdownloader.view.a aVar = (com.ss.android.socialbase.appdownloader.view.a) fragmentManager.findFragmentByTag(str);
                    f57653c = aVar;
                    if (aVar == null) {
                        f57653c = new com.ss.android.socialbase.appdownloader.view.a();
                        fragmentManager.beginTransaction().add(f57653c, str).commitAllowingStateLoss();
                        fragmentManager.executePendingTransactions();
                    }
                    f57653c.a();
                    return;
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    nVar.a();
                    return;
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    return;
                }
            }
        }
        nVar.a();
    }

    public static boolean a() {
        try {
            return NotificationManagerCompat.from(com.ss.android.socialbase.downloader.downloader.c.N()).areNotificationsEnabled();
        } catch (Throwable th) {
            th.printStackTrace();
            return true;
        }
    }

    public static synchronized void a(boolean z3) {
        synchronized (d.class) {
            try {
                AlertDialog alertDialog = f57654d;
                if (alertDialog != null) {
                    alertDialog.cancel();
                    f57654d = null;
                }
                for (n nVar : f57652b) {
                    if (nVar != null) {
                        if (z3) {
                            nVar.a();
                        } else {
                            nVar.b();
                        }
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static synchronized void a(@NonNull final Activity activity, @NonNull final n nVar) {
        synchronized (d.class) {
            if (nVar == null) {
                return;
            }
            if (activity != null) {
                try {
                } catch (Throwable th) {
                    th.printStackTrace();
                    a(false);
                }
                if (!activity.isFinishing()) {
                    int a4 = i.a(com.ss.android.socialbase.downloader.downloader.c.N(), "tt_appdownloader_notification_request_title");
                    int a5 = i.a(com.ss.android.socialbase.downloader.downloader.c.N(), "tt_appdownloader_notification_request_message");
                    int a6 = i.a(com.ss.android.socialbase.downloader.downloader.c.N(), "tt_appdownloader_notification_request_btn_yes");
                    int a7 = i.a(com.ss.android.socialbase.downloader.downloader.c.N(), "tt_appdownloader_notification_request_btn_no");
                    f57652b.add(nVar);
                    AlertDialog alertDialog = f57654d;
                    if (alertDialog == null || !alertDialog.isShowing()) {
                        f57654d = new AlertDialog.Builder(activity).setTitle(a4).setMessage(a5).setPositiveButton(a6, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.e.d.3
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                d.b(activity, nVar);
                                dialogInterface.cancel();
                                AlertDialog unused = d.f57654d = null;
                            }
                        }).setNegativeButton(a7, new DialogInterface.OnClickListener() { // from class: com.ss.android.socialbase.appdownloader.e.d.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                d.a(false);
                            }
                        }).setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: com.ss.android.socialbase.appdownloader.e.d.1
                            @Override // android.content.DialogInterface.OnKeyListener
                            public boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                                if (i2 == 4) {
                                    if (keyEvent.getAction() == 1) {
                                        d.a(false);
                                    }
                                    return true;
                                }
                                return false;
                            }
                        }).setCancelable(false).show();
                    }
                    return;
                }
            }
            nVar.b();
        }
    }
}
