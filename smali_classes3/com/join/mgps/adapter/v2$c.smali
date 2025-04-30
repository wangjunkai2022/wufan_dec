.class Lcom/join/mgps/adapter/v2$c;
.super Ljava/lang/Object;
.source "ManageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/v2;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/v2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/v2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v2$c;->a:Lcom/join/mgps/adapter/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/v2$c;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u4f60\u7684\u624b\u673a\u6682\u4e0d\u652f\u6301"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/v2$c;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/adapter/v2$c;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {v1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/join/mgps/activity/HandShankOverActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Ln1/x;->p()Ln1/x;

    move-result-object p1

    invoke-virtual {p1}, Ln1/x;->o()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/v2$c;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/adapter/v2$c;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {v1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/join/mgps/activity/HandShankYesActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/v2$c;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {p1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/join/mgps/adapter/v2$c;->a:Lcom/join/mgps/adapter/v2;

    invoke-static {v1}, Lcom/join/mgps/adapter/v2;->b(Lcom/join/mgps/adapter/v2;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/join/mgps/activity/HandShankNoActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
