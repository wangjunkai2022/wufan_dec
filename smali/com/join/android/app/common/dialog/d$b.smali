.class Lcom/join/android/app/common/dialog/d$b;
.super Ljava/lang/Object;
.source "AddShortcutResultDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/dialog/d;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/dialog/d;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->a:Lcom/join/android/app/common/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->a:Lcom/join/android/app/common/dialog/d;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->a:Lcom/join/android/app/common/dialog/d;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/d;->a(Lcom/join/android/app/common/dialog/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->a:Lcom/join/android/app/common/dialog/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/android/app/common/dialog/d;->b(Lcom/join/android/app/common/dialog/d;Z)Z

    .line 4
    sput-boolean v0, Lcom/MApplication;->r0:Z

    .line 5
    new-instance p1, Lcom/join/android/app/common/utils/g;

    iget-object v0, p0, Lcom/join/android/app/common/dialog/d$b;->a:Lcom/join/android/app/common/dialog/d;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/d;->c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/join/android/app/common/utils/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/join/android/app/common/utils/g;->n()V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->a:Lcom/join/android/app/common/dialog/d;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/d;->c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/common/dialog/d$b;->a:Lcom/join/android/app/common/dialog/d;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/d;->c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickAuthButton"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2, v0}, Lcom/papa/sim/statistic/p;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$b;->a:Lcom/join/android/app/common/dialog/d;

    invoke-static {p1}, Lcom/join/android/app/common/dialog/d;->c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
