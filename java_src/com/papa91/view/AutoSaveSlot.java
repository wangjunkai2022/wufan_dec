package com.papa91.view;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.join.mgps.Util.g0;
import com.join.mgps.data.c;
import com.papa91.activity.EmuBaseActivity;
import com.papa91.mix.R;
import com.papa91.view.CountDownView;
import com.papa91.view.smartpopupwindow.SmartPopupWindow;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.regex.Pattern;
import net.lingala.zip4j.util.e;
/* loaded from: classes4.dex */
public class AutoSaveSlot {
    private final Activity context;
    CountDownView countDown;
    View countDownBtn;
    AutoSlotDialog dialog;
    Handler handler = new Handler();
    FrameLayout layout;
    private final View parent;
    private String ugcPath;
    private int vipLevel;

    /* loaded from: classes4.dex */
    public static class MyClickListener implements View.OnTouchListener {
        private static int timeout = 400;
        private int clickCount = 0;
        private Handler handler = new Handler();
        private MyClickCallBack myClickCallBack;

        /* loaded from: classes4.dex */
        public interface MyClickCallBack {
            void doubleClick();

            void oneClick();
        }

        public MyClickListener(MyClickCallBack myClickCallBack) {
            this.myClickCallBack = myClickCallBack;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                this.clickCount++;
                this.handler.postDelayed(new Runnable() { // from class: com.papa91.view.AutoSaveSlot.MyClickListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MyClickListener.this.clickCount == 1) {
                            MyClickListener.this.myClickCallBack.oneClick();
                        } else if (MyClickListener.this.clickCount == 2) {
                            MyClickListener.this.myClickCallBack.doubleClick();
                        }
                        MyClickListener.this.handler.removeCallbacksAndMessages(null);
                        MyClickListener.this.clickCount = 0;
                    }
                }, timeout);
                return false;
            }
            return false;
        }
    }

    public AutoSaveSlot(Activity activity, View view) {
        this.context = activity;
        this.parent = view;
        this.layout = new FrameLayout(activity);
        View inflate = LayoutInflater.from(activity).inflate(R.layout.layout_auto_save, (ViewGroup) this.layout, false);
        this.layout.addView(view);
        this.layout.addView(inflate);
        this.countDown = (CountDownView) inflate.findViewById(R.id.countDown);
        this.countDownBtn = inflate.findViewById(R.id.countDownBtn);
        this.countDown.setOnCountDownListener(new CountDownView.OnCountDownListener() { // from class: com.papa91.view.AutoSaveSlot.1
            @Override // com.papa91.view.CountDownView.OnCountDownListener
            public void onCountFinished() {
            }

            @Override // com.papa91.view.CountDownView.OnCountDownListener
            public void onSuccessFinish() {
                AutoSaveSlot.this.handler.postDelayed(new Runnable() { // from class: com.papa91.view.AutoSaveSlot.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AutoSaveSlot.this.countDown.start();
                    }
                }, 500L);
            }
        });
        this.countDownBtn.setOnTouchListener(new MyClickListener(new MyClickListener.MyClickCallBack() { // from class: com.papa91.view.AutoSaveSlot.2
            @Override // com.papa91.view.AutoSaveSlot.MyClickListener.MyClickCallBack
            public void doubleClick() {
                AutoSaveSlot.this.quickLoadSlot();
            }

            @Override // com.papa91.view.AutoSaveSlot.MyClickListener.MyClickCallBack
            public void oneClick() {
                AutoSaveSlot.this.showSlots();
            }
        }));
    }

    public int dip2px(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    FilenameFilter getAutoSlotFilter() {
        return new FilenameFilter() { // from class: com.papa91.view.AutoSaveSlot.6
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                if (str.contains(g0.f27568a) && str.contains("_auto") && !str.contains("lob")) {
                    return isNumeric(str.substring(str.lastIndexOf(g0.f27568a) + 1));
                }
                return false;
            }

            public boolean isNumeric(String str) {
                return Pattern.compile("[0-9]*").matcher(str).matches();
            }
        };
    }

    List<String> getSlots() {
        List<File> asList = Arrays.asList(new File(this.ugcPath).listFiles(getAutoSlotFilter()));
        if (asList == null || asList.size() == 0) {
            asList = new ArrayList();
            String str = this.ugcPath;
            if (!str.endsWith(e.F0)) {
                str = this.ugcPath + e.F0;
            }
            String str2 = str + EmuBaseActivity.romName + "_auto";
            File file = new File(str2 + ".0");
            if (file.exists()) {
                asList.add(file);
            }
            File file2 = new File(str2 + ".1");
            if (file.exists()) {
                asList.add(file2);
            }
            File file3 = new File(str2 + ".2");
            if (file.exists()) {
                asList.add(file3);
            }
        }
        Collections.sort(asList, new Comparator<File>() { // from class: com.papa91.view.AutoSaveSlot.5
            @Override // java.util.Comparator
            public int compare(File file4, File file5) {
                return (int) (file5.lastModified() - file4.lastModified());
            }
        });
        ArrayList arrayList = new ArrayList();
        for (File file4 : asList) {
            if (file4.exists() && file4.isFile()) {
                arrayList.add(file4.getAbsolutePath());
            }
        }
        return arrayList;
    }

    public View getView() {
        return this.layout;
    }

    public void hide() {
    }

    public void pause() {
    }

    public void quickLoadSlot() {
        if (this.vipLevel > 0) {
            List<String> slots = getSlots();
            if (slots == null || slots.size() <= 0 || TextUtils.isEmpty(slots.get(0))) {
                return;
            }
            EmuBaseActivity.loadAutoSlot(slots.get(0), 0);
            return;
        }
        Toast.makeText(this.context, "开通会员即可读取该存档", 0).show();
    }

    public void resume() {
    }

    public void setUgcPath(String str) {
        this.ugcPath = str;
    }

    public void setVipLevel(int i2) {
        this.vipLevel = i2;
        AutoSlotDialog autoSlotDialog = this.dialog;
        if (autoSlotDialog == null || !autoSlotDialog.isShowing()) {
            return;
        }
        this.dialog.setVipLevel(i2);
    }

    public void show() {
    }

    void showAutoSavePop(View view) {
        View inflate = LayoutInflater.from(view.getContext()).inflate(R.layout.pop_auto_save_tip, (ViewGroup) null);
        final SmartPopupWindow createPopupWindow = SmartPopupWindow.Builder.build(this.context, inflate).setOutsideTouchDismiss(true).createPopupWindow();
        createPopupWindow.showAtAnchorView(view, 0, 1);
        inflate.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.view.AutoSaveSlot.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                createPopupWindow.dismiss();
            }
        });
        this.handler.postDelayed(new Runnable() { // from class: com.papa91.view.AutoSaveSlot.4
            @Override // java.lang.Runnable
            public void run() {
                SmartPopupWindow smartPopupWindow = createPopupWindow;
                if (smartPopupWindow == null || !smartPopupWindow.isShowing()) {
                    return;
                }
                createPopupWindow.dismiss();
            }
        }, c.f47286a);
    }

    public void showQuickLoadTip() {
    }

    public void showSlots() {
        if (this.dialog == null) {
            this.dialog = new AutoSlotDialog(this.context);
        }
        this.dialog.show(this.vipLevel, getSlots());
    }

    public void start() {
    }
}
