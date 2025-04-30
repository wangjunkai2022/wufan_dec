.class Lcom/join/mgps/activity/HandShankYesActivity$b;
.super Ljava/lang/Object;
.source "HandShankYesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankYesActivity;->i1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/u0;

.field final synthetic b:Lcom/join/mgps/activity/HandShankYesActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankYesActivity;Lcom/join/mgps/dialog/u0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$b;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/HandShankYesActivity$b;->a:Lcom/join/mgps/dialog/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$b;->a:Lcom/join/mgps/dialog/u0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
