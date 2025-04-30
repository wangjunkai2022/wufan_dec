.class Lcom/join/mgps/dialog/r$b;
.super Ljava/util/TimerTask;
.source "ChangeNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/r;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/r;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r$b;->a:Lcom/join/mgps/dialog/r;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/r$b;->a:Lcom/join/mgps/dialog/r;

    .line 2
    invoke-static {v0}, Lcom/join/mgps/dialog/r;->a(Lcom/join/mgps/dialog/r;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/dialog/r$b;->a:Lcom/join/mgps/dialog/r;

    invoke-static {v1}, Lcom/join/mgps/dialog/r;->a(Lcom/join/mgps/dialog/r;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
