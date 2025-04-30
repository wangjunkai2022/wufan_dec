package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.HashMap;
@Deprecated
/* loaded from: classes.dex */
public abstract class JobIntentService extends Service {

    /* renamed from: h  reason: collision with root package name */
    static final String f3763h = "JobIntentService";

    /* renamed from: i  reason: collision with root package name */
    static final boolean f3764i = false;

    /* renamed from: j  reason: collision with root package name */
    static final Object f3765j = new Object();

    /* renamed from: k  reason: collision with root package name */
    static final HashMap<ComponentName, WorkEnqueuer> f3766k = new HashMap<>();

    /* renamed from: a  reason: collision with root package name */
    CompatJobEngine f3767a;

    /* renamed from: b  reason: collision with root package name */
    WorkEnqueuer f3768b;

    /* renamed from: c  reason: collision with root package name */
    CommandProcessor f3769c;

    /* renamed from: d  reason: collision with root package name */
    boolean f3770d = false;

    /* renamed from: e  reason: collision with root package name */
    boolean f3771e = false;

    /* renamed from: f  reason: collision with root package name */
    boolean f3772f = false;

    /* renamed from: g  reason: collision with root package name */
    final ArrayList<CompatWorkItem> f3773g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class CommandProcessor extends AsyncTask<Void, Void, Void> {
        CommandProcessor() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                GenericWorkItem a4 = JobIntentService.this.a();
                if (a4 == null) {
                    return null;
                }
                JobIntentService.this.e(a4.getIntent());
                a4.complete();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onCancelled(Void r12) {
            JobIntentService.this.f();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: c */
        public void onPostExecute(Void r12) {
            JobIntentService.this.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface CompatJobEngine {
        IBinder compatGetBinder();

        GenericWorkItem dequeueWork();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class CompatWorkEnqueuer extends WorkEnqueuer {

        /* renamed from: d  reason: collision with root package name */
        private final Context f3775d;

        /* renamed from: e  reason: collision with root package name */
        private final PowerManager.WakeLock f3776e;

        /* renamed from: f  reason: collision with root package name */
        private final PowerManager.WakeLock f3777f;

        /* renamed from: g  reason: collision with root package name */
        boolean f3778g;

        /* renamed from: h  reason: collision with root package name */
        boolean f3779h;

        CompatWorkEnqueuer(Context context, ComponentName componentName) {
            super(componentName);
            this.f3775d = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.f3776e = newWakeLock;
            newWakeLock.setReferenceCounted(false);
            PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.f3777f = newWakeLock2;
            newWakeLock2.setReferenceCounted(false);
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.f3792a);
            if (this.f3775d.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f3778g) {
                        this.f3778g = true;
                        if (!this.f3779h) {
                            this.f3776e.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        public void serviceProcessingFinished() {
            synchronized (this) {
                if (this.f3779h) {
                    if (this.f3778g) {
                        this.f3776e.acquire(60000L);
                    }
                    this.f3779h = false;
                    this.f3777f.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        public void serviceProcessingStarted() {
            synchronized (this) {
                if (!this.f3779h) {
                    this.f3779h = true;
                    this.f3777f.acquire(TTAdConstant.AD_MAX_EVENT_TIME);
                    this.f3776e.release();
                }
            }
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        public void serviceStartReceived() {
            synchronized (this) {
                this.f3778g = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class CompatWorkItem implements GenericWorkItem {

        /* renamed from: a  reason: collision with root package name */
        final Intent f3780a;

        /* renamed from: b  reason: collision with root package name */
        final int f3781b;

        CompatWorkItem(Intent intent, int i2) {
            this.f3780a = intent;
            this.f3781b = i2;
        }

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        public void complete() {
            JobIntentService.this.stopSelf(this.f3781b);
        }

        @Override // androidx.core.app.JobIntentService.GenericWorkItem
        public Intent getIntent() {
            return this.f3780a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface GenericWorkItem {
        void complete();

        Intent getIntent();
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    static final class JobServiceEngineImpl extends JobServiceEngine implements CompatJobEngine {

        /* renamed from: d  reason: collision with root package name */
        static final String f3783d = "JobServiceEngineImpl";

        /* renamed from: e  reason: collision with root package name */
        static final boolean f3784e = false;

        /* renamed from: a  reason: collision with root package name */
        final JobIntentService f3785a;

        /* renamed from: b  reason: collision with root package name */
        final Object f3786b;

        /* renamed from: c  reason: collision with root package name */
        JobParameters f3787c;

        /* loaded from: classes.dex */
        final class WrapperWorkItem implements GenericWorkItem {

            /* renamed from: a  reason: collision with root package name */
            final JobWorkItem f3788a;

            WrapperWorkItem(JobWorkItem jobWorkItem) {
                this.f3788a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.GenericWorkItem
            public void complete() {
                synchronized (JobServiceEngineImpl.this.f3786b) {
                    JobParameters jobParameters = JobServiceEngineImpl.this.f3787c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.f3788a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.GenericWorkItem
            public Intent getIntent() {
                return this.f3788a.getIntent();
            }
        }

        JobServiceEngineImpl(JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f3786b = new Object();
            this.f3785a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.CompatJobEngine
        public IBinder compatGetBinder() {
            return getBinder();
        }

        @Override // androidx.core.app.JobIntentService.CompatJobEngine
        public GenericWorkItem dequeueWork() {
            synchronized (this.f3786b) {
                JobParameters jobParameters = this.f3787c;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem dequeueWork = jobParameters.dequeueWork();
                if (dequeueWork != null) {
                    dequeueWork.getIntent().setExtrasClassLoader(this.f3785a.getClassLoader());
                    return new WrapperWorkItem(dequeueWork);
                }
                return null;
            }
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.f3787c = jobParameters;
            this.f3785a.c(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean b4 = this.f3785a.b();
            synchronized (this.f3786b) {
                this.f3787c = null;
            }
            return b4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static final class JobWorkEnqueuer extends WorkEnqueuer {

        /* renamed from: d  reason: collision with root package name */
        private final JobInfo f3790d;

        /* renamed from: e  reason: collision with root package name */
        private final JobScheduler f3791e;

        JobWorkEnqueuer(Context context, ComponentName componentName, int i2) {
            super(componentName);
            b(i2);
            this.f3790d = new JobInfo.Builder(i2, this.f3792a).setOverrideDeadline(0L).build();
            this.f3791e = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.JobIntentService.WorkEnqueuer
        void a(Intent intent) {
            this.f3791e.enqueue(this.f3790d, new JobWorkItem(intent));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class WorkEnqueuer {

        /* renamed from: a  reason: collision with root package name */
        final ComponentName f3792a;

        /* renamed from: b  reason: collision with root package name */
        boolean f3793b;

        /* renamed from: c  reason: collision with root package name */
        int f3794c;

        WorkEnqueuer(ComponentName componentName) {
            this.f3792a = componentName;
        }

        abstract void a(Intent intent);

        void b(int i2) {
            if (!this.f3793b) {
                this.f3793b = true;
                this.f3794c = i2;
            } else if (this.f3794c == i2) {
            } else {
                throw new IllegalArgumentException("Given job ID " + i2 + " is different than previous " + this.f3794c);
            }
        }

        public void serviceProcessingFinished() {
        }

        public void serviceProcessingStarted() {
        }

        public void serviceStartReceived() {
        }
    }

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3773g = null;
        } else {
            this.f3773g = new ArrayList<>();
        }
    }

    static WorkEnqueuer d(Context context, ComponentName componentName, boolean z3, int i2) {
        WorkEnqueuer compatWorkEnqueuer;
        HashMap<ComponentName, WorkEnqueuer> hashMap = f3766k;
        WorkEnqueuer workEnqueuer = hashMap.get(componentName);
        if (workEnqueuer == null) {
            if (Build.VERSION.SDK_INT < 26) {
                compatWorkEnqueuer = new CompatWorkEnqueuer(context, componentName);
            } else if (z3) {
                compatWorkEnqueuer = new JobWorkEnqueuer(context, componentName, i2);
            } else {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            WorkEnqueuer workEnqueuer2 = compatWorkEnqueuer;
            hashMap.put(componentName, workEnqueuer2);
            return workEnqueuer2;
        }
        return workEnqueuer;
    }

    public static void enqueueWork(@NonNull Context context, @NonNull Class<?> cls, int i2, @NonNull Intent intent) {
        enqueueWork(context, new ComponentName(context, cls), i2, intent);
    }

    GenericWorkItem a() {
        CompatJobEngine compatJobEngine = this.f3767a;
        if (compatJobEngine != null) {
            return compatJobEngine.dequeueWork();
        }
        synchronized (this.f3773g) {
            if (this.f3773g.size() > 0) {
                return this.f3773g.remove(0);
            }
            return null;
        }
    }

    boolean b() {
        CommandProcessor commandProcessor = this.f3769c;
        if (commandProcessor != null) {
            commandProcessor.cancel(this.f3770d);
        }
        this.f3771e = true;
        return onStopCurrentWork();
    }

    void c(boolean z3) {
        if (this.f3769c == null) {
            this.f3769c = new CommandProcessor();
            WorkEnqueuer workEnqueuer = this.f3768b;
            if (workEnqueuer != null && z3) {
                workEnqueuer.serviceProcessingStarted();
            }
            this.f3769c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    protected abstract void e(@NonNull Intent intent);

    void f() {
        ArrayList<CompatWorkItem> arrayList = this.f3773g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f3769c = null;
                ArrayList<CompatWorkItem> arrayList2 = this.f3773g;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    c(false);
                } else if (!this.f3772f) {
                    this.f3768b.serviceProcessingFinished();
                }
            }
        }
    }

    public boolean isStopped() {
        return this.f3771e;
    }

    @Override // android.app.Service
    public IBinder onBind(@NonNull Intent intent) {
        CompatJobEngine compatJobEngine = this.f3767a;
        if (compatJobEngine != null) {
            return compatJobEngine.compatGetBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3767a = new JobServiceEngineImpl(this);
            this.f3768b = null;
            return;
        }
        this.f3767a = null;
        this.f3768b = d(this, new ComponentName(this, getClass()), false, 0);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        ArrayList<CompatWorkItem> arrayList = this.f3773g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f3772f = true;
                this.f3768b.serviceProcessingFinished();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int i2, int i4) {
        if (this.f3773g != null) {
            this.f3768b.serviceStartReceived();
            synchronized (this.f3773g) {
                ArrayList<CompatWorkItem> arrayList = this.f3773g;
                if (intent == null) {
                    intent = new Intent();
                }
                arrayList.add(new CompatWorkItem(intent, i4));
                c(true);
            }
            return 3;
        }
        return 2;
    }

    public boolean onStopCurrentWork() {
        return true;
    }

    public void setInterruptIfStopped(boolean z3) {
        this.f3770d = z3;
    }

    public static void enqueueWork(@NonNull Context context, @NonNull ComponentName componentName, int i2, @NonNull Intent intent) {
        if (intent != null) {
            synchronized (f3765j) {
                WorkEnqueuer d4 = d(context, componentName, true, i2);
                d4.b(i2);
                d4.a(intent);
            }
            return;
        }
        throw new IllegalArgumentException("work must not be null");
    }
}
