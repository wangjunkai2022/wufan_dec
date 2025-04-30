.class Lcom/join/mgps/activity/z$g;
.super Ljava/lang/Object;
.source "GameDetialModleFourActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/z;->O0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/z$g;->a:Lcom/join/mgps/activity/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/z$g;->a:Lcom/join/mgps/activity/z;

    invoke-static {p1}, Lcom/join/mgps/activity/z;->U(Lcom/join/mgps/activity/z;)Lcom/join/mgps/customview/t;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/z$g;->a:Lcom/join/mgps/activity/z;

    invoke-static {p1}, Lcom/join/mgps/activity/z;->U(Lcom/join/mgps/activity/z;)Lcom/join/mgps/customview/t;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/z$g;->a:Lcom/join/mgps/activity/z;

    invoke-static {p1}, Lcom/join/mgps/activity/z;->U(Lcom/join/mgps/activity/z;)Lcom/join/mgps/customview/t;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
