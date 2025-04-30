.class Lcom/papa91/arc/ext/ToastManager$2;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/ext/ToastManager;->cancel(Landroid/widget/Toast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$prevToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/ext/ToastManager$2;->val$prevToast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/arc/ext/ToastManager$2;->val$prevToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Toast cancel"

    .line 2
    invoke-static {v1, v0}, Lcom/papa91/arc/ext/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
