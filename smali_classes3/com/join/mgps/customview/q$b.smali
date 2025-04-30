.class Lcom/join/mgps/customview/q$b;
.super Ljava/lang/Object;
.source "MessageDialog1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/q;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/q;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/q$b;->a:Lcom/join/mgps/customview/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/q$b;->a:Lcom/join/mgps/customview/q;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
