.class Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;
.super Ljava/lang/Object;
.source "LoginUiHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;II)V

    .line 2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 3
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;->b:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onCancelGetToken()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
