package com.join.mgps.activity.mygame.dialog;

import android.os.Build;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.BaseActivity;
import com.MApplication;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.a;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.t0;
import com.join.mgps.event.l;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import g1.f;
import java.util.List;
import net.lingala.zip4j.util.e;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
@EActivity(R.layout.plugdown_dialog_layout)
/* loaded from: classes.dex */
public class PlugDownDialogAcitivity extends BaseActivity {
    @ViewById
    TextView appSize;
    @ViewById
    TextView cancle;
    DownloadTask downloadTask;
    List<DownloadTask> downloadTasks;
    @Extra
    String gameid;
    @ViewById
    TextView info;
    DownloadTask lastGame;
    @ViewById
    TextView lodingInfo;
    @ViewById
    TextView ok;
    @Extra
    String plugNumber;
    @ViewById
    ProgressBar progressBar;
    @ViewById
    ProgressBar progressBarZip;
    @ViewById
    TextView title;

    private void receiveDelete(DownloadTask downloadTask) {
        notifyUi();
    }

    private void receiveError(DownloadTask downloadTask) {
        try {
            notifyUi();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        notifyUi();
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        try {
            this.downloadTasks = f.G().d();
            if (d2.i(this.gameid)) {
                this.lastGame = f.G().B(this.gameid);
            } else {
                for (DownloadTask downloadTask2 : this.downloadTasks) {
                    if (downloadTask2.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask2.getCrc_link_type_val()) && downloadTask2.getStatus() == 5) {
                        int i2 = (downloadTask2.getFinishTime() > 0L ? 1 : (downloadTask2.getFinishTime() == 0L ? 0 : -1));
                        this.lastGame = downloadTask2;
                    }
                }
            }
            DownloadTask downloadTask3 = this.lastGame;
            if (downloadTask3 != null) {
                this.title.setText(downloadTask3.getShowName());
            }
            TextView textView = this.appSize;
            textView.setText(downloadTask.getShowName() + "初始化完成");
            this.lodingInfo.setText("");
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        notifyUi();
    }

    private void updateProgressPartly() {
        DownloadTask f4 = a.e().f(this.downloadTask.getCrc_link_type_val());
        long parseDouble = (long) (Double.parseDouble(f4.getShowSize()) * 1024.0d * 1024.0d);
        if (this.downloadTask.getSize() == 0) {
            TextView textView = this.appSize;
            textView.setText("正在下载（" + UtilsMy.a(f4.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble) + ")");
        } else {
            TextView textView2 = this.appSize;
            textView2.setText("正在下载（" + UtilsMy.a(f4.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble) + ")");
        }
        if (this.downloadTask.getStatus() == 12) {
            this.progressBarZip.setProgress((int) f4.getProgress());
        } else {
            this.progressBar.setProgress((int) f4.getProgress());
        }
        if (this.downloadTask.getStatus() == 2) {
            TextView textView3 = this.lodingInfo;
            textView3.setText(f4.getProgress() + "%");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        MApplication.f9218n0 = true;
        t0.d("PlugDownDialogAcitivity", "PlugDownDialogAcitivity oncreate");
        c0.a().d(this);
        this.downloadTask = f.G().V(Integer.parseInt(this.plugNumber));
        this.downloadTasks = f.G().d();
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask == null) {
            finish();
            return;
        }
        this.title.setText(downloadTask.getShowName());
        TextView textView = this.info;
        textView.setText("初次加载游戏需初始化" + UtilsMy.w1(Integer.parseInt(this.downloadTask.getPlugin_num())) + "资源文件，请稍后…");
        if (this.downloadTask.getStatus() == 5) {
            for (DownloadTask downloadTask2 : this.downloadTasks) {
                if (downloadTask2.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask2.getCrc_link_type_val()) && downloadTask2.getStatus() == 5) {
                    int i2 = (downloadTask2.getFinishTime() > 0L ? 1 : (downloadTask2.getFinishTime() == 0L ? 0 : -1));
                    this.lastGame = downloadTask2;
                }
            }
            if (d2.i(this.gameid)) {
                this.lastGame = f.G().B(this.gameid);
            }
            DownloadTask downloadTask3 = this.lastGame;
            if (downloadTask3 != null) {
                this.title.setText(downloadTask3.getShowName());
            }
            TextView textView2 = this.appSize;
            textView2.setText(this.downloadTask.getShowName() + "初始化完成");
            p.l(this).K1(Event.showEmuLoadFininsh, new Ext());
        } else {
            p.l(this).K1(Event.showEmuLoading, new Ext());
        }
        notifyUi();
        getWindow().getDecorView().setSystemUiVisibility(1028);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void cancle() {
        finish();
        p.l(this).K1(Event.EmuLoadingBackground, new Ext());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyUi() {
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        long parseDouble = (long) (Double.parseDouble(this.downloadTask.getShowSize()) * 1024.0d * 1024.0d);
        t0.d("plugDownDialog", "statues=" + status + "");
        if (status != 2) {
            if (status != 3) {
                if (status != 5) {
                    if (status != 6) {
                        if (status != 42) {
                            switch (status) {
                                case 10:
                                    if (this.downloadTask != null) {
                                        TextView textView = this.appSize;
                                        textView.setText("正在下载（" + UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble) + ")");
                                        try {
                                            this.progressBar.setProgress((int) this.downloadTask.getProgress());
                                        } catch (Exception e4) {
                                            e4.printStackTrace();
                                        }
                                    }
                                    this.lodingInfo.setText("等待中");
                                    return;
                                case 11:
                                    this.appSize.setText("下载完成");
                                    this.progressBar.setProgress(100);
                                    this.cancle.setText("去查看");
                                    this.ok.setText("安装");
                                    return;
                                case 12:
                                    TextView textView2 = this.appSize;
                                    textView2.setText("正在下载（" + UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble) + ")");
                                    this.lodingInfo.setText("解压中..");
                                    this.progressBarZip.setVisibility(0);
                                    this.progressBar.setVisibility(8);
                                    this.progressBarZip.setProgress((int) this.downloadTask.getProgress());
                                    return;
                                case 13:
                                    TextView textView3 = this.appSize;
                                    textView3.setText("正在下载（" + UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble) + ")");
                                    this.progressBarZip.setProgress((int) this.downloadTask.getProgress());
                                    return;
                                default:
                                    return;
                            }
                        }
                    }
                }
                TextView textView4 = this.appSize;
                textView4.setText(this.downloadTask.getShowName() + "初始化完成");
                this.progressBar.setProgress(100);
                this.downloadTasks = f.G().d();
                if (d2.i(this.gameid)) {
                    this.lastGame = f.G().B(this.gameid);
                } else {
                    for (DownloadTask downloadTask2 : this.downloadTasks) {
                        if (downloadTask2.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask2.getCrc_link_type_val()) && downloadTask2.getStatus() == 5) {
                            int i2 = (downloadTask2.getFinishTime() > 0L ? 1 : (downloadTask2.getFinishTime() == 0L ? 0 : -1));
                            this.lastGame = downloadTask2;
                        }
                    }
                }
                DownloadTask downloadTask3 = this.lastGame;
                if (downloadTask3 != null && downloadTask3.getStatus() == 5) {
                    UtilsMy.e3(this, this.lastGame, 0, "");
                    p.l(this).K1(Event.StartgameLoadFininsh, new Ext());
                }
                finish();
                return;
            }
            DownloadTask downloadTask4 = this.downloadTask;
            if (downloadTask4 != null) {
                try {
                    if (downloadTask4.getSize() == 0) {
                        TextView textView5 = this.appSize;
                        textView5.setText(UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble));
                    } else {
                        TextView textView6 = this.appSize;
                        textView6.setText(UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble));
                    }
                    this.progressBar.setProgress((int) this.downloadTask.getProgress());
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            this.lodingInfo.setText("暂停中");
            return;
        }
        UtilsMy.C3(this.downloadTask);
        DownloadTask downloadTask5 = this.downloadTask;
        if (downloadTask5 != null) {
            if (downloadTask5.getSize() == 0) {
                TextView textView7 = this.appSize;
                textView7.setText("正在下载（" + UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble) + ")");
            } else {
                TextView textView8 = this.appSize;
                textView8.setText("正在下载（" + UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble) + ")");
            }
            this.progressBar.setProgress((int) this.downloadTask.getProgress());
            this.downloadTask.getSpeed();
            TextView textView9 = this.lodingInfo;
            textView9.setText(this.downloadTask.getProgress() + "%");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void ok() {
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (status != 5) {
            if (status != 11) {
                finish();
                return;
            } else {
                com.join.android.app.common.utils.a.g0(this).v(this, this.downloadTask.getGameZipPath());
                return;
            }
        }
        DownloadTask downloadTask2 = this.lastGame;
        if (downloadTask2 != null) {
            UtilsMy.c3(this, downloadTask2);
        }
        p.l(this).K1(Event.startAfterEmuLoad, new Ext());
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        c0.a().e(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(l lVar) {
        if (lVar.c() == 8) {
            updateProgressPartly();
        } else if (this.plugNumber.equals(lVar.a().getCrc_link_type_val())) {
            this.downloadTask = lVar.a();
            int c4 = lVar.c();
            if (c4 == 2) {
                updateUI(this.downloadTask, 1);
            } else if (c4 == 3) {
                updateUI(this.downloadTask, 2);
            } else if (c4 == 5) {
                updateUI(this.downloadTask, 5);
            } else if (c4 == 6) {
                updateUI(this.downloadTask, 6);
            } else if (c4 == 7) {
                this.downloadTask.setStatus(7);
                updateUI(this.downloadTask, 3);
            } else if (c4 == 10) {
                DownloadTask downloadTask = this.downloadTask;
                if (downloadTask == null) {
                    return;
                }
                updateUI(downloadTask, 7);
            } else if (c4 == 12) {
                updateUI(this.downloadTask, 8);
            } else if (c4 != 13) {
            } else {
                updateUI(this.downloadTask, 9);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MApplication.f9218n0 = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MApplication.f9218n0 = true;
    }

    void updateUI(DownloadTask downloadTask, int i2) {
        if (downloadTask != null) {
            switch (i2) {
                case 1:
                case 2:
                case 7:
                case 8:
                case 9:
                    receiveStart(downloadTask);
                    return;
                case 3:
                    receiveDelete(downloadTask);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    receiveSuccess(downloadTask);
                    return;
                case 6:
                    receiveError(downloadTask);
                    return;
            }
        }
    }
}
