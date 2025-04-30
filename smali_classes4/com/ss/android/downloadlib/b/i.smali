.class public Lcom/ss/android/downloadlib/b/i;
.super Ljava/lang/Object;
.source "KllkOptimiseHelper.java"


# direct methods
.method public static a(Lcom/ss/android/downloadad/api/a/a;)Z
    .locals 3
    .param p0    # Lcom/ss/android/downloadad/api/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/d;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->k()Lcom/ss/android/download/api/config/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->k()Lcom/ss/android/download/api/config/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/download/api/config/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/ss/android/downloadlib/g/e;->a(Lcom/ss/android/downloadad/api/a/a;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v2, "invoke_app_form_background_switch"

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 5
    invoke-interface {p0}, Lcom/ss/android/downloadad/api/a/a;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
