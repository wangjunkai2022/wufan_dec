package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.R;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentLayoutInflaterFactory implements LayoutInflater.Factory2 {

    /* renamed from: b  reason: collision with root package name */
    private static final String f5865b = "FragmentManager";

    /* renamed from: a  reason: collision with root package name */
    final FragmentManager f5866a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentLayoutInflaterFactory(FragmentManager fragmentManager) {
        this.f5866a = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory
    @Nullable
    public View onCreateView(@NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        final FragmentStateManager t3;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f5866a);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(R.styleable.Fragment_android_name);
            }
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.Fragment_android_id, -1);
            String string = obtainStyledAttributes.getString(R.styleable.Fragment_android_tag);
            obtainStyledAttributes.recycle();
            if (attributeValue == null || !FragmentFactory.a(context.getClassLoader(), attributeValue)) {
                return null;
            }
            int id = view != null ? view.getId() : 0;
            if (id == -1 && resourceId == -1 && string == null) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
            }
            Fragment findFragmentById = resourceId != -1 ? this.f5866a.findFragmentById(resourceId) : null;
            if (findFragmentById == null && string != null) {
                findFragmentById = this.f5866a.findFragmentByTag(string);
            }
            if (findFragmentById == null && id != -1) {
                findFragmentById = this.f5866a.findFragmentById(id);
            }
            if (findFragmentById == null) {
                findFragmentById = this.f5866a.getFragmentFactory().instantiate(context.getClassLoader(), attributeValue);
                findFragmentById.mFromLayout = true;
                findFragmentById.mFragmentId = resourceId != 0 ? resourceId : id;
                findFragmentById.mContainerId = id;
                findFragmentById.mTag = string;
                findFragmentById.mInLayout = true;
                FragmentManager fragmentManager = this.f5866a;
                findFragmentById.mFragmentManager = fragmentManager;
                findFragmentById.mHost = fragmentManager.o0();
                findFragmentById.onInflate(this.f5866a.o0().getContext(), attributeSet, findFragmentById.mSavedFragmentState);
                t3 = this.f5866a.g(findFragmentById);
                if (FragmentManager.y0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Fragment ");
                    sb.append(findFragmentById);
                    sb.append(" has been inflated via the <fragment> tag: id=0x");
                    sb.append(Integer.toHexString(resourceId));
                }
            } else if (!findFragmentById.mInLayout) {
                findFragmentById.mInLayout = true;
                FragmentManager fragmentManager2 = this.f5866a;
                findFragmentById.mFragmentManager = fragmentManager2;
                findFragmentById.mHost = fragmentManager2.o0();
                findFragmentById.onInflate(this.f5866a.o0().getContext(), attributeSet, findFragmentById.mSavedFragmentState);
                t3 = this.f5866a.t(findFragmentById);
                if (FragmentManager.y0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Retained Fragment ");
                    sb2.append(findFragmentById);
                    sb2.append(" has been re-attached via the <fragment> tag: id=0x");
                    sb2.append(Integer.toHexString(resourceId));
                }
            } else {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            findFragmentById.mContainer = (ViewGroup) view;
            t3.m();
            t3.j();
            View view2 = findFragmentById.mView;
            if (view2 != null) {
                if (resourceId != 0) {
                    view2.setId(resourceId);
                }
                if (findFragmentById.mView.getTag() == null) {
                    findFragmentById.mView.setTag(string);
                }
                findFragmentById.mView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentLayoutInflaterFactory.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view3) {
                        Fragment k4 = t3.k();
                        t3.m();
                        SpecialEffectsController.m((ViewGroup) k4.mView.getParent(), FragmentLayoutInflaterFactory.this.f5866a).j();
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view3) {
                    }
                });
                return findFragmentById.mView;
            }
            throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
        }
        return null;
    }
}
