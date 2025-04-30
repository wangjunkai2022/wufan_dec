.class Lcom/ss/android/downloadlib/g/b$a;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/g/b$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/ss/android/downloadlib/g/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
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
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
