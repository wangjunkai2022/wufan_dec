.class Lcom/join/android/app/common/dialog/f$a;
.super Ljava/lang/Object;
.source "LocalGameOneDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/dialog/f;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/dialog/f;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/f$a;->a:Lcom/join/android/app/common/dialog/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$a;->a:Lcom/join/android/app/common/dialog/f;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/pref/h;->U(Z)V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f$a;->a:Lcom/join/android/app/common/dialog/f;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
