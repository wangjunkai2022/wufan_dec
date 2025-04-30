package com.join.android.app.component.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.e1;
import com.join.mgps.customview.t;
import com.papa.gsyvideoplayer.utils.l;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
/* loaded from: classes2.dex */
public class EmptyControlVideoView extends StandardGSYVideoPlayer {

    /* renamed from: d  reason: collision with root package name */
    public static boolean f17537d = true;

    /* renamed from: a  reason: collision with root package name */
    public ImageView f17538a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f17539b;

    /* renamed from: c  reason: collision with root package name */
    t f17540c;

    /* loaded from: classes2.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EmptyControlVideoView.this.startPlayLogic();
            EmptyControlVideoView.this.f17540c.dismiss();
        }
    }

    /* loaded from: classes2.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EmptyControlVideoView.this.f17540c.dismiss();
        }
    }

    public EmptyControlVideoView(Context context) {
        super(context);
        this.f17539b = false;
        this.mShowFullAnimation = false;
        this.mFullAnimEnd = false;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public int getLayoutId() {
        return R.layout.video_layout_empty_control_wufun;
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView
    public void init(Context context) {
        super.init(context);
        initCustomView();
    }

    void initCustomView() {
        ImageView imageView = (ImageView) findViewById(R.id.mute);
        this.f17538a = imageView;
        imageView.setOnClickListener(this);
        setMuteView(f17537d);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (view.getId() == R.id.mute) {
            setMute(!f17537d);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView, com.papa.gsyvideoplayer.video.base.GSYVideoView, c2.a
    public void onPrepared() {
        super.onPrepared();
        if (this.f17539b) {
            setMute(true);
            this.f17539b = false;
            return;
        }
        setMute(f17537d);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, d2.c
    public void onSurfaceAvailable(Surface surface) {
        RelativeLayout relativeLayout;
        super.onSurfaceAvailable(surface);
        if (com.papa.gsyvideoplayer.utils.f.e() == 0 || (relativeLayout = this.mThumbImageViewLayout) == null || relativeLayout.getVisibility() != 0) {
            return;
        }
        this.mThumbImageViewLayout.setVisibility(4);
    }

    @Override // com.papa.gsyvideoplayer.video.base.GSYTextureRenderView, d2.c
    public void onSurfaceUpdated(Surface surface) {
        super.onSurfaceUpdated(surface);
        RelativeLayout relativeLayout = this.mThumbImageViewLayout;
        if (relativeLayout == null || relativeLayout.getVisibility() != 0) {
            return;
        }
        this.mThumbImageViewLayout.setVisibility(4);
    }

    public void setMute(boolean z3) {
        setMuteOnly(z3);
        setMuteView(z3);
        f17537d = z3;
    }

    public void setMuteOnly(boolean z3) {
        try {
            com.papa.gsyvideoplayer.d.e0().W(z3);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void setMuteView(boolean z3) {
        if (z3) {
            this.f17538a.setImageResource(R.drawable.mute_off);
        } else {
            this.f17538a.setImageResource(R.drawable.mute_on);
        }
    }

    public void setMuteWhenPlay(boolean z3) {
        this.f17539b = z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void setViewShowState(View view, int i2) {
        if (view != this.mThumbImageViewLayout || i2 == 0) {
            super.setViewShowState(view, i2);
        }
    }

    @Override // com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer, com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    protected void showWifiDialog() {
        String string;
        String str;
        t tVar;
        if (!l.g(this.mContext)) {
            startPlayLogic();
            return;
        }
        if (this.f17540c == null) {
            t tVar2 = new t(getContext(), R.style.MyDialog);
            this.f17540c = tVar2;
            tVar2.setContentView(R.layout.bind_dialog);
        }
        Button button = (Button) this.f17540c.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) this.f17540c.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) this.f17540c.findViewById(R.id.tip_title);
        View findViewById = this.f17540c.findViewById(R.id.divider);
        TextView textView2 = (TextView) this.f17540c.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) this.f17540c.findViewById(R.id.dialog_desci);
        int b4 = e1.b(getContext());
        if (b4 == 0) {
            findViewById.setVisibility(0);
            button.setVisibility(0);
        } else if (b4 != 1) {
            findViewById.setVisibility(8);
            button.setVisibility(8);
            string = getResources().getString(R.string.network_conn_failed);
            str = "关闭";
            textView.setText("网络提示");
            textView2.setText(string);
            textView3.setVisibility(8);
            button2.setText(str);
            button.setText("取消");
            button2.setOnClickListener(new a());
            button.setOnClickListener(new b());
            tVar = this.f17540c;
            if (tVar != null || tVar.isShowing()) {
            }
            this.f17540c.show();
            return;
        }
        str = "继续观看";
        string = "您已切换到数据网络，是否继续观看视频？";
        textView.setText("网络提示");
        textView2.setText(string);
        textView3.setVisibility(8);
        button2.setText(str);
        button.setText("取消");
        button2.setOnClickListener(new a());
        button.setOnClickListener(new b());
        tVar = this.f17540c;
        if (tVar != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchDoubleUp() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.papa.gsyvideoplayer.video.base.GSYVideoControlView
    public void touchSurfaceMoveFullLogic(float f4, float f5) {
        super.touchSurfaceMoveFullLogic(f4, f5);
        this.mChangePosition = false;
        this.mChangeVolume = false;
        this.mBrightness = false;
    }

    public EmptyControlVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17539b = false;
        this.mShowFullAnimation = false;
        this.mFullAnimEnd = false;
    }
}
