package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class DefaultItemAnimator extends SimpleItemAnimator {

    /* renamed from: u  reason: collision with root package name */
    private static final boolean f6800u = false;

    /* renamed from: v  reason: collision with root package name */
    private static TimeInterpolator f6801v;

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<RecyclerView.ViewHolder> f6802j = new ArrayList<>();

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<RecyclerView.ViewHolder> f6803k = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    private ArrayList<MoveInfo> f6804l = new ArrayList<>();

    /* renamed from: m  reason: collision with root package name */
    private ArrayList<ChangeInfo> f6805m = new ArrayList<>();

    /* renamed from: n  reason: collision with root package name */
    ArrayList<ArrayList<RecyclerView.ViewHolder>> f6806n = new ArrayList<>();

    /* renamed from: o  reason: collision with root package name */
    ArrayList<ArrayList<MoveInfo>> f6807o = new ArrayList<>();

    /* renamed from: p  reason: collision with root package name */
    ArrayList<ArrayList<ChangeInfo>> f6808p = new ArrayList<>();

    /* renamed from: q  reason: collision with root package name */
    ArrayList<RecyclerView.ViewHolder> f6809q = new ArrayList<>();

    /* renamed from: r  reason: collision with root package name */
    ArrayList<RecyclerView.ViewHolder> f6810r = new ArrayList<>();

    /* renamed from: s  reason: collision with root package name */
    ArrayList<RecyclerView.ViewHolder> f6811s = new ArrayList<>();

    /* renamed from: t  reason: collision with root package name */
    ArrayList<RecyclerView.ViewHolder> f6812t = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class MoveInfo {
        public int fromX;
        public int fromY;
        public RecyclerView.ViewHolder holder;
        public int toX;
        public int toY;

        MoveInfo(RecyclerView.ViewHolder viewHolder, int i2, int i4, int i5, int i6) {
            this.holder = viewHolder;
            this.fromX = i2;
            this.fromY = i4;
            this.toX = i5;
            this.toY = i6;
        }
    }

    private void f(final RecyclerView.ViewHolder viewHolder) {
        final View view = viewHolder.itemView;
        final ViewPropertyAnimator animate = view.animate();
        this.f6811s.add(viewHolder);
        animate.setDuration(getRemoveDuration()).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                view.setAlpha(1.0f);
                DefaultItemAnimator.this.dispatchRemoveFinished(viewHolder);
                DefaultItemAnimator.this.f6811s.remove(viewHolder);
                DefaultItemAnimator.this.h();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DefaultItemAnimator.this.dispatchRemoveStarting(viewHolder);
            }
        }).start();
    }

    private void i(List<ChangeInfo> list, RecyclerView.ViewHolder viewHolder) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ChangeInfo changeInfo = list.get(size);
            if (k(changeInfo, viewHolder) && changeInfo.oldHolder == null && changeInfo.newHolder == null) {
                list.remove(changeInfo);
            }
        }
    }

    private void j(ChangeInfo changeInfo) {
        RecyclerView.ViewHolder viewHolder = changeInfo.oldHolder;
        if (viewHolder != null) {
            k(changeInfo, viewHolder);
        }
        RecyclerView.ViewHolder viewHolder2 = changeInfo.newHolder;
        if (viewHolder2 != null) {
            k(changeInfo, viewHolder2);
        }
    }

    private boolean k(ChangeInfo changeInfo, RecyclerView.ViewHolder viewHolder) {
        boolean z3 = false;
        if (changeInfo.newHolder == viewHolder) {
            changeInfo.newHolder = null;
        } else if (changeInfo.oldHolder != viewHolder) {
            return false;
        } else {
            changeInfo.oldHolder = null;
            z3 = true;
        }
        viewHolder.itemView.setAlpha(1.0f);
        viewHolder.itemView.setTranslationX(0.0f);
        viewHolder.itemView.setTranslationY(0.0f);
        dispatchChangeFinished(viewHolder, z3);
        return true;
    }

    private void l(RecyclerView.ViewHolder viewHolder) {
        if (f6801v == null) {
            f6801v = new ValueAnimator().getInterpolator();
        }
        viewHolder.itemView.animate().setInterpolator(f6801v);
        endAnimation(viewHolder);
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateAdd(RecyclerView.ViewHolder viewHolder) {
        l(viewHolder);
        viewHolder.itemView.setAlpha(0.0f);
        this.f6803k.add(viewHolder);
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i2, int i4, int i5, int i6) {
        if (viewHolder == viewHolder2) {
            return animateMove(viewHolder, i2, i4, i5, i6);
        }
        float translationX = viewHolder.itemView.getTranslationX();
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        l(viewHolder);
        int i7 = (int) ((i5 - i2) - translationX);
        int i8 = (int) ((i6 - i4) - translationY);
        viewHolder.itemView.setTranslationX(translationX);
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        if (viewHolder2 != null) {
            l(viewHolder2);
            viewHolder2.itemView.setTranslationX(-i7);
            viewHolder2.itemView.setTranslationY(-i8);
            viewHolder2.itemView.setAlpha(0.0f);
        }
        this.f6805m.add(new ChangeInfo(viewHolder, viewHolder2, i2, i4, i5, i6));
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateMove(RecyclerView.ViewHolder viewHolder, int i2, int i4, int i5, int i6) {
        View view = viewHolder.itemView;
        int translationX = i2 + ((int) view.getTranslationX());
        int translationY = i4 + ((int) viewHolder.itemView.getTranslationY());
        l(viewHolder);
        int i7 = i5 - translationX;
        int i8 = i6 - translationY;
        if (i7 == 0 && i8 == 0) {
            dispatchMoveFinished(viewHolder);
            return false;
        }
        if (i7 != 0) {
            view.setTranslationX(-i7);
        }
        if (i8 != 0) {
            view.setTranslationY(-i8);
        }
        this.f6804l.add(new MoveInfo(viewHolder, translationX, translationY, i5, i6));
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public boolean animateRemove(RecyclerView.ViewHolder viewHolder) {
        l(viewHolder);
        this.f6802j.add(viewHolder);
        return true;
    }

    void c(final RecyclerView.ViewHolder viewHolder) {
        final View view = viewHolder.itemView;
        final ViewPropertyAnimator animate = view.animate();
        this.f6809q.add(viewHolder);
        animate.alpha(1.0f).setDuration(getAddDuration()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                view.setAlpha(1.0f);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                DefaultItemAnimator.this.dispatchAddFinished(viewHolder);
                DefaultItemAnimator.this.f6809q.remove(viewHolder);
                DefaultItemAnimator.this.h();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DefaultItemAnimator.this.dispatchAddStarting(viewHolder);
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<Object> list) {
        return !list.isEmpty() || super.canReuseUpdatedViewHolder(viewHolder, list);
    }

    void d(final ChangeInfo changeInfo) {
        RecyclerView.ViewHolder viewHolder = changeInfo.oldHolder;
        final View view = viewHolder == null ? null : viewHolder.itemView;
        RecyclerView.ViewHolder viewHolder2 = changeInfo.newHolder;
        final View view2 = viewHolder2 != null ? viewHolder2.itemView : null;
        if (view != null) {
            final ViewPropertyAnimator duration = view.animate().setDuration(getChangeDuration());
            this.f6812t.add(changeInfo.oldHolder);
            duration.translationX(changeInfo.toX - changeInfo.fromX);
            duration.translationY(changeInfo.toY - changeInfo.fromY);
            duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    duration.setListener(null);
                    view.setAlpha(1.0f);
                    view.setTranslationX(0.0f);
                    view.setTranslationY(0.0f);
                    DefaultItemAnimator.this.dispatchChangeFinished(changeInfo.oldHolder, true);
                    DefaultItemAnimator.this.f6812t.remove(changeInfo.oldHolder);
                    DefaultItemAnimator.this.h();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    DefaultItemAnimator.this.dispatchChangeStarting(changeInfo.oldHolder, true);
                }
            }).start();
        }
        if (view2 != null) {
            final ViewPropertyAnimator animate = view2.animate();
            this.f6812t.add(changeInfo.newHolder);
            animate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration()).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animate.setListener(null);
                    view2.setAlpha(1.0f);
                    view2.setTranslationX(0.0f);
                    view2.setTranslationY(0.0f);
                    DefaultItemAnimator.this.dispatchChangeFinished(changeInfo.newHolder, false);
                    DefaultItemAnimator.this.f6812t.remove(changeInfo.newHolder);
                    DefaultItemAnimator.this.h();
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    DefaultItemAnimator.this.dispatchChangeStarting(changeInfo.newHolder, false);
                }
            }).start();
        }
    }

    void e(final RecyclerView.ViewHolder viewHolder, int i2, int i4, int i5, int i6) {
        final View view = viewHolder.itemView;
        final int i7 = i5 - i2;
        final int i8 = i6 - i4;
        if (i7 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i8 != 0) {
            view.animate().translationY(0.0f);
        }
        final ViewPropertyAnimator animate = view.animate();
        this.f6810r.add(viewHolder);
        animate.setDuration(getMoveDuration()).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (i7 != 0) {
                    view.setTranslationX(0.0f);
                }
                if (i8 != 0) {
                    view.setTranslationY(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                DefaultItemAnimator.this.dispatchMoveFinished(viewHolder);
                DefaultItemAnimator.this.f6810r.remove(viewHolder);
                DefaultItemAnimator.this.h();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                DefaultItemAnimator.this.dispatchMoveStarting(viewHolder);
            }
        }).start();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        view.animate().cancel();
        int size = this.f6804l.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else if (this.f6804l.get(size).holder == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchMoveFinished(viewHolder);
                this.f6804l.remove(size);
            }
        }
        i(this.f6805m, viewHolder);
        if (this.f6802j.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchRemoveFinished(viewHolder);
        }
        if (this.f6803k.remove(viewHolder)) {
            view.setAlpha(1.0f);
            dispatchAddFinished(viewHolder);
        }
        for (int size2 = this.f6808p.size() - 1; size2 >= 0; size2--) {
            ArrayList<ChangeInfo> arrayList = this.f6808p.get(size2);
            i(arrayList, viewHolder);
            if (arrayList.isEmpty()) {
                this.f6808p.remove(size2);
            }
        }
        for (int size3 = this.f6807o.size() - 1; size3 >= 0; size3--) {
            ArrayList<MoveInfo> arrayList2 = this.f6807o.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).holder == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(viewHolder);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.f6807o.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = this.f6806n.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.ViewHolder> arrayList3 = this.f6806n.get(size5);
            if (arrayList3.remove(viewHolder)) {
                view.setAlpha(1.0f);
                dispatchAddFinished(viewHolder);
                if (arrayList3.isEmpty()) {
                    this.f6806n.remove(size5);
                }
            }
        }
        this.f6811s.remove(viewHolder);
        this.f6809q.remove(viewHolder);
        this.f6812t.remove(viewHolder);
        this.f6810r.remove(viewHolder);
        h();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void endAnimations() {
        int size = this.f6804l.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            MoveInfo moveInfo = this.f6804l.get(size);
            View view = moveInfo.holder.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(moveInfo.holder);
            this.f6804l.remove(size);
        }
        for (int size2 = this.f6802j.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished(this.f6802j.get(size2));
            this.f6802j.remove(size2);
        }
        int size3 = this.f6803k.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.ViewHolder viewHolder = this.f6803k.get(size3);
            viewHolder.itemView.setAlpha(1.0f);
            dispatchAddFinished(viewHolder);
            this.f6803k.remove(size3);
        }
        for (int size4 = this.f6805m.size() - 1; size4 >= 0; size4--) {
            j(this.f6805m.get(size4));
        }
        this.f6805m.clear();
        if (isRunning()) {
            for (int size5 = this.f6807o.size() - 1; size5 >= 0; size5--) {
                ArrayList<MoveInfo> arrayList = this.f6807o.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    MoveInfo moveInfo2 = arrayList.get(size6);
                    View view2 = moveInfo2.holder.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    dispatchMoveFinished(moveInfo2.holder);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f6807o.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f6806n.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.ViewHolder> arrayList2 = this.f6806n.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.ViewHolder viewHolder2 = arrayList2.get(size8);
                    viewHolder2.itemView.setAlpha(1.0f);
                    dispatchAddFinished(viewHolder2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f6806n.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f6808p.size() - 1; size9 >= 0; size9--) {
                ArrayList<ChangeInfo> arrayList3 = this.f6808p.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    j(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f6808p.remove(arrayList3);
                    }
                }
            }
            g(this.f6811s);
            g(this.f6810r);
            g(this.f6809q);
            g(this.f6812t);
            dispatchAnimationsFinished();
        }
    }

    void g(List<RecyclerView.ViewHolder> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    void h() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public boolean isRunning() {
        return (this.f6803k.isEmpty() && this.f6805m.isEmpty() && this.f6804l.isEmpty() && this.f6802j.isEmpty() && this.f6810r.isEmpty() && this.f6811s.isEmpty() && this.f6809q.isEmpty() && this.f6812t.isEmpty() && this.f6807o.isEmpty() && this.f6806n.isEmpty() && this.f6808p.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public void runPendingAnimations() {
        boolean z3 = !this.f6802j.isEmpty();
        boolean z4 = !this.f6804l.isEmpty();
        boolean z5 = !this.f6805m.isEmpty();
        boolean z6 = !this.f6803k.isEmpty();
        if (z3 || z4 || z6 || z5) {
            Iterator<RecyclerView.ViewHolder> it2 = this.f6802j.iterator();
            while (it2.hasNext()) {
                f(it2.next());
            }
            this.f6802j.clear();
            if (z4) {
                final ArrayList<MoveInfo> arrayList = new ArrayList<>();
                arrayList.addAll(this.f6804l);
                this.f6807o.add(arrayList);
                this.f6804l.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it3 = arrayList.iterator();
                        while (it3.hasNext()) {
                            MoveInfo moveInfo = (MoveInfo) it3.next();
                            DefaultItemAnimator.this.e(moveInfo.holder, moveInfo.fromX, moveInfo.fromY, moveInfo.toX, moveInfo.toY);
                        }
                        arrayList.clear();
                        DefaultItemAnimator.this.f6807o.remove(arrayList);
                    }
                };
                if (z3) {
                    ViewCompat.postOnAnimationDelayed(arrayList.get(0).holder.itemView, runnable, getRemoveDuration());
                } else {
                    runnable.run();
                }
            }
            if (z5) {
                final ArrayList<ChangeInfo> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.f6805m);
                this.f6808p.add(arrayList2);
                this.f6805m.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it3 = arrayList2.iterator();
                        while (it3.hasNext()) {
                            DefaultItemAnimator.this.d((ChangeInfo) it3.next());
                        }
                        arrayList2.clear();
                        DefaultItemAnimator.this.f6808p.remove(arrayList2);
                    }
                };
                if (z3) {
                    ViewCompat.postOnAnimationDelayed(arrayList2.get(0).oldHolder.itemView, runnable2, getRemoveDuration());
                } else {
                    runnable2.run();
                }
            }
            if (z6) {
                final ArrayList<RecyclerView.ViewHolder> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.f6803k);
                this.f6806n.add(arrayList3);
                this.f6803k.clear();
                Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it3 = arrayList3.iterator();
                        while (it3.hasNext()) {
                            DefaultItemAnimator.this.c((RecyclerView.ViewHolder) it3.next());
                        }
                        arrayList3.clear();
                        DefaultItemAnimator.this.f6806n.remove(arrayList3);
                    }
                };
                if (!z3 && !z4 && !z5) {
                    runnable3.run();
                } else {
                    ViewCompat.postOnAnimationDelayed(arrayList3.get(0).itemView, runnable3, (z3 ? getRemoveDuration() : 0L) + Math.max(z4 ? getMoveDuration() : 0L, z5 ? getChangeDuration() : 0L));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ChangeInfo {
        public int fromX;
        public int fromY;
        public RecyclerView.ViewHolder newHolder;
        public RecyclerView.ViewHolder oldHolder;
        public int toX;
        public int toY;

        private ChangeInfo(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            this.oldHolder = viewHolder;
            this.newHolder = viewHolder2;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.oldHolder + ", newHolder=" + this.newHolder + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + '}';
        }

        ChangeInfo(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i2, int i4, int i5, int i6) {
            this(viewHolder, viewHolder2);
            this.fromX = i2;
            this.fromY = i4;
            this.toX = i5;
            this.toY = i6;
        }
    }
}
