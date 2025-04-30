.class Lcom/join/mgps/Util/z$k0;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->n(Landroid/content/Context;Ljava/lang/String;ILcom/join/mgps/Util/z$n0;)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/join/mgps/Util/z$k0;->b:Lcom/join/mgps/Util/z;

    iput-object p2, p0, Lcom/join/mgps/Util/z$k0;->a:Lcom/join/mgps/Util/z$n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/z$k0;->a:Lcom/join/mgps/Util/z$n0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/join/mgps/Util/z$n0;->onCancel()V

    :cond_0
    return-void
.end method
