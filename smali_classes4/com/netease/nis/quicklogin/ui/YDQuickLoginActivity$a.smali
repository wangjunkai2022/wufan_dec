.class Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;
.super Ljava/lang/Object;
.source "YDQuickLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a()Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a()Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onCancelGetToken()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->finish()V

    return-void
.end method
