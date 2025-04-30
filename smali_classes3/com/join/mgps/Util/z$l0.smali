.class Lcom/join/mgps/Util/z$l0;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Lcom/join/mgps/dialog/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->o(Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/Util/z$n0;

.field final synthetic c:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$l0;->c:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$l0;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/mgps/Util/z$l0;->b:Lcom/join/mgps/Util/z$n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ClickCancleButn(Lcom/join/mgps/dialog/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/z$l0;->b:Lcom/join/mgps/Util/z$n0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/join/mgps/Util/z$n0;->onCancel()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public ClickOKButn(Lcom/join/mgps/dialog/b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/Util/z$l0;->a:Landroid/content/Context;

    const-string v2, "http://anv3cjapi.5fun.com/member/battle_kick/index"

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/Util/z$l0;->b:Lcom/join/mgps/Util/z$n0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/join/mgps/Util/z$n0;->onDismiss()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
