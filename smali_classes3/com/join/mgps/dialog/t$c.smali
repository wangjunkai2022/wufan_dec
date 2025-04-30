.class Lcom/join/mgps/dialog/t$c;
.super Ljava/lang/Object;
.source "ChoiceDefautGBAPlugDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/t;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/t;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/t$c;->a:Lcom/join/mgps/dialog/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/t$c;->a:Lcom/join/mgps/dialog/t;

    invoke-static {p1}, Lcom/join/mgps/dialog/t;->b(Lcom/join/mgps/dialog/t;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/b;->F(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/t$c;->a:Lcom/join/mgps/dialog/t;

    invoke-static {p1}, Lcom/join/mgps/dialog/t;->d(Lcom/join/mgps/dialog/t;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/t$c;->a:Lcom/join/mgps/dialog/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
