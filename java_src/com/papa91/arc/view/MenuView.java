package com.papa91.arc.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
import android.os.CountDownTimer;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.papa91.arc.EmuActivity_psp;
import com.papa91.arc.widget.view.MImageView;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class MenuView extends RelativeLayout implements View.OnClickListener, View.OnTouchListener {
    private final String TAG;
    ImageView alert;
    View changeDisk;
    View cheating;
    CountDownTimer countDownTimer;
    Dialog dialog;
    View exit;
    MImageView fCheating;
    MImageView fGate;
    MImageView fHide;
    MImageView fOneKey;
    MImageView fQuickSlot;
    MImageView fScreenShot;
    MImageView fShow;
    View forum;
    private boolean hiding;
    boolean isRankTimeStop;
    boolean isSound;
    boolean isVibrate;
    ImageView iv_timer;
    LinearLayout ll_play_time;
    View menuBar;
    View menuBarOutSide;
    int menuBarStatue;
    MenuViewListener menuViewListener;
    long millisUntilFinish;
    View pause;
    View pauseBar;
    View performance;
    View quickSlot;
    int rankTime;
    View reload;
    View resume;
    ScheduledExecutorService scheduledExecutorService;
    private boolean showAdImage;
    private boolean showChangeDisk;
    View slot;
    View stickKeys;
    TextView timer;
    View timerBg;
    View timerContainer;
    TextView tip;
    TextView tv_game_pass;
    TextView tv_time;
    View v_line;
    View vibrate;
    View voice;

    public MenuView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.isSound = true;
        this.isVibrate = false;
        this.hiding = false;
        this.showAdImage = false;
        this.showChangeDisk = false;
        this.isRankTimeStop = false;
        this.rankTime = 0;
        this.menuBarStatue = 0;
        initView();
    }

    private void initView() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.menu_view, this);
        this.fCheating = (MImageView) inflate.findViewById(R.id.fCheating);
        this.fQuickSlot = (MImageView) inflate.findViewById(R.id.fQuickSlot);
        this.fHide = (MImageView) inflate.findViewById(R.id.fHide);
        this.fShow = (MImageView) inflate.findViewById(R.id.fShow);
        this.fScreenShot = (MImageView) inflate.findViewById(R.id.fScreenShot);
        this.fGate = (MImageView) inflate.findViewById(R.id.fGate);
        this.fOneKey = (MImageView) inflate.findViewById(R.id.fOneKey);
        this.pause = inflate.findViewById(R.id.pause);
        this.pauseBar = inflate.findViewById(R.id.pauseBar);
        this.resume = inflate.findViewById(R.id.resume);
        this.menuBarOutSide = inflate.findViewById(R.id.menuBarOutSide);
        this.menuBar = inflate.findViewById(R.id.menuBar);
        this.exit = inflate.findViewById(R.id.exit);
        this.reload = inflate.findViewById(R.id.reload);
        this.voice = inflate.findViewById(R.id.voice);
        this.vibrate = inflate.findViewById(R.id.vibrate);
        this.quickSlot = inflate.findViewById(R.id.quickSlot);
        this.forum = inflate.findViewById(R.id.forum);
        this.changeDisk = inflate.findViewById(R.id.changeDisk);
        this.slot = inflate.findViewById(R.id.slot);
        this.cheating = inflate.findViewById(R.id.cheating);
        this.performance = inflate.findViewById(R.id.performance);
        this.stickKeys = inflate.findViewById(R.id.stickKeys);
        this.timerContainer = inflate.findViewById(R.id.timerContainer);
        this.timerBg = inflate.findViewById(R.id.timerBg);
        this.timer = (TextView) inflate.findViewById(R.id.timer);
        this.alert = (ImageView) inflate.findViewById(R.id.alert);
        this.ll_play_time = (LinearLayout) inflate.findViewById(R.id.ll_play_time);
        this.iv_timer = (ImageView) inflate.findViewById(R.id.iv_timer);
        this.tv_time = (TextView) inflate.findViewById(R.id.tv_time);
        this.v_line = inflate.findViewById(R.id.v_line);
        this.tv_game_pass = (TextView) inflate.findViewById(R.id.tv_game_pass);
        this.fCheating.setOnClickListener(this);
        this.fQuickSlot.setOnClickListener(this);
        this.fHide.setOnClickListener(this);
        this.fShow.setOnClickListener(this);
        this.fScreenShot.setOnClickListener(this);
        this.fGate.setOnClickListener(this);
        this.fOneKey.setOnClickListener(this);
        this.pause.setOnClickListener(this);
        this.resume.setOnClickListener(this);
        this.menuBar.setOnClickListener(this);
        this.exit.setOnClickListener(this);
        this.reload.setOnClickListener(this);
        this.voice.setOnClickListener(this);
        this.vibrate.setOnClickListener(this);
        this.quickSlot.setOnClickListener(this);
        this.forum.setOnClickListener(this);
        this.slot.setOnClickListener(this);
        this.cheating.setOnClickListener(this);
        this.performance.setOnClickListener(this);
        this.stickKeys.setOnClickListener(this);
        this.timerBg.setOnClickListener(this);
        this.timer.setOnClickListener(this);
        this.changeDisk.setOnClickListener(this);
        this.tv_game_pass.setOnClickListener(this);
        this.menuBar.setOnTouchListener(new View.OnTouchListener() { // from class: com.papa91.arc.view.MenuView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 4) {
                    MenuView.this.dismissMenu();
                    return true;
                }
                return false;
            }
        });
        this.menuBarOutSide.setOnTouchListener(this);
        this.changeDisk.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateTime$0(int i2, int i4, int i5, int i6) {
        Object obj;
        Object obj2;
        Object obj3;
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null) {
            if (i2 >= menuViewListener.getMiniRankTime()) {
                this.tv_game_pass.setTextColor(Color.parseColor("#A7E0FF"));
            } else {
                this.tv_game_pass.setTextColor(Color.parseColor("#6F7989"));
            }
        }
        TextView textView = this.tv_time;
        StringBuilder sb = new StringBuilder();
        if (i4 > 9) {
            obj = Integer.valueOf(i4);
        } else {
            obj = "0" + i4;
        }
        sb.append(obj);
        sb.append(":");
        if (i5 > 9) {
            obj2 = Integer.valueOf(i5);
        } else {
            obj2 = "0" + i5;
        }
        sb.append(obj2);
        sb.append(":");
        if (i6 > 9) {
            obj3 = Integer.valueOf(i6);
        } else {
            obj3 = "0" + i6;
        }
        sb.append(obj3);
        textView.setText(sb.toString());
    }

    void alertRing() {
        if (this.millisUntilFinish / 1000 >= 10 || !(this.alert.getDrawable() instanceof AnimationDrawable)) {
            return;
        }
        ((AnimationDrawable) this.alert.getDrawable()).start();
    }

    void alertStop() {
        if (this.alert.getDrawable() instanceof AnimationDrawable) {
            ((AnimationDrawable) this.alert.getDrawable()).stop();
        }
    }

    public void amplification() {
        if (menuShowing() || this.pauseBar.getVisibility() == 4) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.pauseBar, "translationY", 0.0f, this.pauseBar.getMeasuredHeight()).setDuration(160L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.papa91.arc.view.MenuView.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                MenuView.this.pauseBar.setVisibility(4);
            }
        });
        duration.start();
    }

    public void dismissMenu() {
        View view = this.menuBar;
        if (view == null || this.pauseBar == null || this.hiding) {
            return;
        }
        this.hiding = true;
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.menuBar, "translationY", 0, view.getMeasuredHeight() - this.pauseBar.getMeasuredHeight()).setDuration(160L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.papa91.arc.view.MenuView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                MenuView.this.menuBar.setVisibility(8);
                MenuView.this.hiding = false;
                MenuViewListener menuViewListener = MenuView.this.menuViewListener;
                if (menuViewListener != null) {
                    menuViewListener.saveGameConfig();
                }
            }
        });
        duration.start();
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.needShowBottomBar()) {
            this.pauseBar.setVisibility(0);
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.pauseBar, "alpha", 0.0f, 1.0f);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.papa91.arc.view.MenuView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
            }
        });
        ofFloat.setDuration(180L);
        ofFloat.start();
        this.changeDisk.setVisibility(8);
    }

    public int getRankTime() {
        return this.rankTime;
    }

    public void hide() {
        hide(0);
    }

    public void hide2Float() {
        this.menuBarStatue = this.menuBar.getVisibility() == 0 ? 1 : 0;
        MImageView mImageView = this.fShow;
        ObjectAnimator duration = ObjectAnimator.ofFloat(mImageView, "translationX", -mImageView.getMeasuredWidth(), 0.0f).setDuration(180L);
        duration.addListener(new Animator.AnimatorListener() { // from class: com.papa91.arc.view.MenuView.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MenuView.this.fShow.setVisibility(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        duration.start();
        this.fHide.hide(true);
        this.fScreenShot.hide(true);
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isShowGate()) {
            this.fGate.hide(true);
        }
        MenuViewListener menuViewListener2 = this.menuViewListener;
        if (menuViewListener2 != null && menuViewListener2.isShowOnekey()) {
            this.fOneKey.hide(true);
        }
        MenuViewListener menuViewListener3 = this.menuViewListener;
        if (menuViewListener3 != null && menuViewListener3.isShowCheating()) {
            this.fCheating.hide(true);
        }
        MenuViewListener menuViewListener4 = this.menuViewListener;
        if (menuViewListener4 != null && menuViewListener4.isShowQuickSlot()) {
            this.fQuickSlot.hide(true);
        }
        MenuViewListener menuViewListener5 = this.menuViewListener;
        if (menuViewListener5 != null && menuViewListener5.isRankGame()) {
            this.ll_play_time.setVisibility(8);
        }
        this.pauseBar.setVisibility(8);
        this.pause.setVisibility(8);
        this.menuBar.setVisibility(8);
    }

    public void hideTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            this.ll_play_time.setVisibility(8);
            return;
        }
        View view = this.timerContainer;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public boolean isTimerShowing() {
        return this.timerContainer.getVisibility() == 0 && this.millisUntilFinish / 1000 > 0;
    }

    public boolean menuShowing() {
        View view = this.menuBar;
        return view != null && view.getVisibility() == 0;
    }

    public void narrow() {
        if (this.pauseBar.getVisibility() == 0) {
            return;
        }
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.pauseBar, "translationY", this.pauseBar.getMeasuredHeight(), 0.0f).setDuration(160L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.papa91.arc.view.MenuView.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                MenuView.this.pauseBar.setVisibility(0);
            }
        });
        duration.start();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MenuViewListener menuViewListener;
        int id = view.getId();
        if (id == R.id.pause) {
            popupMenu();
            MenuViewListener menuViewListener2 = this.menuViewListener;
            if (menuViewListener2 != null) {
                menuViewListener2.gameOnPause();
            }
        } else if (id == R.id.resume) {
            dismissMenu();
            MenuViewListener menuViewListener3 = this.menuViewListener;
            if (menuViewListener3 != null) {
                menuViewListener3.gameOnResume();
            }
        } else if (id == R.id.menuBarOutSide) {
            if (!menuShowing() || this.hiding) {
                return;
            }
            dismissMenu();
            MenuViewListener menuViewListener4 = this.menuViewListener;
            if (menuViewListener4 != null) {
                menuViewListener4.gameOnResume();
            }
        } else if (id == R.id.menuBar) {
        } else {
            if (id == R.id.fHide) {
                hide2Float();
                MenuViewListener menuViewListener5 = this.menuViewListener;
                if (menuViewListener5 != null) {
                    menuViewListener5.onHideMenu();
                }
            } else if (id == R.id.fShow) {
                show();
            } else if (id != R.id.slot && id != R.id.fQuickSlot) {
                if (id != R.id.cheating && id != R.id.fCheating) {
                    if (id == R.id.performance) {
                        MenuViewListener menuViewListener6 = this.menuViewListener;
                        if (menuViewListener6 != null) {
                            menuViewListener6.showMenuPerformance();
                        }
                        dismissMenu();
                        return;
                    } else if (id == R.id.exit) {
                        MenuViewListener menuViewListener7 = this.menuViewListener;
                        if (menuViewListener7 != null) {
                            menuViewListener7.exit();
                            return;
                        }
                        return;
                    } else if (id == R.id.reload) {
                        showReloadPrompt();
                        return;
                    } else if (id == R.id.voice) {
                        boolean z3 = !this.isSound;
                        this.isSound = z3;
                        MenuViewListener menuViewListener8 = this.menuViewListener;
                        if (menuViewListener8 != null) {
                            menuViewListener8.voice(z3);
                        }
                        if (this.isSound) {
                            this.voice.setBackgroundResource(R.drawable.voice);
                            return;
                        } else {
                            this.voice.setBackgroundResource(R.drawable.voice_mute);
                            return;
                        }
                    } else if (id == R.id.vibrate) {
                        boolean z4 = !this.isVibrate;
                        this.isVibrate = z4;
                        MenuViewListener menuViewListener9 = this.menuViewListener;
                        if (menuViewListener9 != null) {
                            menuViewListener9.vibrate(z4);
                        }
                        if (this.isVibrate) {
                            this.vibrate.setBackgroundResource(R.drawable.vibrate);
                            return;
                        } else {
                            this.vibrate.setBackgroundResource(R.drawable.vibrate_off);
                            return;
                        }
                    } else if (id == R.id.quickSlot) {
                        MenuViewListener menuViewListener10 = this.menuViewListener;
                        if (menuViewListener10 != null) {
                            menuViewListener10.quickSlot();
                            return;
                        }
                        return;
                    } else if (id == R.id.forum) {
                        MenuViewListener menuViewListener11 = this.menuViewListener;
                        if (menuViewListener11 != null) {
                            menuViewListener11.forum();
                            return;
                        }
                        return;
                    } else if (id == R.id.stickKeys) {
                        MenuViewListener menuViewListener12 = this.menuViewListener;
                        if (menuViewListener12 != null) {
                            menuViewListener12.keysSetting();
                            return;
                        }
                        return;
                    } else if (id != R.id.timerBg && id != R.id.timer) {
                        if (id == R.id.fGate) {
                            MenuViewListener menuViewListener13 = this.menuViewListener;
                            if (menuViewListener13 != null) {
                                menuViewListener13.showMenuGate();
                                return;
                            }
                            return;
                        } else if (id == R.id.fOneKey) {
                            MenuViewListener menuViewListener14 = this.menuViewListener;
                            if (menuViewListener14 != null) {
                                menuViewListener14.showMenuOnekey();
                                return;
                            }
                            return;
                        } else if (id == R.id.fScreenShot) {
                            if (this.showAdImage) {
                                MenuViewListener menuViewListener15 = this.menuViewListener;
                                if (menuViewListener15 != null) {
                                    menuViewListener15.onAdImageClick();
                                    return;
                                }
                                return;
                            }
                            MenuViewListener menuViewListener16 = this.menuViewListener;
                            if (menuViewListener16 != null) {
                                menuViewListener16.onScreenShot();
                                return;
                            }
                            return;
                        } else if (id == R.id.changeDisk) {
                            dismissMenu();
                            MenuViewListener menuViewListener17 = this.menuViewListener;
                            if (menuViewListener17 != null) {
                                menuViewListener17.onChangeDisk();
                            }
                            MenuViewListener menuViewListener18 = this.menuViewListener;
                            if (menuViewListener18 != null) {
                                menuViewListener18.gameOnResume();
                                return;
                            }
                            return;
                        } else if (id != R.id.tv_game_pass || (menuViewListener = this.menuViewListener) == null) {
                            return;
                        } else {
                            menuViewListener.onRankFinish(this.rankTime);
                            return;
                        }
                    } else {
                        MenuViewListener menuViewListener19 = this.menuViewListener;
                        if (menuViewListener19 != null) {
                            menuViewListener19.showTimeLimitedDialog1();
                        }
                        EmuActivity_psp.sendLimitStat("OnClickPSPCutDown");
                        return;
                    }
                }
                MenuViewListener menuViewListener20 = this.menuViewListener;
                if (menuViewListener20 != null) {
                    menuViewListener20.showMenuCheating();
                }
                dismissMenu();
            } else {
                MenuViewListener menuViewListener21 = this.menuViewListener;
                if (menuViewListener21 != null) {
                    menuViewListener21.showMenuSlot();
                }
                dismissMenu();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        releaseTimer();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (menuShowing()) {
            dismissMenu();
            MenuViewListener menuViewListener = this.menuViewListener;
            if (menuViewListener != null) {
                menuViewListener.gameOnResume();
                return true;
            }
            return true;
        }
        return false;
    }

    public void pauseTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            this.isRankTimeStop = true;
            return;
        }
        releaseTimer();
        alertStop();
    }

    public void popupMenu() {
        View view;
        if (this.menuBar == null || (view = this.pauseBar) == null) {
            return;
        }
        view.setVisibility(8);
        this.menuBar.setVisibility(0);
        int measuredHeight = this.menuBar.getMeasuredHeight() - this.pauseBar.getMeasuredHeight();
        if (measuredHeight == 0) {
            measuredHeight = (int) TypedValue.applyDimension(1, 106.0f, getResources().getDisplayMetrics());
        }
        StringBuilder sb = new StringBuilder();
        sb.append("pop start=");
        sb.append(0);
        sb.append(", end=");
        sb.append(measuredHeight);
        ObjectAnimator.ofFloat(this.menuBar, "translationY", measuredHeight, 0).setDuration(180L).start();
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null) {
            this.isSound = menuViewListener.IsSoundEnable();
        }
        MenuViewListener menuViewListener2 = this.menuViewListener;
        if (menuViewListener2 != null) {
            this.isVibrate = menuViewListener2.IsHapticFeedbackEnable();
        }
        if (this.isSound) {
            this.voice.setBackgroundResource(R.drawable.voice);
        } else {
            this.voice.setBackgroundResource(R.drawable.voice_mute);
        }
        if (this.isVibrate) {
            this.vibrate.setBackgroundResource(R.drawable.vibrate);
        } else {
            this.vibrate.setBackgroundResource(R.drawable.vibrate_off);
        }
        MenuViewListener menuViewListener3 = this.menuViewListener;
        if (menuViewListener3 != null) {
            this.changeDisk.setVisibility(menuViewListener3.getChangeDiskState() ? 0 : 8);
        }
    }

    public void releaseTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
            if (scheduledExecutorService != null) {
                this.isRankTimeStop = true;
                try {
                    scheduledExecutorService.shutdown();
                    return;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            }
            return;
        }
        alertStop();
        CountDownTimer countDownTimer = this.countDownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.countDownTimer = null;
        }
    }

    public void resumeTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            this.isRankTimeStop = false;
        } else {
            startTimer(this.millisUntilFinish);
        }
    }

    public void setMenuViewListener(MenuViewListener menuViewListener) {
        this.menuViewListener = menuViewListener;
        if (menuViewListener.isShowGate()) {
            this.fGate.setVisibility(0);
        } else {
            this.fGate.setVisibility(8);
        }
        if (this.menuViewListener.isShowOnekey()) {
            this.fOneKey.setVisibility(0);
        } else {
            this.fOneKey.setVisibility(8);
        }
        if (this.menuViewListener.isShowCheating()) {
            this.fCheating.setVisibility(0);
        } else {
            this.fCheating.setVisibility(8);
        }
        if (this.menuViewListener.isShowQuickSlot()) {
            this.fQuickSlot.setVisibility(0);
        } else {
            this.fQuickSlot.setVisibility(8);
        }
        if (this.menuViewListener.needShowTimer()) {
            showTimer();
        } else {
            hideTimer();
        }
        MenuViewListener menuViewListener2 = this.menuViewListener;
        if (menuViewListener2 != null && menuViewListener2.needShowBottomBar()) {
            this.pauseBar.setVisibility(0);
        } else {
            this.pauseBar.setVisibility(8);
        }
        MenuViewListener menuViewListener3 = this.menuViewListener;
        if (menuViewListener3 != null && menuViewListener3.isRankAutoUpload()) {
            this.tv_game_pass.setVisibility(8);
            this.v_line.setVisibility(8);
            return;
        }
        this.tv_game_pass.setVisibility(0);
        this.v_line.setVisibility(0);
    }

    public void setRankTimeStop(boolean z3) {
        this.isRankTimeStop = z3;
    }

    public void setTime(long j4) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) ((j4 / 1000) + " "));
        SpannableString spannableString = new SpannableString("进入广告");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#9C7140")), 0, spannableString.length(), 33);
        spannableStringBuilder.append((CharSequence) spannableString);
        this.timer.setText(spannableStringBuilder);
    }

    public void show() {
        setVisibility(0);
        MImageView mImageView = this.fShow;
        ObjectAnimator duration = ObjectAnimator.ofFloat(mImageView, "translationX", 0.0f, -mImageView.getMeasuredWidth()).setDuration(180L);
        duration.addListener(new Animator.AnimatorListener() { // from class: com.papa91.arc.view.MenuView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                MenuView.this.fShow.setVisibility(8);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        duration.start();
        this.fHide.show(true);
        this.fScreenShot.show(true);
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isShowOnekey()) {
            this.fOneKey.show(true);
        }
        MenuViewListener menuViewListener2 = this.menuViewListener;
        if (menuViewListener2 != null && menuViewListener2.isShowGate()) {
            this.fGate.show(true);
        }
        MenuViewListener menuViewListener3 = this.menuViewListener;
        if (menuViewListener3 != null && menuViewListener3.isShowCheating()) {
            this.fCheating.show(true);
        }
        MenuViewListener menuViewListener4 = this.menuViewListener;
        if (menuViewListener4 != null && menuViewListener4.isShowQuickSlot()) {
            this.fQuickSlot.show(true);
        }
        MenuViewListener menuViewListener5 = this.menuViewListener;
        if (menuViewListener5 != null && menuViewListener5.needShowBottomBar()) {
            this.pauseBar.setVisibility(0);
            this.pause.setVisibility(0);
        } else {
            this.pauseBar.setVisibility(8);
            this.pause.setVisibility(8);
        }
        MenuViewListener menuViewListener6 = this.menuViewListener;
        if (menuViewListener6 != null && menuViewListener6.isRankGame()) {
            this.ll_play_time.setVisibility(0);
        } else {
            this.ll_play_time.setVisibility(8);
        }
        this.menuBar.setVisibility(8);
        if (this.menuBarStatue == 1) {
            popupMenu();
            this.menuBarStatue = 0;
        }
    }

    public void showAdImage(boolean z3, String str) {
        this.showAdImage = z3;
        if (z3) {
            this.fScreenShot.setController(Fresco.newDraweeControllerBuilder().a(Uri.parse(str)).E(true).build());
            return;
        }
        this.fScreenShot.setImageResource(R.drawable.f_screen_shot);
    }

    public void showReloadPrompt() {
        if (this.dialog == null) {
            Dialog dialog = new Dialog(getContext(), R.style.PspDialog);
            this.dialog = dialog;
            dialog.setContentView(R.layout.dialog_exit);
            this.dialog.setCanceledOnTouchOutside(true);
            this.tip = (TextView) this.dialog.findViewById(R.id.textView2);
            this.dialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.view.MenuView.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Dialog dialog2 = MenuView.this.dialog;
                    if (dialog2 != null) {
                        dialog2.dismiss();
                    }
                }
            });
        }
        this.dialog.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() { // from class: com.papa91.arc.view.MenuView.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Dialog dialog2 = MenuView.this.dialog;
                if (dialog2 != null) {
                    dialog2.dismiss();
                }
                MenuView.this.dismissMenu();
                MenuViewListener menuViewListener = MenuView.this.menuViewListener;
                if (menuViewListener != null) {
                    menuViewListener.reload();
                }
            }
        });
        this.tip.setText("是否要重新启动游戏？");
        if (this.dialog.isShowing()) {
            return;
        }
        this.dialog.show();
    }

    public void showTimer() {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            this.ll_play_time.setVisibility(0);
            this.timerContainer.setVisibility(8);
            return;
        }
        View view = this.timerContainer;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    public void startTimer(long j4) {
        MenuViewListener menuViewListener = this.menuViewListener;
        if (menuViewListener != null && menuViewListener.isRankGame()) {
            if (this.scheduledExecutorService == null) {
                ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1);
                this.scheduledExecutorService = newScheduledThreadPool;
                newScheduledThreadPool.scheduleAtFixedRate(new Runnable() { // from class: com.papa91.arc.view.MenuView.10
                    @Override // java.lang.Runnable
                    public void run() {
                        MenuView menuView = MenuView.this;
                        if (!menuView.isRankTimeStop) {
                            menuView.rankTime++;
                        }
                        menuView.updateTime(menuView.rankTime);
                    }
                }, 1L, 1L, TimeUnit.SECONDS);
            }
        } else if (this.countDownTimer == null) {
            this.millisUntilFinish = j4;
            CountDownTimer countDownTimer = new CountDownTimer(j4, 1000L) { // from class: com.papa91.arc.view.MenuView.11
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    MenuView menuView = MenuView.this;
                    menuView.millisUntilFinish = 0L;
                    menuView.alertRing();
                    MenuView.this.hideTimer();
                    MenuViewListener menuViewListener2 = MenuView.this.menuViewListener;
                    if (menuViewListener2 != null) {
                        menuViewListener2.showTimeLimitedDialog2();
                    }
                    EmuActivity_psp.sendLimitStat("PSPLimitPopup");
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j5) {
                    MenuView.this.millisUntilFinish = j5;
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append((CharSequence) ((j5 / 1000) + " "));
                    SpannableString spannableString = new SpannableString("进入广告");
                    spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#9C7140")), 0, spannableString.length(), 33);
                    spannableStringBuilder.append((CharSequence) spannableString);
                    MenuView.this.timer.setText(spannableStringBuilder);
                    MenuView.this.alertRing();
                    MenuViewListener menuViewListener2 = MenuView.this.menuViewListener;
                    if (menuViewListener2 != null) {
                        menuViewListener2.onTimerTick(j5);
                    }
                }
            };
            this.countDownTimer = countDownTimer;
            countDownTimer.start();
        }
    }

    public void updateTime(final int i2) {
        final int i4 = i2 / 3600;
        int i5 = i2 - (i4 * 3600);
        final int i6 = i5 / 60;
        final int i7 = i5 - (i6 * 60);
        post(new Runnable() { // from class: com.papa91.arc.view.a
            @Override // java.lang.Runnable
            public final void run() {
                MenuView.this.lambda$updateTime$0(i2, i4, i6, i7);
            }
        });
    }

    public void hide(int i2) {
        if (i2 == 1) {
            this.menuBarStatue = this.menuBar.getVisibility() != 0 ? 0 : 1;
        }
        setVisibility(4);
    }

    public MenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = getClass().getSimpleName();
        this.isSound = true;
        this.isVibrate = false;
        this.hiding = false;
        this.showAdImage = false;
        this.showChangeDisk = false;
        this.isRankTimeStop = false;
        this.rankTime = 0;
        this.menuBarStatue = 0;
        initView();
    }

    public MenuView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.TAG = getClass().getSimpleName();
        this.isSound = true;
        this.isVibrate = false;
        this.hiding = false;
        this.showAdImage = false;
        this.showChangeDisk = false;
        this.isRankTimeStop = false;
        this.rankTime = 0;
        this.menuBarStatue = 0;
        initView();
    }
}
