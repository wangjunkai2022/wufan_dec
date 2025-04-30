.class Lcom/join/mgps/activity/OemDetailActivity$e;
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
    iput-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$e;->a:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$e;->a:Lcom/join/mgps/activity/OemDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/OemDetailActivity;->A:Lcom/join/mgps/dto/OemBean$OemDetailBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/OemBean$OemDetailBean;->getType()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/OemDetailActivity$e;->a:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/OemDetailActivity;->C0(Lcom/join/mgps/activity/OemDetailActivity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/OemDetailActivity$e;->a:Lcom/join/mgps/activity/OemDetailActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/OemDetailActivity;->R0()V

    :cond_0
    return-void
.end method
