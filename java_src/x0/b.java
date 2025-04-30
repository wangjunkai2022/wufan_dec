package x0;

import android.util.DisplayMetrics;
import android.widget.RelativeLayout;
import com.flyco.tablayout.widget.MsgView;
/* compiled from: UnreadMsgUtils.java */
/* loaded from: classes2.dex */
public class b {
    public static void a(MsgView msgView, int i2) {
        if (msgView == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) msgView.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i2;
        msgView.setLayoutParams(layoutParams);
    }

    public static void b(MsgView msgView, int i2) {
        if (msgView == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) msgView.getLayoutParams();
        DisplayMetrics displayMetrics = msgView.getResources().getDisplayMetrics();
        msgView.setVisibility(0);
        if (i2 <= 0) {
            msgView.setStrokeWidth(0);
            msgView.setText("");
            float f4 = displayMetrics.density;
            layoutParams.width = (int) (f4 * 5.0f);
            layoutParams.height = (int) (f4 * 5.0f);
            msgView.setLayoutParams(layoutParams);
            return;
        }
        float f5 = displayMetrics.density;
        layoutParams.height = (int) (f5 * 18.0f);
        if (i2 > 0 && i2 < 10) {
            layoutParams.width = (int) (f5 * 18.0f);
            msgView.setText(i2 + "");
        } else if (i2 > 9 && i2 < 100) {
            layoutParams.width = -2;
            msgView.setPadding((int) (f5 * 6.0f), 0, (int) (f5 * 6.0f), 0);
            msgView.setText(i2 + "");
        } else {
            layoutParams.width = -2;
            msgView.setPadding((int) (f5 * 6.0f), 0, (int) (f5 * 6.0f), 0);
            msgView.setText("99+");
        }
        msgView.setLayoutParams(layoutParams);
    }
}
