package androidx.transition;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes2.dex */
public class Scene {

    /* renamed from: a  reason: collision with root package name */
    private Context f7675a;

    /* renamed from: b  reason: collision with root package name */
    private int f7676b;

    /* renamed from: c  reason: collision with root package name */
    private ViewGroup f7677c;

    /* renamed from: d  reason: collision with root package name */
    private View f7678d;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f7679e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f7680f;

    public Scene(@NonNull ViewGroup viewGroup) {
        this.f7676b = -1;
        this.f7677c = viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(@NonNull ViewGroup viewGroup, @Nullable Scene scene) {
        viewGroup.setTag(R.id.transition_current_scene, scene);
    }

    @Nullable
    public static Scene getCurrentScene(@NonNull ViewGroup viewGroup) {
        return (Scene) viewGroup.getTag(R.id.transition_current_scene);
    }

    @NonNull
    public static Scene getSceneForLayout(@NonNull ViewGroup viewGroup, @LayoutRes int i2, @NonNull Context context) {
        int i4 = R.id.transition_scene_layoutid_cache;
        SparseArray sparseArray = (SparseArray) viewGroup.getTag(i4);
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            viewGroup.setTag(i4, sparseArray);
        }
        Scene scene = (Scene) sparseArray.get(i2);
        if (scene != null) {
            return scene;
        }
        Scene scene2 = new Scene(viewGroup, i2, context);
        sparseArray.put(i2, scene2);
        return scene2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f7676b > 0;
    }

    public void enter() {
        if (this.f7676b > 0 || this.f7678d != null) {
            getSceneRoot().removeAllViews();
            if (this.f7676b > 0) {
                LayoutInflater.from(this.f7675a).inflate(this.f7676b, this.f7677c);
            } else {
                this.f7677c.addView(this.f7678d);
            }
        }
        Runnable runnable = this.f7679e;
        if (runnable != null) {
            runnable.run();
        }
        b(this.f7677c, this);
    }

    public void exit() {
        Runnable runnable;
        if (getCurrentScene(this.f7677c) != this || (runnable = this.f7680f) == null) {
            return;
        }
        runnable.run();
    }

    @NonNull
    public ViewGroup getSceneRoot() {
        return this.f7677c;
    }

    public void setEnterAction(@Nullable Runnable runnable) {
        this.f7679e = runnable;
    }

    public void setExitAction(@Nullable Runnable runnable) {
        this.f7680f = runnable;
    }

    private Scene(ViewGroup viewGroup, int i2, Context context) {
        this.f7676b = -1;
        this.f7675a = context;
        this.f7677c = viewGroup;
        this.f7676b = i2;
    }

    public Scene(@NonNull ViewGroup viewGroup, @NonNull View view) {
        this.f7676b = -1;
        this.f7677c = viewGroup;
        this.f7678d = view;
    }
}
