package com.papa.controller.component.inputmanagercompat;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.input.InputManager;
import android.os.Handler;
import android.view.InputDevice;
import android.view.MotionEvent;
import com.papa.controller.component.inputmanagercompat.a;
import java.util.HashMap;
import java.util.Map;
/* compiled from: InputManagerV16.java */
@TargetApi(16)
/* loaded from: classes4.dex */
public class b implements com.papa.controller.component.inputmanagercompat.a {

    /* renamed from: a  reason: collision with root package name */
    private final InputManager f54679a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<a.b, a> f54680b = new HashMap();

    /* compiled from: InputManagerV16.java */
    /* loaded from: classes4.dex */
    static class a implements InputManager.InputDeviceListener {

        /* renamed from: a  reason: collision with root package name */
        final a.b f54681a;

        public a(a.b bVar) {
            this.f54681a = bVar;
        }

        @Override // android.hardware.input.InputManager.InputDeviceListener
        public void onInputDeviceAdded(int i2) {
            this.f54681a.onInputDeviceAdded(i2);
        }

        @Override // android.hardware.input.InputManager.InputDeviceListener
        public void onInputDeviceChanged(int i2) {
            this.f54681a.onInputDeviceChanged(i2);
        }

        @Override // android.hardware.input.InputManager.InputDeviceListener
        public void onInputDeviceRemoved(int i2) {
            this.f54681a.onInputDeviceRemoved(i2);
        }
    }

    public b(Context context) {
        this.f54679a = (InputManager) context.getSystemService("input");
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void a(MotionEvent motionEvent) {
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void b(a.b bVar) {
        a remove = this.f54680b.remove(bVar);
        if (remove != null) {
            this.f54679a.unregisterInputDeviceListener(remove);
        }
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void c(a.b bVar, Handler handler) {
        a aVar = new a(bVar);
        this.f54679a.registerInputDeviceListener(aVar, handler);
        this.f54680b.put(bVar, aVar);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public InputDevice d(int i2) {
        return this.f54679a.getInputDevice(i2);
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public int[] e() {
        return this.f54679a.getInputDeviceIds();
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onPause() {
    }

    @Override // com.papa.controller.component.inputmanagercompat.a
    public void onResume() {
    }
}
