.class Lcom/join/mgps/activity/MyAccountLoginActivity$a;
.super Ljava/lang/Object;
.source "MyAccountLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyAccountLoginActivity;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyAccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyAccountLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$a;->a:Lcom/join/mgps/activity/MyAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$a;->a:Lcom/join/mgps/activity/MyAccountLoginActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountLoginActivity;->i:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$a;->a:Lcom/join/mgps/activity/MyAccountLoginActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/MyAccountLoginActivity;->i:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
