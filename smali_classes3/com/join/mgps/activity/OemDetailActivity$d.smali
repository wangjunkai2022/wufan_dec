.class Lcom/join/mgps/activity/OemDetailActivity$d;
.super Ljava/lang/Object;
.source "OemDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/OemDetailActivity;->U0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/OemDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/OemDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$d;->a:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity$d;->a:Lcom/join/mgps/activity/OemDetailActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/OemDetailActivity;->A:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getGift_cdk()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->M(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
