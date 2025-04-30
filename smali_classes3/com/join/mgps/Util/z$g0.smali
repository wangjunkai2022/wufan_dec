.class Lcom/join/mgps/Util/z$g0;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->g(Landroid/content/Context;Lcom/join/mgps/Util/z$n0;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/z$n0;

.field final synthetic b:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;Lcom/join/mgps/Util/z$n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$g0;->b:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$g0;->a:Lcom/join/mgps/Util/z$n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/z$g0;->a:Lcom/join/mgps/Util/z$n0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/join/mgps/Util/z$n0;->a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
