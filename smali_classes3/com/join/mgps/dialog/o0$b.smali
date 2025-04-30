.class Lcom/join/mgps/dialog/o0$b;
.super Ljava/lang/Object;
.source "FightWifiErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/o0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/o0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/o0$b;->a:Lcom/join/mgps/dialog/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/o0$b;->a:Lcom/join/mgps/dialog/o0;

    iget-object p1, p1, Lcom/join/mgps/dialog/o0;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/o0$b;->a:Lcom/join/mgps/dialog/o0;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
