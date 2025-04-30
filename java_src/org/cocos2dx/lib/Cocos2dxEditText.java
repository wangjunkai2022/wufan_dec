package org.cocos2dx.lib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;
/* loaded from: classes5.dex */
public class Cocos2dxEditText extends EditText {
    private Cocos2dxGLSurfaceView mCocos2dxGLSurfaceView;

    public Cocos2dxEditText(Context context) {
        super(context);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        super.onKeyDown(i2, keyEvent);
        if (i2 == 4) {
            this.mCocos2dxGLSurfaceView.requestFocus();
            return true;
        }
        return true;
    }

    public void setCocos2dxGLSurfaceView(Cocos2dxGLSurfaceView cocos2dxGLSurfaceView) {
        this.mCocos2dxGLSurfaceView = cocos2dxGLSurfaceView;
    }

    public Cocos2dxEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public Cocos2dxEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
