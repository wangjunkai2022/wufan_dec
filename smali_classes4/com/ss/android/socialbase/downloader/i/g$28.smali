.class final Lcom/ss/android/socialbase/downloader/i/g$28;
.super Lcom/ss/android/socialbase/downloader/depend/u$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/w;)Lcom/ss/android/socialbase/downloader/depend/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/w;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$28;->a:Lcom/ss/android/socialbase/downloader/depend/w;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/downloader/depend/t;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$28;->a:Lcom/ss/android/socialbase/downloader/depend/w;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/t;)Lcom/ss/android/socialbase/downloader/depend/v;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/depend/w;->a(Lcom/ss/android/socialbase/downloader/depend/v;)Z

    move-result p1

    return p1
.end method
