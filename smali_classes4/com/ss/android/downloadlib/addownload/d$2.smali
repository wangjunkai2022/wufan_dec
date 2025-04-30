.class Lcom/ss/android/downloadlib/addownload/d$2;
.super Ljava/lang/Object;
.source "CleanSpaceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/d;->a(IJJLcom/ss/android/downloadlib/addownload/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/addownload/e$a;

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/d;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/d;Lcom/ss/android/downloadlib/addownload/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d$2;->b:Lcom/ss/android/downloadlib/addownload/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/d$2;->a:Lcom/ss/android/downloadlib/addownload/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$2;->b:Lcom/ss/android/downloadlib/addownload/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d;->a(Lcom/ss/android/downloadlib/addownload/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$2;->b:Lcom/ss/android/downloadlib/addownload/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/d;->a(Lcom/ss/android/downloadlib/addownload/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$2;->a:Lcom/ss/android/downloadlib/addownload/e$a;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/e$a;->a()V

    return-void
.end method
