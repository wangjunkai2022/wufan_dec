.class Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Lcom/ss/android/download/api/model/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/api/a/b;

.field final synthetic b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Lcom/ss/android/downloadad/api/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    iput-object p2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->a:Lcom/ss/android/downloadad/api/a/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/a;->b(Lcom/ss/android/downloadad/api/a/b;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public b(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->a:Lcom/ss/android/downloadad/api/a/b;

    const-string v2, "market_openapp_cancel"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lcom/ss/android/downloadad/api/a/a;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public c(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    return-void
.end method
