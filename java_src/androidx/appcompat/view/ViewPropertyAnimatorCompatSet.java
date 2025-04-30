package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ViewPropertyAnimatorCompatSet {

    /* renamed from: c  reason: collision with root package name */
    private Interpolator f507c;

    /* renamed from: d  reason: collision with root package name */
    ViewPropertyAnimatorListener f508d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f509e;

    /* renamed from: b  reason: collision with root package name */
    private long f506b = -1;

    /* renamed from: f  reason: collision with root package name */
    private final ViewPropertyAnimatorListenerAdapter f510f = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.view.ViewPropertyAnimatorCompatSet.1

        /* renamed from: a  reason: collision with root package name */
        private boolean f511a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f512b = 0;

        void a() {
            this.f512b = 0;
            this.f511a = false;
            ViewPropertyAnimatorCompatSet.this.a();
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            int i2 = this.f512b + 1;
            this.f512b = i2;
            if (i2 == ViewPropertyAnimatorCompatSet.this.f505a.size()) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.f508d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.onAnimationEnd(null);
                }
                a();
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            if (this.f511a) {
                return;
            }
            this.f511a = true;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.f508d;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationStart(null);
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<ViewPropertyAnimatorCompat> f505a = new ArrayList<>();

    void a() {
        this.f509e = false;
    }

    public void cancel() {
        if (this.f509e) {
            Iterator<ViewPropertyAnimatorCompat> it2 = this.f505a.iterator();
            while (it2.hasNext()) {
                it2.next().cancel();
            }
            this.f509e = false;
        }
    }

    public ViewPropertyAnimatorCompatSet play(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.f509e) {
            this.f505a.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet playSequentially(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.f505a.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.setStartDelay(viewPropertyAnimatorCompat.getDuration());
        this.f505a.add(viewPropertyAnimatorCompat2);
        return this;
    }

    public ViewPropertyAnimatorCompatSet setDuration(long j4) {
        if (!this.f509e) {
            this.f506b = j4;
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet setInterpolator(Interpolator interpolator) {
        if (!this.f509e) {
            this.f507c = interpolator;
        }
        return this;
    }

    public ViewPropertyAnimatorCompatSet setListener(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.f509e) {
            this.f508d = viewPropertyAnimatorListener;
        }
        return this;
    }

    public void start() {
        if (this.f509e) {
            return;
        }
        Iterator<ViewPropertyAnimatorCompat> it2 = this.f505a.iterator();
        while (it2.hasNext()) {
            ViewPropertyAnimatorCompat next = it2.next();
            long j4 = this.f506b;
            if (j4 >= 0) {
                next.setDuration(j4);
            }
            Interpolator interpolator = this.f507c;
            if (interpolator != null) {
                next.setInterpolator(interpolator);
            }
            if (this.f508d != null) {
                next.setListener(this.f510f);
            }
            next.start();
        }
        this.f509e = true;
    }
}
