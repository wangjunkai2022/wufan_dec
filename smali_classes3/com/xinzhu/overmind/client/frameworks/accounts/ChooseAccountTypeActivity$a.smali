.class Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$a;
.super Ljava/lang/Object;
.source "ChooseAccountTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$a;->a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;

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
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$a;->a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;

    invoke-static {p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->a(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;

    iget-object p2, p2, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity$c;->a:Landroid/accounts/AuthenticatorDescription;

    iget-object p2, p2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;->b(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;Ljava/lang/String;)V

    return-void
.end method
