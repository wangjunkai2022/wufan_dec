.class Lcom/join/mgps/activity/CloudActivity$f;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity;->K0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CloudActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$f;->a:Lcom/join/mgps/activity/CloudActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$f;->a:Lcom/join/mgps/activity/CloudActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity;->n:Lcom/join/mgps/dialog/z;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
