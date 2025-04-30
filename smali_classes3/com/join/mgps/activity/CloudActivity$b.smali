.class Lcom/join/mgps/activity/CloudActivity$b;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/v;

.field final synthetic b:Lcom/join/mgps/activity/CloudActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity;Lcom/join/mgps/dialog/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$b;->b:Lcom/join/mgps/activity/CloudActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/CloudActivity$b;->a:Lcom/join/mgps/dialog/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$b;->a:Lcom/join/mgps/dialog/v;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
