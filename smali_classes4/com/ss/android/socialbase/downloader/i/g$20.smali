.class final Lcom/ss/android/socialbase/downloader/i/g$20;
.super Lcom/ss/android/socialbase/downloader/depend/o$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/q;)Lcom/ss/android/socialbase/downloader/depend/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/q;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$20;->a:Lcom/ss/android/socialbase/downloader/depend/q;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$20;->a:Lcom/ss/android/socialbase/downloader/depend/q;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/q;->a()V

    return-void
.end method
