.class Lcom/ss/android/downloadlib/addownload/e$5;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/e;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ss/android/downloadlib/addownload/e;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/e;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e$5;->b:Lcom/ss/android/downloadlib/addownload/e;

    iput-boolean p2, p0, Lcom/ss/android/downloadlib/addownload/e$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$5;->b:Lcom/ss/android/downloadlib/addownload/e;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/e;->c(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/downloadlib/addownload/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e$5;->b:Lcom/ss/android/downloadlib/addownload/e;

    iget-boolean v1, p0, Lcom/ss/android/downloadlib/addownload/e$5;->a:Z

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/addownload/e;->b(Lcom/ss/android/downloadlib/addownload/e;Z)V

    return-void
.end method
