.class Lcom/join/mgps/activity/GivePraiceActivity$c;
.super Ljava/lang/Object;
.source "GivePraiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GivePraiceActivity;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GivePraiceActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GivePraiceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$c;->a:Lcom/join/mgps/activity/GivePraiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$c;->a:Lcom/join/mgps/activity/GivePraiceActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
