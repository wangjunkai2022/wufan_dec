.class Lcom/ss/android/downloadlib/a$a;
.super Ljava/lang/Object;
.source "AdDownloadCompletedEventHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadlib/a;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/a$a;->a:Lcom/ss/android/downloadlib/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/ss/android/downloadlib/a$a;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->b()V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$a;->a:Lcom/ss/android/downloadlib/a;

    iget v2, p0, Lcom/ss/android/downloadlib/a$a;->b:I

    invoke-static {v1, v0, v2}, Lcom/ss/android/downloadlib/a;->a(Lcom/ss/android/downloadlib/a;Ljava/util/concurrent/ConcurrentHashMap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
