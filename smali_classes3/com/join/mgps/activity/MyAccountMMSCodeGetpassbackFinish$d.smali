.class Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$d;
.super Ljava/lang/Object;
.source "MyAccountMMSCodeGetpassbackFinish.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$d;->b:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;

    iput-object p2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$d;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$d;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
