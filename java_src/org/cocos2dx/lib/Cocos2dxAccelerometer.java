package org.cocos2dx.lib;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.view.WindowManager;
import com.umeng.analytics.pro.ai;
/* loaded from: classes5.dex */
public class Cocos2dxAccelerometer implements SensorEventListener {
    private static final String TAG = Cocos2dxAccelerometer.class.getSimpleName();
    private final Sensor mAccelerometer;
    private final Context mContext;
    private final int mNaturalOrientation;
    private final SensorManager mSensorManager;

    public Cocos2dxAccelerometer(Context context) {
        this.mContext = context;
        SensorManager sensorManager = (SensorManager) context.getSystemService(ai.ac);
        this.mSensorManager = sensorManager;
        this.mAccelerometer = sensorManager.getDefaultSensor(1);
        this.mNaturalOrientation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getOrientation();
    }

    public static native void onSensorChanged(float f4, float f5, float f6, long j4);

    public void disable() {
        this.mSensorManager.unregisterListener(this);
    }

    public void enable() {
        this.mSensorManager.registerListener(this, this.mAccelerometer, 1);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i2) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() != 1) {
            return;
        }
        float[] fArr = sensorEvent.values;
        float f4 = fArr[0];
        float f5 = fArr[1];
        float f6 = fArr[2];
        int i2 = this.mContext.getResources().getConfiguration().orientation;
        if (i2 == 2 && this.mNaturalOrientation != 0) {
            float f7 = -f5;
            f5 = f4;
            f4 = f7;
        } else if (i2 == 1 && this.mNaturalOrientation != 0) {
            f5 = -f4;
            f4 = f5;
        }
        Cocos2dxGLSurfaceView.queueAccelerometer(f4, f5, f6, sensorEvent.timestamp);
    }

    public void setInterval(float f4) {
        if (Build.VERSION.SDK_INT < 11) {
            this.mSensorManager.registerListener(this, this.mAccelerometer, 1);
        } else {
            this.mSensorManager.registerListener(this, this.mAccelerometer, (int) (f4 * 100000.0f));
        }
    }
}
