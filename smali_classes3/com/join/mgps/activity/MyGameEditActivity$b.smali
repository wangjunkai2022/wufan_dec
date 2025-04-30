.class Lcom/join/mgps/activity/MyGameEditActivity$b;
.super Ljava/lang/Object;
.source "MyGameEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyGameEditActivity;->V0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyGameEditActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyGameEditActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity$b;->a:Lcom/join/mgps/activity/MyGameEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity$b;->a:Lcom/join/mgps/activity/MyGameEditActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MyGameEditActivity;->p:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
