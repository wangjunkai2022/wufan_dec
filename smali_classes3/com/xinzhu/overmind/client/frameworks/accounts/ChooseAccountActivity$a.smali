.class Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$a;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;)V
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
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$a;->a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$a;->a:Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->c(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
