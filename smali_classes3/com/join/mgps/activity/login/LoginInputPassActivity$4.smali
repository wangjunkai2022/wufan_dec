.class Lcom/join/mgps/activity/login/LoginInputPassActivity$4;
.super Ljava/lang/Object;
.source "LoginInputPassActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginInputPassActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$4;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget p3, p2, Lcom/join/mgps/activity/login/LoginInputPassActivity;->from:I

    if-ne p3, p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/activity/login/LoginInputPassActivity;->sendLogin()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
