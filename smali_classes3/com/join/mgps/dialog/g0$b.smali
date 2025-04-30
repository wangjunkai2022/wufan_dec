.class Lcom/join/mgps/dialog/g0$b;
.super Ljava/lang/Object;
.source "DownloadPathSetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/g0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g0$b;->a:Lcom/join/mgps/dialog/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/g0$b;->a:Lcom/join/mgps/dialog/g0;

    invoke-static {p1}, Lcom/join/mgps/dialog/g0;->c(Lcom/join/mgps/dialog/g0;)Lcom/join/mgps/dialog/g0$d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/g0$b;->a:Lcom/join/mgps/dialog/g0;

    invoke-static {v0}, Lcom/join/mgps/dialog/g0;->b(Lcom/join/mgps/dialog/g0;)Lcom/join/mgps/dto/Filepath;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/g0$d;->b(Lcom/join/mgps/dto/Filepath;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/dialog/g0$b;->a:Lcom/join/mgps/dialog/g0;

    invoke-static {p1}, Lcom/join/mgps/dialog/g0;->b(Lcom/join/mgps/dialog/g0;)Lcom/join/mgps/dto/Filepath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/dto/Filepath;->getAvailable()J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/g0$b;->a:Lcom/join/mgps/dialog/g0;

    invoke-static {p1}, Lcom/join/mgps/dialog/g0;->a(Lcom/join/mgps/dialog/g0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5b58\u50a8\u7a7a\u95f4\u5c0f\u4e8e10M\u53ef\u80fd\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/g0$b;->a:Lcom/join/mgps/dialog/g0;

    invoke-static {p1}, Lcom/join/mgps/dialog/g0;->a(Lcom/join/mgps/dialog/g0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/g0$b;->a:Lcom/join/mgps/dialog/g0;

    invoke-static {v0}, Lcom/join/mgps/dialog/g0;->d(Lcom/join/mgps/dialog/g0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/pref/h;->V(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/g0$b;->a:Lcom/join/mgps/dialog/g0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
