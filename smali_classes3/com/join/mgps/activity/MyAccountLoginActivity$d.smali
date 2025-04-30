.class Lcom/join/mgps/activity/MyAccountLoginActivity$d;
.super Ljava/lang/Object;
.source "MyAccountLoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$d;->a:Lcom/join/mgps/activity/MyAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$d;->a:Lcom/join/mgps/activity/MyAccountLoginActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->I0(Lcom/join/mgps/activity/MyAccountLoginActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountLoginActivity$d;->a:Lcom/join/mgps/activity/MyAccountLoginActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/MyAccountLoginActivity;->H0(Lcom/join/mgps/activity/MyAccountLoginActivity;)V

    return-void
.end method
