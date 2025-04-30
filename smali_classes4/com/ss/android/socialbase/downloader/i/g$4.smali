.class final Lcom/ss/android/socialbase/downloader/i/g$4;
.super Lcom/ss/android/socialbase/downloader/depend/j$a;
.source "IPCUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/i/g;->a(Lcom/ss/android/socialbase/downloader/depend/x;)Lcom/ss/android/socialbase/downloader/depend/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/downloader/depend/x;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/depend/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$4;->a:Lcom/ss/android/socialbase/downloader/depend/x;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/depend/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$4;->a:Lcom/ss/android/socialbase/downloader/depend/x;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/x;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/i/g$4;->a:Lcom/ss/android/socialbase/downloader/depend/x;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/depend/x;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g$4;->a:Lcom/ss/android/socialbase/downloader/depend/x;

    instance-of v1, v0, Lcom/ss/android/socialbase/downloader/depend/c;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/ss/android/socialbase/downloader/depend/c;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/depend/c;->a()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
