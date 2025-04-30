.class Lcom/join/android/app/common/dialog/d$a;
.super Ljava/lang/Object;
.source "AddShortcutResultDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/dialog/d;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/dialog/d;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/d$a;->a:Lcom/join/android/app/common/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d$a;->a:Lcom/join/android/app/common/dialog/d;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
