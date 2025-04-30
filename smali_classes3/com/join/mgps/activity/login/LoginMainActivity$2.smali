.class Lcom/join/mgps/activity/login/LoginMainActivity$2;
.super Ljava/lang/Object;
.source "LoginMainActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$2;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/login/LoginMainActivity;->nextStep()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
