.class Lcom/join/mgps/activity/HandShankYesActivity$a;
.super Ljava/lang/Object;
.source "HandShankYesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankYesActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HandShankYesActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankYesActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$a;->a:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$a;->a:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/HandShankYesActivity;->U0(Lcom/join/mgps/activity/HandShankYesActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$a;->a:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/HandShankMapKeyActivity_;->H0(Landroid/content/Context;)Lcom/join/mgps/activity/HandShankMapKeyActivity_$b;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$a;->a:Lcom/join/mgps/activity/HandShankYesActivity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8bf7\u5148\u8fde\u63a5\u624b\u67c4\uff01"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
