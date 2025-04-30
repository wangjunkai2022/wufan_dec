.class Lcom/netease/nis/quicklogin/utils/LoginUiHelper$f;
.super Ljava/lang/Object;
.source "LoginUiHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Landroid/app/Activity;Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$f;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$f;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;

    iget-object v0, v0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->c:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$f;->a:Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;

    iget-object v1, v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$g;->a:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$CustomViewListener;->onClick(Landroid/content/Context;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
