package fm.jiecao.jcvideoplayer_lib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.SeekBar;
import android.widget.Toast;
/* loaded from: classes3.dex */
public class JCVideoPlayerSimple extends JCVideoPlayer {
    public JCVideoPlayerSimple(Context context) {
        super(context);
    }

    private void W() {
        int i2 = this.f65554b;
        if (i2 == 3) {
            this.f65560h.setImageResource(R.drawable.jc_click_pause_selector);
        } else if (i2 == 7) {
            this.f65560h.setImageResource(R.drawable.jc_click_error_selector);
        } else {
            this.f65560h.setImageResource(R.drawable.jc_click_play_selector);
        }
    }

    public void V() {
        if (this.f65555c == 2) {
            this.f65562j.setImageResource(R.drawable.jc_shrink);
        } else {
            this.f65562j.setImageResource(R.drawable.jc_enlarge);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public int getLayoutId() {
        return R.layout.jc_layout_base;
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.fullscreen && this.f65554b == 0) {
            Toast.makeText(getContext(), "Play video first", 0).show();
        } else {
            super.onClick(view);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer, android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i2, boolean z3) {
        if (z3 && this.f65554b == 0) {
            Toast.makeText(getContext(), "Play video first", 0).show();
        } else {
            super.onProgressChanged(seekBar, i2, z3);
        }
    }

    @Override // fm.jiecao.jcvideoplayer_lib.JCVideoPlayer
    public void setUp(String str, int i2, Object... objArr) {
        super.setUp(str, i2, objArr);
        V();
        this.f65562j.setVisibility(8);
    }

    public JCVideoPlayerSimple(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
