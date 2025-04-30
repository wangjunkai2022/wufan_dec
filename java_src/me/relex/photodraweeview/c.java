package me.relex.photodraweeview;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.facebook.drawee.view.DraweeView;
/* compiled from: DefaultOnDoubleTapListener.java */
/* loaded from: classes5.dex */
public class c implements GestureDetector.OnDoubleTapListener {

    /* renamed from: a  reason: collision with root package name */
    private a f72674a;

    public c(a aVar) {
        a(aVar);
    }

    public void a(a aVar) {
        this.f72674a = aVar;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        a aVar = this.f72674a;
        if (aVar == null) {
            return false;
        }
        try {
            float scale = aVar.getScale();
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (scale < this.f72674a.getMediumScale()) {
                a aVar2 = this.f72674a;
                aVar2.setScale(aVar2.getMediumScale(), x3, y3, true);
            } else if (scale >= this.f72674a.getMediumScale() && scale < this.f72674a.getMaximumScale()) {
                a aVar3 = this.f72674a;
                aVar3.setScale(aVar3.getMaximumScale(), x3, y3, true);
            } else {
                a aVar4 = this.f72674a;
                aVar4.setScale(aVar4.getMinimumScale(), x3, y3, true);
            }
        } catch (Exception unused) {
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        DraweeView<com.facebook.drawee.generic.a> r3;
        RectF o3;
        a aVar = this.f72674a;
        if (aVar == null || (r3 = aVar.r()) == null) {
            return false;
        }
        if (this.f72674a.getOnPhotoTapListener() != null && (o3 = this.f72674a.o()) != null) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            if (o3.contains(x3, y3)) {
                this.f72674a.getOnPhotoTapListener().a(r3, (x3 - o3.left) / o3.width(), (y3 - o3.top) / o3.height());
                return true;
            }
        }
        if (this.f72674a.getOnViewTapListener() != null) {
            this.f72674a.getOnViewTapListener().a(r3, motionEvent.getX(), motionEvent.getY());
            return true;
        }
        return false;
    }
}
