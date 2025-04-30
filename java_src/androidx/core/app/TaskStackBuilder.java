package androidx.core.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class TaskStackBuilder implements Iterable<Intent> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f4111c = "TaskStackBuilder";

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<Intent> f4112a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final Context f4113b;

    /* loaded from: classes.dex */
    public interface SupportParentable {
        @Nullable
        Intent getSupportParentActivityIntent();
    }

    private TaskStackBuilder(Context context) {
        this.f4113b = context;
    }

    @NonNull
    public static TaskStackBuilder create(@NonNull Context context) {
        return new TaskStackBuilder(context);
    }

    @Deprecated
    public static TaskStackBuilder from(Context context) {
        return create(context);
    }

    @NonNull
    public TaskStackBuilder addNextIntent(@NonNull Intent intent) {
        this.f4112a.add(intent);
        return this;
    }

    @NonNull
    public TaskStackBuilder addNextIntentWithParentStack(@NonNull Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.f4113b.getPackageManager());
        }
        if (component != null) {
            addParentStack(component);
        }
        addNextIntent(intent);
        return this;
    }

    @NonNull
    public TaskStackBuilder addParentStack(@NonNull Activity activity) {
        Intent supportParentActivityIntent = activity instanceof SupportParentable ? ((SupportParentable) activity).getSupportParentActivityIntent() : null;
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = NavUtils.getParentActivityIntent(activity);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(this.f4113b.getPackageManager());
            }
            addParentStack(component);
            addNextIntent(supportParentActivityIntent);
        }
        return this;
    }

    @Nullable
    public Intent editIntentAt(int i2) {
        return this.f4112a.get(i2);
    }

    @Deprecated
    public Intent getIntent(int i2) {
        return editIntentAt(i2);
    }

    public int getIntentCount() {
        return this.f4112a.size();
    }

    @NonNull
    public Intent[] getIntents() {
        int size = this.f4112a.size();
        Intent[] intentArr = new Intent[size];
        if (size == 0) {
            return intentArr;
        }
        intentArr[0] = new Intent(this.f4112a.get(0)).addFlags(268484608);
        for (int i2 = 1; i2 < size; i2++) {
            intentArr[i2] = new Intent(this.f4112a.get(i2));
        }
        return intentArr;
    }

    @Nullable
    public PendingIntent getPendingIntent(int i2, int i4) {
        return getPendingIntent(i2, i4, null);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.f4112a.iterator();
    }

    public void startActivities() {
        startActivities(null);
    }

    @Nullable
    public PendingIntent getPendingIntent(int i2, int i4, @Nullable Bundle bundle) {
        if (!this.f4112a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f4112a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (Build.VERSION.SDK_INT >= 16) {
                return PendingIntent.getActivities(this.f4113b, i2, intentArr, i4, bundle);
            }
            return PendingIntent.getActivities(this.f4113b, i2, intentArr, i4);
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }

    public void startActivities(@Nullable Bundle bundle) {
        if (!this.f4112a.isEmpty()) {
            ArrayList<Intent> arrayList = this.f4112a;
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            if (ContextCompat.startActivities(this.f4113b, intentArr, bundle)) {
                return;
            }
            Intent intent = new Intent(intentArr[intentArr.length - 1]);
            intent.addFlags(268435456);
            this.f4113b.startActivity(intent);
            return;
        }
        throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }

    @NonNull
    public TaskStackBuilder addParentStack(@NonNull Class<?> cls) {
        return addParentStack(new ComponentName(this.f4113b, cls));
    }

    public TaskStackBuilder addParentStack(ComponentName componentName) {
        int size = this.f4112a.size();
        try {
            Intent parentActivityIntent = NavUtils.getParentActivityIntent(this.f4113b, componentName);
            while (parentActivityIntent != null) {
                this.f4112a.add(size, parentActivityIntent);
                parentActivityIntent = NavUtils.getParentActivityIntent(this.f4113b, parentActivityIntent.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e4) {
            throw new IllegalArgumentException(e4);
        }
    }
}
