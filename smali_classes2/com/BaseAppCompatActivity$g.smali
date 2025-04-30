.class Lcom/BaseAppCompatActivity$g;
.super Landroid/os/Handler;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$g;->a:Lcom/BaseAppCompatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/BaseAppCompatActivity$g;->a:Lcom/BaseAppCompatActivity;

    invoke-static {p1}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object p1

    iget-object v0, p0, Lcom/BaseAppCompatActivity$g;->a:Lcom/BaseAppCompatActivity;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/BaseAppCompatActivity$g;->a:Lcom/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/BaseAppCompatActivity;->fialePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->u(Landroid/app/Activity;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/BaseAppCompatActivity$g;->a:Lcom/BaseAppCompatActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/BaseAppCompatActivity;->access$200(Lcom/BaseAppCompatActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/BaseAppCompatActivity$g;->a:Lcom/BaseAppCompatActivity;

    iget-boolean v1, v0, Lcom/BaseAppCompatActivity;->isInBackground:Z

    if-eqz v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/BaseAppCompatActivity$x;

    .line 7
    invoke-virtual {v0, p1}, Lcom/BaseAppCompatActivity;->getPermison(Lcom/BaseAppCompatActivity$x;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
