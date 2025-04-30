.class public Lcom/join/mgps/activity/PayStartActivity$d;
.super Ljava/lang/Object;
.source "PayStartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PayStartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PayStartActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/PayStartActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$d;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity$d;->a:Lcom/join/mgps/activity/PayStartActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/PayStartActivity;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity$d;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayStartActivity;->E0(Lcom/join/mgps/activity/PayStartActivity;Landroid/view/View;)V

    .line 3
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/PayStartActivity$d;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayStartActivity;->G0(Lcom/join/mgps/activity/PayStartActivity;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$d;->a:Lcom/join/mgps/activity/PayStartActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/PayStartActivity;->H0(Lcom/join/mgps/activity/PayStartActivity;)V

    return-void
.end method
