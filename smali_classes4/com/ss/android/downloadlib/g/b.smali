.class public Lcom/ss/android/downloadlib/g/b;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/g/b$b;,
        Lcom/ss/android/downloadlib/g/b$a;
    }
.end annotation


# static fields
.field static final a:Lcom/ss/android/downloadlib/g/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/g/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/downloadlib/g/b$b;-><init>(Lcom/ss/android/downloadlib/g/b$1;)V

    sput-object v0, Lcom/ss/android/downloadlib/g/b;->a:Lcom/ss/android/downloadlib/g/b$a;

    return-void
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
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
    sget-object v0, Lcom/ss/android/downloadlib/g/b;->a:Lcom/ss/android/downloadlib/g/b$a;

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/downloadlib/g/b$a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method
