.class Lcom/join/mgps/activity/n0$j;
.super Ljava/lang/Object;
.source "GamedetialModleFourFragemnt.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/n0$j;->a:Lcom/join/mgps/activity/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/n0$j;->a:Lcom/join/mgps/activity/n0;

    const/4 v1, 0x1

    iput v1, v0, Lcom/join/mgps/activity/n0;->R0:I

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/activity/n0;->Z()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/n0$j;->a:Lcom/join/mgps/activity/n0;

    const/4 v2, 0x0

    iput v2, v0, Lcom/join/mgps/activity/n0;->x0:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/n0;->t0(F)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/n0$j;->a:Lcom/join/mgps/activity/n0;

    iget-object v0, v0, Lcom/join/mgps/activity/n0;->H0:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/activity/n0;->y1:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/n0$j;->a:Lcom/join/mgps/activity/n0;

    iget-boolean v2, v0, Lcom/join/mgps/activity/n0;->T0:Z

    if-nez v2, :cond_0

    .line 7
    iput-boolean v1, v0, Lcom/join/mgps/activity/n0;->T0:Z

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/activity/n0;->M()V

    :cond_0
    return-void
.end method
