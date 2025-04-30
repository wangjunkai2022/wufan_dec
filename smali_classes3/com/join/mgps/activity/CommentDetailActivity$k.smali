.class Lcom/join/mgps/activity/CommentDetailActivity$k;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->D0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/CommentDetailActivity;->m:Lcom/join/android/app/common/view/ClearEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->G0(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->E0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->Q0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u4e0d\u80fd\u53d1\u8868\u7a7a\u5b57\u7b26\u4e32"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->E0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->Q0(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u8d85\u8fc73\u4e2a\u5b57\u624d\u53ef\u4ee5\u53d1\u8868"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {v2}, Lcom/join/mgps/activity/CommentDetailActivity;->S0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->E0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->T0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->V0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->X0(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->a:Lcom/join/mgps/activity/CommentDetailActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->Z0(Lcom/join/mgps/activity/CommentDetailActivity;)I

    move-result v9

    .line 12
    invoke-virtual/range {v2 .. v9}, Lcom/join/mgps/activity/CommentDetailActivity;->K1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
