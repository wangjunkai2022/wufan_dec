.class Lcom/join/mgps/activity/n0$o;
.super Ljava/lang/Object;
.source "GamedetialModleFourFragemnt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/n0;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/n0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/n0$o;->a:Lcom/join/mgps/activity/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/n0$o;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->H0:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/join/mgps/activity/n0;->y1:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/n;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/n0$o;->a:Lcom/join/mgps/activity/n0;

    const-string v0, "\u4e0d\u80fd\u4e0a\u4f20\u8868\u60c5"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/n0;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/n0$o;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->D0:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/n0$o;->a:Lcom/join/mgps/activity/n0;

    iget-boolean v0, p1, Lcom/join/mgps/activity/n0;->T0:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lcom/join/mgps/activity/n0;->T0:Z

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/activity/n0;->M()V

    :cond_1
    :goto_0
    return-void
.end method
