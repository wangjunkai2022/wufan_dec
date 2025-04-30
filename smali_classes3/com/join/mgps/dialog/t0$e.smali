.class Lcom/join/mgps/dialog/t0$e;
.super Ljava/lang/Object;
.source "GprsChoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/t0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/t0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/t0$e;->a:Lcom/join/mgps/dialog/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/t0$e;->a:Lcom/join/mgps/dialog/t0;

    invoke-static {p1}, Lcom/join/mgps/dialog/t0;->a(Lcom/join/mgps/dialog/t0;)Lcom/join/mgps/dialog/t0$f;

    move-result-object p1

    invoke-interface {p1}, Lcom/join/mgps/dialog/t0$f;->a()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/t0$e;->a:Lcom/join/mgps/dialog/t0;

    invoke-static {p1}, Lcom/join/mgps/dialog/t0;->b(Lcom/join/mgps/dialog/t0;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/t0$e;->a:Lcom/join/mgps/dialog/t0;

    invoke-static {p1}, Lcom/join/mgps/dialog/t0;->h(Lcom/join/mgps/dialog/t0;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/t0$e;->a:Lcom/join/mgps/dialog/t0;

    invoke-static {p1}, Lcom/join/mgps/dialog/t0;->d(Lcom/join/mgps/dialog/t0;)Lcom/join/mgps/pref/PrefDef_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/dialog/t0$e;->a:Lcom/join/mgps/dialog/t0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
