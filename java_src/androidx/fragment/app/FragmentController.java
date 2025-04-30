package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Preconditions;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.app.LoaderManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class FragmentController {

    /* renamed from: a  reason: collision with root package name */
    private final FragmentHostCallback<?> f5858a;

    private FragmentController(FragmentHostCallback<?> fragmentHostCallback) {
        this.f5858a = fragmentHostCallback;
    }

    @NonNull
    public static FragmentController createController(@NonNull FragmentHostCallback<?> fragmentHostCallback) {
        return new FragmentController((FragmentHostCallback) Preconditions.checkNotNull(fragmentHostCallback, "callbacks == null"));
    }

    public void attachHost(@Nullable Fragment fragment) {
        FragmentHostCallback<?> fragmentHostCallback = this.f5858a;
        fragmentHostCallback.f5864e.j(fragmentHostCallback, fragmentHostCallback, fragment);
    }

    public void dispatchActivityCreated() {
        this.f5858a.f5864e.w();
    }

    public void dispatchConfigurationChanged(@NonNull Configuration configuration) {
        this.f5858a.f5864e.y(configuration);
    }

    public boolean dispatchContextItemSelected(@NonNull MenuItem menuItem) {
        return this.f5858a.f5864e.z(menuItem);
    }

    public void dispatchCreate() {
        this.f5858a.f5864e.A();
    }

    public boolean dispatchCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        return this.f5858a.f5864e.B(menu, menuInflater);
    }

    public void dispatchDestroy() {
        this.f5858a.f5864e.C();
    }

    public void dispatchDestroyView() {
        this.f5858a.f5864e.D();
    }

    public void dispatchLowMemory() {
        this.f5858a.f5864e.E();
    }

    public void dispatchMultiWindowModeChanged(boolean z3) {
        this.f5858a.f5864e.F(z3);
    }

    public boolean dispatchOptionsItemSelected(@NonNull MenuItem menuItem) {
        return this.f5858a.f5864e.H(menuItem);
    }

    public void dispatchOptionsMenuClosed(@NonNull Menu menu) {
        this.f5858a.f5864e.I(menu);
    }

    public void dispatchPause() {
        this.f5858a.f5864e.K();
    }

    public void dispatchPictureInPictureModeChanged(boolean z3) {
        this.f5858a.f5864e.L(z3);
    }

    public boolean dispatchPrepareOptionsMenu(@NonNull Menu menu) {
        return this.f5858a.f5864e.M(menu);
    }

    @Deprecated
    public void dispatchReallyStop() {
    }

    public void dispatchResume() {
        this.f5858a.f5864e.O();
    }

    public void dispatchStart() {
        this.f5858a.f5864e.P();
    }

    public void dispatchStop() {
        this.f5858a.f5864e.R();
    }

    @Deprecated
    public void doLoaderDestroy() {
    }

    @Deprecated
    public void doLoaderRetain() {
    }

    @Deprecated
    public void doLoaderStart() {
    }

    @Deprecated
    public void doLoaderStop(boolean z3) {
    }

    @Deprecated
    public void dumpLoaders(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }

    public boolean execPendingActions() {
        return this.f5858a.f5864e.X(true);
    }

    @Nullable
    public Fragment findFragmentByWho(@NonNull String str) {
        return this.f5858a.f5864e.d0(str);
    }

    @NonNull
    public List<Fragment> getActiveFragments(@SuppressLint({"UnknownNullness"}) List<Fragment> list) {
        return this.f5858a.f5864e.j0();
    }

    public int getActiveFragmentsCount() {
        return this.f5858a.f5864e.i0();
    }

    @NonNull
    public FragmentManager getSupportFragmentManager() {
        return this.f5858a.f5864e;
    }

    @SuppressLint({"UnknownNullness"})
    @Deprecated
    public LoaderManager getSupportLoaderManager() {
        throw new UnsupportedOperationException("Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager.");
    }

    public void noteStateNotSaved() {
        this.f5858a.f5864e.L0();
    }

    @Nullable
    public View onCreateView(@Nullable View view, @NonNull String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        return this.f5858a.f5864e.p0().onCreateView(view, str, context, attributeSet);
    }

    @Deprecated
    public void reportLoaderStart() {
    }

    @Deprecated
    public void restoreAllState(@Nullable Parcelable parcelable, @Nullable List<Fragment> list) {
        this.f5858a.f5864e.W0(parcelable, new FragmentManagerNonConfig(list, null, null));
    }

    @Deprecated
    public void restoreLoaderNonConfig(@SuppressLint({"UnknownNullness"}) SimpleArrayMap<String, LoaderManager> simpleArrayMap) {
    }

    public void restoreSaveState(@Nullable Parcelable parcelable) {
        FragmentHostCallback<?> fragmentHostCallback = this.f5858a;
        if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            fragmentHostCallback.f5864e.X0(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    @Nullable
    @Deprecated
    public SimpleArrayMap<String, LoaderManager> retainLoaderNonConfig() {
        return null;
    }

    @Nullable
    @Deprecated
    public FragmentManagerNonConfig retainNestedNonConfig() {
        return this.f5858a.f5864e.Y0();
    }

    @Nullable
    @Deprecated
    public List<Fragment> retainNonConfig() {
        FragmentManagerNonConfig Y0 = this.f5858a.f5864e.Y0();
        if (Y0 == null || Y0.b() == null) {
            return null;
        }
        return new ArrayList(Y0.b());
    }

    @Nullable
    public Parcelable saveAllState() {
        return this.f5858a.f5864e.a1();
    }

    @Deprecated
    public void restoreAllState(@Nullable Parcelable parcelable, @Nullable FragmentManagerNonConfig fragmentManagerNonConfig) {
        this.f5858a.f5864e.W0(parcelable, fragmentManagerNonConfig);
    }
}
