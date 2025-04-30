.class Lcom/ss/android/downloadlib/g/b$b;
.super Lcom/ss/android/downloadlib/g/b$a;
.source "AsyncTaskUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/g/b$a;-><init>(Lcom/ss/android/downloadlib/g/b$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/g/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TT;**>;[TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
