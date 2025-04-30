package com.join.mgps.activity.mygame.dialog;

import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.BaseActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.servcie.a;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.c0;
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
@EActivity(R.layout.plugdown_finish_dialog_layout)
/* loaded from: classes.dex */
public class PlugDownFinishDialogAcitivity extends BaseActivity {
    @ViewById
    TextView appSize;
    @ViewById
    ImageView cancle;
    DownloadTask downloadTask;
    List<DownloadTask> downloadTasks;
    @ViewById
    SimpleDraweeView icon;
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
            List<DownloadTask> d4 = f.G().d();
            this.downloadTasks = d4;
            for (DownloadTask downloadTask2 : d4) {
                if (downloadTask2.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask2.getCrc_link_type_val()) && downloadTask2.getStatus() == 5) {
                    int i2 = (downloadTask2.getFinishTime() > 0L ? 1 : (downloadTask2.getFinishTime() == 0L ? 0 : -1));
                    this.lastGame = downloadTask2;
                }
            }
            DownloadTask downloadTask3 = this.lastGame;
            if (downloadTask3 != null) {
                this.title.setText(downloadTask3.getShowName());
            }
            TextView textView = this.appSize;
            textView.setText(downloadTask.getShowName() + "初始化完成");
            p.l(this).K1(Event.showEmuLoadFininsh, new Ext());
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
            textView.setText(UtilsMy.a(f4.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble));
        } else {
            TextView textView2 = this.appSize;
            textView2.setText(UtilsMy.a(f4.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble));
        }
        if (this.downloadTask.getStatus() == 12) {
            this.progressBarZip.setProgress((int) f4.getProgress());
        } else {
            this.progressBar.setProgress((int) f4.getProgress());
        }
        if (this.downloadTask.getStatus() == 2) {
            TextView textView3 = this.lodingInfo;
            textView3.setText(f4.getSpeed() + "/S");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AfterViews
    public void afterViews() {
        t0.d("PlugDownDialogAcitivity", "PlugDownDialogAcitivity oncreate");
        c0.a().d(this);
        this.downloadTask = f.G().V(Integer.parseInt(this.plugNumber));
        this.downloadTasks = f.G().d();
        if (this.downloadTask == null) {
            finish();
            return;
        }
        TextView textView = this.title;
        textView.setText("正在初始化" + this.downloadTask.getShowName());
        this.ok.setText("后台下载");
        if (this.downloadTask.getStatus() == 5) {
            for (DownloadTask downloadTask : this.downloadTasks) {
                if (downloadTask.getPlugin_num().equals(this.plugNumber) && !this.plugNumber.equals(downloadTask.getCrc_link_type_val()) && downloadTask.getStatus() == 5) {
                    int i2 = (downloadTask.getFinishTime() > 0L ? 1 : (downloadTask.getFinishTime() == 0L ? 0 : -1));
                    this.lastGame = downloadTask;
                }
            }
            DownloadTask downloadTask2 = this.lastGame;
            if (downloadTask2 != null) {
                this.title.setText(downloadTask2.getShowName());
            }
            TextView textView2 = this.info;
            textView2.setText(this.downloadTask.getShowName() + "初始化完成");
            MyImageLoader.h(this.icon, this.lastGame.getPortraitURL());
            p.l(this).K1(Event.showEmuLoadFininsh, new Ext());
        } else {
            p.l(this).K1(Event.showEmuLoading, new Ext());
        }
        notifyUi();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Click
    public void cancle() {
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        if (status != 5) {
            if (status == 11) {
                finish();
            }
            finish();
            return;
        }
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyUi() {
        DownloadTask downloadTask = this.downloadTask;
        int status = downloadTask != null ? downloadTask.getStatus() : 0;
        long parseDouble = (long) (Double.parseDouble(this.downloadTask.getShowSize()) * 1024.0d * 1024.0d);
        if (status != 2) {
            if (status != 3) {
                if (status != 5) {
                    if (status != 6) {
                        if (status != 42) {
                            switch (status) {
                                case 10:
                                    if (this.downloadTask != null) {
                                        TextView textView = this.appSize;
                                        textView.setText(UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble));
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
                                    this.ok.setText("安装");
                                    return;
                                case 12:
                                    TextView textView2 = this.appSize;
                                    textView2.setText(UtilsMy.a(parseDouble) + e.F0 + UtilsMy.a(parseDouble));
                                    this.lodingInfo.setText("解压中..");
                                    this.progressBarZip.setVisibility(0);
                                    this.progressBar.setVisibility(8);
                                    this.progressBarZip.setProgress((int) this.downloadTask.getProgress());
                                    return;
                                case 13:
                                    TextView textView3 = this.appSize;
                                    textView3.setText(UtilsMy.a(parseDouble) + e.F0 + UtilsMy.a(parseDouble));
                                    this.lodingInfo.setText("点击重新解压");
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
                this.ok.setText("开始游戏");
                return;
            }
            DownloadTask downloadTask2 = this.downloadTask;
            if (downloadTask2 != null) {
                try {
                    if (downloadTask2.getSize() == 0) {
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
        DownloadTask downloadTask3 = this.downloadTask;
        if (downloadTask3 != null) {
            if (downloadTask3.getSize() == 0) {
                TextView textView7 = this.appSize;
                textView7.setText(UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble));
            } else {
                TextView textView8 = this.appSize;
                textView8.setText(UtilsMy.a(this.downloadTask.getCurrentSize()) + e.F0 + UtilsMy.a(parseDouble));
            }
            this.progressBar.setProgress((int) this.downloadTask.getProgress());
            String speed = this.downloadTask.getSpeed();
            TextView textView9 = this.lodingInfo;
            textView9.setText(speed + "/S");
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
