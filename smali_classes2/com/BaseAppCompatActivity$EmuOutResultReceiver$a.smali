.class Lcom/BaseAppCompatActivity$EmuOutResultReceiver$a;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity$EmuOutResultReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/BaseAppCompatActivity$EmuOutResultReceiver;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity$EmuOutResultReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/BaseAppCompatActivity$EmuOutResultReceiver$a;->a:Lcom/BaseAppCompatActivity$EmuOutResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/j;->w()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/join/android/app/common/utils/j;->w()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/BaseAppCompatActivity$EmuOutResultReceiver$a;->a:Lcom/BaseAppCompatActivity$EmuOutResultReceiver;

    iget-object v1, v1, Lcom/BaseAppCompatActivity$EmuOutResultReceiver;->a:Lcom/BaseAppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/BaseAppCompatActivity$EmuOutResultReceiver$a;->a:Lcom/BaseAppCompatActivity$EmuOutResultReceiver;

    iget-object v0, v0, Lcom/BaseAppCompatActivity$EmuOutResultReceiver;->a:Lcom/BaseAppCompatActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/BaseAppCompatActivity;->hasDialog:Z

    .line 5
    invoke-static {v0}, Lcom/BaseAppCompatActivity;->access$700(Lcom/BaseAppCompatActivity;)V

    :cond_0
    return-void
.end method
