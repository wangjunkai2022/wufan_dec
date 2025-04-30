.class Lnet/bither/util/c$a;
.super Landroid/os/AsyncTask;
.source "JpegOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/bither/util/c;->d(Lnet/bither/util/c$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/bither/util/c$b;

.field final synthetic b:Lnet/bither/util/c;


# direct methods
.method constructor <init>(Lnet/bither/util/c;Lnet/bither/util/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/bither/util/c$a;->b:Lnet/bither/util/c;

    iput-object p2, p0, Lnet/bither/util/c$a;->a:Lnet/bither/util/c$b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lnet/bither/util/c$a;->b:Lnet/bither/util/c;

    invoke-static {p1}, Lnet/bither/util/c;->a(Lnet/bither/util/c;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lnet/bither/util/c$a;->b:Lnet/bither/util/c;

    invoke-static {p1}, Lnet/bither/util/c;->a(Lnet/bither/util/c;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_2

    return-object v0

    .line 4
    :cond_2
    invoke-static {p1}, Lnet/bither/util/c;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ","

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, "optimized"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v1, p0, Lnet/bither/util/c$a;->a:Lnet/bither/util/c$b;

    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v1, v0, p1}, Lnet/bither/util/c$b;->a(ZLjava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
