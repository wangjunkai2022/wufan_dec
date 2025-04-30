.class Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;->a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "v",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;->a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;

    invoke-static {p1, p3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->a(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;->a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;

    invoke-static {p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->b(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
