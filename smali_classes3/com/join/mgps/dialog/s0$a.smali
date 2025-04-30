.class Lcom/join/mgps/dialog/s0$a;
.super Ljava/lang/Object;
.source "GenderCheckDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/s0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/join/mgps/dialog/s0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/s0;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/s0$a;->c:Lcom/join/mgps/dialog/s0;

    iput-object p2, p0, Lcom/join/mgps/dialog/s0$a;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/join/mgps/dialog/s0$a;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/s0$a;->c:Lcom/join/mgps/dialog/s0;

    invoke-static {p1}, Lcom/join/mgps/dialog/s0;->a(Lcom/join/mgps/dialog/s0;)Lcom/join/mgps/dialog/s0$c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/join/mgps/dialog/s0$c;->r0(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/s0$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/s0$a;->b:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/s0$a;->c:Lcom/join/mgps/dialog/s0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
