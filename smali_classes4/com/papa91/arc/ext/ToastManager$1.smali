.class Lcom/papa91/arc/ext/ToastManager$1;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/ext/ToastManager;->show(Landroid/widget/Toast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/ext/ToastManager$1;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/ext/ToastManager$1;->val$toast:Landroid/widget/Toast;

    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->cancel(Landroid/widget/Toast;)V

    return-void
.end method
